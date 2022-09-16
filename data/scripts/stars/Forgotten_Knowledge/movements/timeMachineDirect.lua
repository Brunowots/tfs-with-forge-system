local timeMachineDirect = MoveEvent()

function timeMachineDirect.onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return false
	end
	creature:teleportTo(Position(33010, 31668, 14))
	return true
end

timeMachineDirect:type("stepin")
timeMachineDirect:position(Position(32870, 32723, 14))
timeMachineDirect:register()
