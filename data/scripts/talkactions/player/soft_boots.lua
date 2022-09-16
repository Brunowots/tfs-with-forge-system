local softTalkAction = TalkAction("!soft")

function softTalkAction.onSay(player, words, param)
	if not player:commonCommandsCooldown() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You need wait the cooldown for use again')
		return false
	end
	local horn = player:getItemById(10021, true)
	if not horn then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You dont have soft boots to recharge')
		return false
	end
	if not doPlayerRemoveMoneyDinamic(player, 10000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Dont have 10000 of money (bank or inventory)')
		return false
	end
	horn:remove()
	player:addItem(6132)
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You recharged your soft boots and paid 10000 of money')
	return true
end

softTalkAction:register()
