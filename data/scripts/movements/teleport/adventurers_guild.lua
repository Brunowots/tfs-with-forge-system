local adventurersGuild = MoveEvent()

function adventurersGuild.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	
	local lastTownId = player:getTown():getId()
	if TP_modal.last_town[player:getId()] then
		lastTownId = TP_modal.last_town[player:getId()]
	end
	local town = Town(lastTownId)
	if town then
		player:teleportTo(town:getTemplePosition())
	else
		player:teleportTo(Town(8):getTemplePosition())
	end
	
	

	-- local townId = player:getStorageValue(Storage.AdventurersGuild.Stone)
	-- local destination = townId ~= -1 and Town(townId):getTemplePosition() or player:getTown():getTemplePosition()

	-- player:setStorageValue(Storage.AdventurersGuild.Stone, -1)
	-- player:teleportTo(destination)
	-- position:sendMagicEffect(CONST_ME_TELEPORT)
	-- destination:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

adventurersGuild:type("stepin")
adventurersGuild:aid(4255)
adventurersGuild:register()
