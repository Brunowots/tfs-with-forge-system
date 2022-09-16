--== Default boss Lever Script

local config = {
	boss = "Duke Krule",
	timeToKill = 10, -- minutes
	delayToDoAgain = 20, -- hours
	requiredlevel = 150,
	centerPosition = Position(33456, 31468, 13),
	roomPlayerPosition = Position(33456, 31480, 13),
	bossPosition = Position(33456, 31468, 13),
	kickPosition = Position(33456, 31497, 13),
	storage = Storage.Boos.DukeKrule,
	range = {x = 12, y = 12},
	leverPositions = {
		Position(33455, 31493, 13),
		Position(33456, 31493, 13),
		Position(33457, 31493, 13),
		Position(33458, 31493, 13),
		Position(33459, 31493, 13),
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
	local cBoss = Game.createMonster(config.boss, config.bossPosition)
	if cBoss then
		cBoss:registerEvent("GraveDangerBossesKill")
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

DefaultBossLever:uid(60010)
DefaultBossLever:register()