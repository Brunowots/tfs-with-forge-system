local aid_list = {
	[60003] = {destination = Position(33647, 31254, 11)}, -- tanjis
	[60002] = {destination = Position(33419, 31258, 11)}, -- obujos
	[60001] = {destination = Position(33545, 31263, 11)}, -- jaul
}

local function IsOnBossRoom(player)
	if not player then return false end
	local dayBoss = DEEPLING_BOSSES_CONFIG.data.dayBoss
	if not dayBoss then return false end
	local room = DEEPLING_BOSSES_CONFIG.rooms[dayBoss]
	if not room then return false end
	local specs = Game.getSpectators(room.center, false, true, room.range.x, room.range.x, room.range.y, room.range.y)
	for _, spec in pairs(specs) do
		if spec:getId() == player:getId() then
			return true
		end
	end
	return false
end

local function timeoutKickPlayer(pid)
	local player = Player(pid)
	if not player then
		return
	end
	local dayBoss = DEEPLING_BOSSES_CONFIG.data.dayBoss
	if not dayBoss then return end
	local room = DEEPLING_BOSSES_CONFIG.rooms[dayBoss]
	if not room then return end
	local exitPos = room.exitPos
	if IsOnBossRoom(player) then
		player:teleportTo(exitPos)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your Time is over!.")
	end
end

local enterPortal = MoveEvent()

function enterPortal.onStepIn(creature, item, position, fromPosition)
    if not creature:isPlayer() then
		return false
	end
	local data = aid_list[item.uid]
    if not data then
		return false
	end
	
	if creature:getStorageValue(Storage.DeeplingBosses.hasAlreadyEnteredStorage) >= 1 then
		creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Only enter one time a day.")
		creature:teleportTo(fromPosition)
		return false
	end
	
	creature:setStorageValue(Storage.DeeplingBosses.hasAlreadyEnteredStorage, 1)
	creature:teleportTo(data.destination)
	data.destination:sendMagicEffect(CONST_ME_TELEPORT)
	addEvent(timeoutKickPlayer, 1200000, creature:getId())
	return true
end

enterPortal:type("stepin")

for actionId, data in pairs(aid_list) do
	enterPortal:uid(actionId)
end

enterPortal:register()