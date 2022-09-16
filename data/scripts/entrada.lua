local citizenSvargrond = MoveEvent()

function citizenSvargrond.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	
		player:teleportTo(Position(32369, 32241,7))
		player:say("Exit.", TALKTYPE_MONSTER_SAY)

	player:setDirection(DIRECTION_EAST)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

citizenSvargrond:type("stepin")
citizenSvargrond:aid(65257)
citizenSvargrond:register()
