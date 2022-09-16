--== Default boss Lever Script

local config = {
	boss = "Goshnar's Cruelty",
	timeToKill = 20, -- minutes
	delayToDoAgain = 20, -- hours
	requiredlevel = 400,
	centerPosition = Position(33856, 31865, 7),
	roomPlayerPosition = Position(33854, 31873, 7),
	bossPosition = Position(33852, 31860, 7),
	kickPosition = Position(33860, 31852, 6),
	storage = Storage.Boos.goshnarCruelty,
	range = {x = 13, y = 13},
	leverPositions = {
		Position(33854, 31853, 6),
		Position(33855, 31853, 6),
		Position(33856, 31853, 6),
		Position(33857, 31853, 6),
		Position(33858, 31853, 6)
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

local function MeanMawEvent()
	local boss = Creature(config.boss)
	if not boss then
		return
	end
	
	if not Creature("Mean Maw") then
		Game.createMonster("Mean Maw", Position(33855, 31865, 7))
	end
	
	addEvent(MeanMawEvent, 5000)
end

local function getPoorSoulCount()
	local count = 0
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:getName() == "Poor Soul" then
			count = count + 1
		end
	end
	return count
end

local function PoorSoulEvent()
	local boss = Creature(config.boss)
	if not boss then
		return
	end
	local poorSoulCount = getPoorSoulCount()
	if poorSoulCount < 1 then
		Game.createMonster("Poor Soul", Position(33853, 31874, 7))
	elseif poorSoulCount > 1 and poorSoulCount < 3 then
		if (math.random(0, 100) <= 30) then
			Game.createMonster("Poor Soul", Position(33853, 31874, 7))
		end
	end
	
	addEvent(PoorSoulEvent, 5000)
end

local wavePositions = {
	Position(33856, 31859, 7),
	Position(33856, 31860, 7),
	Position(33856, 31861, 7),
}

local function crueltyForceEvent()
	local boss = Creature(config.boss)
	if not boss then
		return
	end
	
	local increaseIndex = Game.getStorageValue(GlobalStorage.SoulWar.crueltyForceIncreaseCount)
	if increaseIndex < 5 then
		Game.setStorageValue(GlobalStorage.SoulWar.crueltyForceIncreaseCount, increaseIndex + 1)
	end
	
	boss:say("Strength increased!", TALKTYPE_MONSTER_SAY)
	boss:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
	
	addEvent(crueltyForceEvent, 10000)
end

local function AGreedyEyeWaveEvent()
	local boss = Creature(config.boss)
	if not boss then
		return
	end
	
	for _, pos in pairs(wavePositions) do
		pos:sendMagicEffect(39)
		local tile = Tile(pos)
		if tile then
			local creature = tile:getTopCreature()
			if creature and creature:getName() == "Poor Soul" then
				local poorPos = creature:getPosition()
				creature:remove()
				Game.createItem(2016, 2, poorPos)
				Game.createItem(38726, 1, poorPos)
			end
		end
	end
	
	addEvent(AGreedyEyeWaveEvent, 4000)
end

local function init_cruelty_mechanics()
	local monsterBoss = Game.createMonster(config.boss, config.bossPosition)
	if not monsterBoss then
		Spdlog.warn("Failed to init Goshnars "..config.boss.." Mechanic")
		return false
	end

	Game.setStorageValue(GlobalStorage.SoulWar.crueltyForceIncreaseCount, 0)
	Game.createMonster("A Greedy Eye", Position(33856, 31858, 7))
	addEvent(MeanMawEvent, 5000)
	addEvent(PoorSoulEvent, 5000)
	addEvent(AGreedyEyeWaveEvent, 4000)
	addEvent(crueltyForceEvent, 10000)
	
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
	if not init_cruelty_mechanics() then
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

DefaultBossLever:uid(60104)
DefaultBossLever:register()