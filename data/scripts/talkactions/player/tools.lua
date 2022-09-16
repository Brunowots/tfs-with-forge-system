local toolsTalkAction = TalkAction("!tools")

local tools = {2120, 2554, 2553, 2420}

function toolsTalkAction.onSay(player, words, param)
	if not player:commonCommandsCooldown() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You need wait the cooldown for use again')
		return false
	end
	local receivedTools = {}
	for _, itemId in pairs(tools) do
		if player:getItemCount(itemId) <= 0 then
			if not doPlayerRemoveMoneyDinamic(player, 500) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Dont have 500 of money (bank or inventory)')
				return false
			end
			if player:addItem(itemId) then
				local itemName = ItemType(itemId):getName()
				table.insert(receivedTools, itemName)
			end
		end
	end
	if #receivedTools > 0 then
		local toolsStr = table.concat(receivedTools,", ")
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received: \n' .. toolsStr)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have all tools')
	end
	return false
end

toolsTalkAction:register()
