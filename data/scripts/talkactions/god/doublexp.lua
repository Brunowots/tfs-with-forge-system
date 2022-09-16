local Double = TalkAction("/exp")

function Double.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end
	
	if param == "off" then
		Game.setStorageValue(15876, 0)
		Game.broadcastMessage("[Event]: Double EXP Disabled.", MESSAGE_EVENT_ADVANCE) 
		return false
	end
	
	local msg = ""
	
	if tonumber(param) <= 9 then
		msg = "0".. param
	else
		msg = tonumber(param)
	end
	
	Game.setStorageValue(15876, tonumber(param)*60*60 + os.time())
	Game.broadcastMessage("[Event]: Double EXP activated per ".. msg ..":00:00 hours.", MESSAGE_EVENT_ADVANCE) 

	return false
end

Double:separator(" ")
Double:register()