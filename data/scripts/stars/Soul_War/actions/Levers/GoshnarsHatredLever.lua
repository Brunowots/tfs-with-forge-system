--== Default boss Lever Script

local config = {
	boss = "Goshnar's Hatred",
	timeToKill = 20, -- minutes
	delayToDoAgain = 20, -- hours
	requiredlevel = 400,
	centerPosition = Position(34126, 30993, 11),
	roomPlayerPosition = Position(34124, 30999, 11),
	bossPosition = Position(34126, 30988, 11),
	kickPosition = Position(34154, 30995, 11),
	storage = Storage.Boos.goshnarShatred,
	range = {x = 10, y = 10},
	leverPositions = {
		Position(34147, 30996, 11),
		Position(34148, 30996, 11),
		Position(34149, 30996, 11),
		Position(34150, 30996, 11),
		Position(34151, 30996, 11),
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

local function getHatefulSoulCount()
	local range = config.range
	local count = 0
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:getName() == "Hateful Soul" then
			count = count + 1
		end
	end
	return count
end

local hatefulPositions = {
	Position(34123, 30991, 11),
	Position(34130, 30991, 11),
	Position(34130, 30996, 11),
	Position(34122, 30996, 11),
}

local function hateFulEvent()
	local hatred = Creature("Goshnar's Hatred")
	if not hatred then
		return
	end
	
	local hatefulCount = getHatefulSoulCount()
	if hatefulCount < 2 then
		if (math.random(0, 100) <= 50) then
			local randPos = hatefulPositions[math.random(#hatefulPositions)]
			Game.createMonster("Hateful Soul", randPos)
		end
	end
	addEvent(hateFulEvent, 4000)
end

local function hatredForceEvent()
	local hatred = Creature("Goshnar's Hatred")
	if not hatred then
		return
	end
	
	-- GlobalStorage.SoulWar.hatredForceIncreaseCount
	local increaseIndex = Game.getStorageValue(GlobalStorage.SoulWar.hatredForceIncreaseCount)
	if increaseIndex < 7 then
		Game.setStorageValue(GlobalStorage.SoulWar.hatredForceIncreaseCount, increaseIndex + 1)
		hatred:say("Strength increased!", TALKTYPE_MONSTER_SAY)
		hatred:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
	end
	
	addEvent(hatredForceEvent, 15000)
end

local function init_hatred_mechanics()
	local monsterBoss = Game.createMonster(config.boss, config.bossPosition)
	if not monsterBoss then
		Spdlog.warn("Failed to init Goshnars "..config.boss.." Mechanic")
		return false
	end
	
	Game.setStorageValue(GlobalStorage.SoulWar.hatredForceIncreaseCount, 0)
	hateFulEvent()
	addEvent(hatredForceEvent, 15000)
	
	if not Creature("Ashes of Burning Hatred") then
		Game.createMonster("Ashes of Burning Hatred", Position(34126, 30993, 11))
	end
	
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
	if not init_hatred_mechanics() then
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

DefaultBossLever:uid(60108)
DefaultBossLever:register()