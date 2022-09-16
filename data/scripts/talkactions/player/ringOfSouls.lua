local ringOfSouls = TalkAction("!ringofsouls")

function ringOfSouls.onSay(player, words, param)
	if not player:commonCommandsCooldown() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You need wait the cooldown for use again')
		return false
	end
	local ring = player:getItemById(37456, true)
	if not ring then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You dont have Ring Of Souls to Enchanted')
		return false
	end
	local tokenCount = player:getItemCount(25172)
	if tokenCount and tokenCount < 2 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You need 2 Silver Tokens for this')
		return false
	end
	if not doPlayerRemoveMoneyDinamic(player, 10000) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Dont have 10000 of money (bank or inventory)')
		return false
	end
	if not player:removeItem(25172, 2) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You dont have Ring Of Souls to Enchanted')
		return false
	end
	ring:remove()
	player:addItem(37470)
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You Enchanted your Ring Of Souls and paid 10000 of money')
	return true
end

ringOfSouls:register()
