local ropeshovel = TalkAction("!backpack")

function ropeshovel.onSay(player, words, param)
	local usedelay = 5 -- exhaust in seconds 
	if player:getStorageValue(Storage.Customcommands.Toolsrecived) < os.time() then
		player:addItem(1988)
		player:setStorageValue(Storage.Customcommands.Toolsrecived, os.time() + usedelay)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "you need wait 5 seconds to use this command again")
	end
    return false
end

ropeshovel:register()

