local banutaentrace = MoveEvent()

function banutaentrace.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	player:teleportTo(Position(32883, 32632, 11))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	
   	
    return true
end

banutaentrace:type("stepin")
banutaentrace:aid(64327)
banutaentrace:register()	