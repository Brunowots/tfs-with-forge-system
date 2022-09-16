--== Default boss Lever Script

local config = {
	boss = "Goshnar's Greed", 
	timeToKill = 20, -- minutes
	delayToDoAgain = 20, -- hours
	requiredlevel = 400,
	centerPosition = Position(34060, 31092, 11),
	roomPlayerPosition = Position(34064, 31098, 11),
	bossPosition = Position(34060, 31086, 11),
	kickPosition = Position(34096, 31090, 11),
	storage = Storage.Boos.goshnarGreed,
	range = {x = 13, y = 13},
	leverPositions = {
		Position(34090, 31091, 11),
		Position(34091, 31091, 11),
		Position(34092, 31091, 11),
		Position(34093, 31091, 11),
		Position(34094, 31091, 11)
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

local function greedbeastEvent()
	local boss = Creature(config.boss)
	if not boss then
		return
	end
	
	if not Creature("Greedbeast") then
		Game.createMonster("Greedbeast", Position(34059, 31092, 11))
	end
	
	addEvent(greedbeastEvent, 7000)
end

local function getWeakSoulCount()
	local count = 0
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:getName() == "Weak Soul" then
			count = count + 1
		elseif spec:getName() == "Strong Soul" then
			count = count + 1
		elseif spec:getName() == "Powerful Soul" then
			count = count + 1
		end
	end
	return count
end

local function weakSoulEvent()
	local boss = Creature(config.boss)
	if not boss then
		return
	end
	
	local count = getWeakSoulCount()
	if count < 2 then
		Game.createMonster("Weak Soul", Position(34058, 31092, 11))
	end
	
	addEvent(weakSoulEvent, 10000)
end

local function init_mechanics()
	local monsterBoss = Game.createMonster(config.boss, config.bossPosition)
	if not monsterBoss then
		Spdlog.warn("Failed to init Goshnars "..config.boss.." Mechanic")
		return false
	end
	Game.setStorageValue(GlobalStorage.SoulWar.greedbeastKillCount, 0)
	greedbeastEvent()
	weakSoulEvent()
	addEvent(function() 
		Game.createMonster("Soul Sphere", config.bossPosition)
	end, 20000)
	
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
	if not init_mechanics() then
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

DefaultBossLever:uid(60103)
DefaultBossLever:register()