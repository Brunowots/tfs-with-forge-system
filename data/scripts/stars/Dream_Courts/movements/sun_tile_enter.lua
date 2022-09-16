local sun_tile = MoveEvent()

function sun_tile.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
    
    if not player then
        return true
    end
	player:teleportTo(Position(32207, 32093, 13))
	return true
end
sun_tile:type("stepin")
sun_tile:aid(60000, 60001, 60002, 60003)
sun_tile:register()