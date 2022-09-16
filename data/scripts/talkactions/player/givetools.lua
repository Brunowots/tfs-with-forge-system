local ropeshovel = TalkAction("!tools")

function ropeshovel.onSay(player, words, param)
	local usedelay = 5 -- exhaust in seconds 
	if player:getStorageValue(Storage.Customcommands.Toolsrecived) < os.time() then
		if player:getItemCount(2554) >= 1 then --shovel
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "you already have an shovel")
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'you received an Shovel!')
			player:addItem(2554)
		end
		if player:getItemCount(2120) >= 1 then --rope
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "you already have an rope")
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'you received an Rope!')
			player:addItem(2120)
		end
		if player:getItemCount(2553) >= 1 then --pick
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "you already have an pick")
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'you received an Pick!')
			player:addItem(2553)
		end	
		player:setStorageValue(Storage.Customcommands.Toolsrecived, os.time() + usedelay)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "you need wait 5 seconds to use this command again")
	end
    return false
end

ropeshovel:register()

