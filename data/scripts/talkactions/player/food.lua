local foodTalkAction = TalkAction("!food")

function foodTalkAction.onSay(player, words, param)
	if not player:commonCommandsCooldown() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You need wait the cooldown for use again')
		return false
	end
	if player:getFreeCapacity() < ItemType(2789):getWeight(100) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You dont have capacity')
		return false
	end
	local bp = player:getSlotItem(3)
	if not bp then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Dont have a backpack')
		return false
	end
	if bp:getEmptySlots() < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Dont free slots')
		return false
	end
	if not doPlayerRemoveMoneyDinamic(player, 5000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Dont have 10000 of money (bank or inventory)')
		return false
	end
	player:addItem(2789, 100)
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received 100x Brown Mushrooms and paid 10000 of money')
	return true
end

foodTalkAction:register()
