--== Default boss Lever Script

local config = {
	boss = "Goshnar's Spite",
	timeToKill = 20, -- minutes
	delayToDoAgain = 20, -- hours
	requiredlevel = 400,
	centerPosition = Position(34061, 31061, 11),
	roomPlayerPosition = Position(34059, 31069, 11),
	bossPosition = Position(34061, 31055, 11),
	kickPosition = Position(34099, 31060, 11),
	storage = Storage.Boos.goshnarSpite,
	range = {x = 12, y = 12},
	leverPositions = {
		Position(34093, 31063, 11),
		Position(34094, 31063, 11),
		Position(34095, 31063, 11),
		Position(34096, 31063, 11),
		Position(34097, 31063, 11)
	},
}

local function kickPlayers(toKick)
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:isPlayer() then
			if table.contains(toKick, spec:getId()) then
				spec:teleportTo(config.kickPosition)
			end
		end
	end
end

local function cleanRoomMonsters()
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if not spec:isPlayer() then
			spec:remove()
		end
	end
end

local function roomIsOcuped()
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:isPlayer() then
			return true
		end
	end
	return false
end

local searingFirePos = {
	Position(34055, 31061, 11),
	Position(34061, 31067, 11),
	Position(34068, 31061, 11),
	Position(34061, 31056, 11)
}

-- Spawnou um fogo, setou aid 60025
-- Player passou por cima, funções.., remove o fogo

local function cleanSearingFire()
	for _, pos in pairs(searingFirePos) do
		local tile = Tile(pos)
		if tile then
			local searingFire = tile:getItemById(7473)
			if searingFire then
				searingFire:remove()
			end
		end
	end
end

local function removeSearingFire(pos)
	local boss = Creature("Goshnar's Spite")
	if not boss then
		return
	end
	
	local tile = Tile(pos)
	if tile then
		local item = tile:getItemById(7473)
		if item then
			item:remove()
			local increaseIndex = Game.getStorageValue(GlobalStorage.SoulWar.hatredForceIncreaseCount)
			if increaseIndex < 5 then
				Game.setStorageValue(GlobalStorage.SoulWar.hatredForceIncreaseCount, increaseIndex + 1)
			end
			boss:getPosition():sendMagicEffect(2)
			boss:say("Strength increased!", TALKTYPE_MONSTER_SAY)
		end
	end
end

local function searingFireEvent()
	local boss = Creature("Goshnar's Spite")
	if not boss then
		return
	end
	
	local randPos = searingFirePos[math.random(#searingFirePos)]
	local searingFireItem = Game.createItem(7473, 1, randPos)
	if searingFireItem then
		searingFireItem:setActionId(60025)
	end
	
	addEvent(removeSearingFire, 5000, randPos)
	addEvent(searingFireEvent, 25000)
end

local function init_spite_mechanics()
	local monsterBoss = Game.createMonster(config.boss, config.bossPosition)
	if not monsterBoss then
		Spdlog.warn("Failed to init Goshnars "..config.boss.." Mechanic")
		return false
	end
	cleanSearingFire()
	Game.setStorageValue(GlobalStorage.SoulWar.hatredForceIncreaseCount, 0)
	addEvent(searingFireEvent, 25000)
	return true
end

local DefaultBossLever = Action()
function DefaultBossLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if roomIsOcuped() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the boss room.")
		return true
	end
	
	if player:getPosition() ~= config.leverPositions[1] then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can\'t start the battle.")
		return true
	end
	
	local checked = {}
	local toKick = {}
	
	for _, pos in pairs(config.leverPositions) do
		local tile = Tile(pos)
		if tile then
			local creature = tile:getTopCreature()
			if creature and creature:isPlayer() then
				
				if creature:getLevel() < config.requiredlevel then
					player:sendTextMessage(MESSAGE_STATUS_SMALL, "All players must be level "..config.requiredlevel.." or higher")
					return true
				end
				
				if creature:getStorageValue(config.storage) > os.time() then
					player:sendTextMessage(MESSAGE_STATUS_SMALL, "All players must wait for the cooldown.")
					return true
				end
				
				table.insert(checked, creature)
				table.insert(toKick, creature:getId())
			end
		end
	end
	cleanRoomMonsters()
	
	-- execute here mechanics functions
	if not init_spite_mechanics() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can\'t start the battle. Contact the administrator.")
		return true
	end	
	
	-- teleport player and set storage
	for _, p in pairs(checked) do
		p:sendTextMessage(MESSAGE_STATUS_SMALL, "You have "..config.timeToKill.." minutes to defeat the boss.")
		p:teleportTo(config.roomPlayerPosition)
		p:setStorageValue(config.storage, os.time() + (config.delayToDoAgain * 3600))
	end
	
	addEvent(kickPlayers, config.timeToKill * 60000, toKick)
	return true
end

DefaultBossLever:uid(60106)
DefaultBossLever:register()