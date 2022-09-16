local phantasmalJade = Action()

local itemsMount = {
	{itemId = 38907, count = 4},
	{itemId = 38909, count = 1},
	{itemId = 38908, count = 1},
}

local function hasItems(player)
	if not player then return false end
	
	-- player:getItemCount(itemId[, subType = -1])
	for _, data in pairs(itemsMount) do
		if player:getItemCount(data.itemId) < data.count then
			return false
		end
	end
	
	return true
end

function phantasmalJade.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
	if player:hasMount(167) then
		player:say("You already have this mount", TALKTYPE_MONSTER_SAY)
		return true
	end
	
	if not hasItems(player) then
		player:say("You don't have the all items.", TALKTYPE_MONSTER_SAY)
		return true
	end
	
	for _, data in pairs(itemsMount) do
		-- player:removeItem(itemId, count[, subType = -1[, ignoreEquipped = false]])
		player:removeItem(data.itemId, data.count)
	end
	
	player:addMount(167)
	player:say("You received the Phantasmal Jade mount!", TALKTYPE_MONSTER_SAY)
	return true
end

for _, data in pairs(itemsMount) do
	phantasmalJade:id(data.itemId)
end
-- phantasmalJade:id(38907, 38909, 38908)
phantasmalJade:register()