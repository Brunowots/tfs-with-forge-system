local bossConfig = {
	[65125] = {
		boss = "BloodBack",
		storage = Storage.WereWolfMiniBosses.BloodBackTimer,
		timeToKill = 10, -- minutes
		requiredlevel = 100,
		centerPosition = Position(33183, 32014, 8),
		playerPosition = Position(33182, 32011, 8),
		bossPosition = Position(33187, 32015, 8),
		kickPosition = Position(33167, 31979, 8),
		range = {x = 10, y = 10},
	},
	[65126] = {
		boss = "DarkFang",
		storage = Storage.WereWolfMiniBosses.DarkFangTimer,
		timeToKill = 10, -- minutes
		requiredlevel = 100,
		centerPosition = Position(33060, 31889, 9),
		playerPosition = Position(33055, 31889, 9),
		bossPosition = Position(33065, 31889, 9),
		kickPosition = Position(33055, 31912, 9),
		range = {x = 15, y = 10},
	},
	[65127] = {
		boss = "Sharpclaw",
		storage = Storage.WereWolfMiniBosses.SharpclawTimer,
		timeToKill = 10, -- minutes
		requiredlevel = 100,
		centerPosition = Position(33120, 32001, 9),
		playerPosition = Position(33121, 31997, 9),
		bossPosition = Position(33116, 32002, 9),
		kickPosition = Position(33126, 31973, 9),
		range = {x = 10, y = 10},
	},
	[65128] = {
		boss = "Shadowpelt",
		storage = Storage.WereWolfMiniBosses.ShadowpeltTimer,
		timeToKill = 10, -- minutes
		requiredlevel = 100,
		centerPosition = Position(33386, 32113, 9),
		playerPosition = Position(33394, 32113, 9),
		bossPosition = Position(33379, 32114, 9),
		kickPosition = Position(33404, 32097, 9),
		range = {x = 15, y = 9},
	},
	[65129] = {
		boss = "Black Vixen",
		storage = Storage.WereWolfMiniBosses.BlackVixenTimer,
		timeToKill = 10, -- minutes
		requiredlevel = 100,
		centerPosition = Position(33449, 32034, 9),
		playerPosition = Position(33447, 32038, 9),
		bossPosition = Position(33448, 32030, 9),
		kickPosition = Position(33441, 32053, 9),
		range = {x = 10, y = 10},
	},
}

local function kickPlayer(bossData, kickPid)
	local range = bossData.range
	local specs = Game.getSpectators(bossData.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:isPlayer() then
			if spec:getId() == kickPid then
				spec:teleportTo(bossData.kickPosition)
				spec:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Time over.")
			end
		end
	end
end

local function roomIsOcuped(bossData)
	if not bossData then return true end
	local range = bossData.range
	local specs = Game.getSpectators(bossData.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:isPlayer() then
			return true
		end
	end
	return false
end

local function cleanRoomMonsters(bossData)
	local range = bossData.range
	local specs = Game.getSpectators(bossData.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if not spec:isPlayer() then
			spec:remove()
		end
	end
end

local feasterMini = MoveEvent()

function feasterMini.onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return true
	end
	
	local aid = item:getActionId()
	local bossData = bossConfig[aid]
	if roomIsOcuped(bossData) then
		creature:teleportTo(fromPosition)
		creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Only one player at a time.")
		return true
	end
	
	if creature:getLevel() < bossData.requiredlevel then
		creature:teleportTo(fromPosition)
		creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need level "..bossData.requiredlevel.." to this.")
		return true
	end
	
	if creature:getStorageValue(bossData.storage) > os.time() then
		creature:teleportTo(fromPosition)
		creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Wait the cooldown.")
		return true
	end
	cleanRoomMonsters(bossData)
	
	Game.createMonster(bossData.boss, bossData.bossPosition)
	
	creature:teleportTo(bossData.playerPosition)
	
	creature:setStorageValue(bossData.storage, os.time() + 72000)
	
	addEvent(kickPlayer, bossData.timeToKill * 60000, bossData, creature:getId())
	return true
end

feasterMini:type("stepin")

for actionId, data in pairs(bossConfig) do
	feasterMini:aid(actionId)
end

feasterMini:register()