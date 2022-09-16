local ropeshovel = TalkAction("!livropoi")

function ropeshovel.onSay(player, words, param)
	local usedelay = 60 -- exhaust in seconds 
	if player:getStorageValue(Storage.Customcommands.Toolsrecived) < os.time() then
		player:addItem(1970)
		player:setStorageValue(Storage.Customcommands.Toolsrecived, os.time() + usedelay)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "you need wait 60 seconds to use this command again")
	end
    return false
end

ropeshovel:register()

