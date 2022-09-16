local data = {
	[60015] = Position(33621, 31426, 10),
	[60017] = Position(33621, 31426, 10),
	[60020] = Position(33621, 31426, 10),
	[60016] = Position(33621, 31426, 10),
	[60019] = Position(33621, 31426, 10),
	[60018] = Position(33621, 31426, 10),
}

local bossesExitPortals = MoveEvent()
function bossesExitPortals.onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return true
	end
	
	local position = data[item.actionid]
	if not position then
		return true
	end
	
	creature:teleportTo(position)
	position:sendMagicEffect(CONST_ME_TELEPORT)
	
	return true
end

bossesExitPortals:type("stepin")
for aid, pos in pairs(data) do
	bossesExitPortals:aid(aid)
end

bossesExitPortals:register()