local gloothmovitemount = Action()

local requiredItems = { --id/count
	[42232] = 1,
	[42233] = 1,
}

function gloothmovitemount.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- has mount?
	if player:hasMount(194) then
		player:sendTextMessage(19, "You already have this mount.")
		return true
	end

	--verify if have items
    for id, count in pairs(requiredItems) do
		if player:getItemCount(id) < count then
			player:sendTextMessage(19, "You not have all required items.")
			return true
		end
	end
	
	-- remove items
	for id, count in pairs(requiredItems) do
		player:removeItem(id, count)
	end
	
	-- add mount
	player:addMount(194)
	player:say('You receive the permission to ride a gloothmovite', TALKTYPE_MONSTER_SAY)
	
    return true
end

gloothmovitemount:id(42232,42233)
gloothmovitemount:register()