local ghost = TalkAction("/ghost")

function ghost.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end

	local position = player:getPosition()
	local isGhost = not player:isInGhostMode()

	player:setGhostMode(isGhost)
	if isGhost then
		player:sendTextMessage(MESSAGE_HOTKEY_PRESSED, "You are now invisible.")
		
	else
		player:sendTextMessage(MESSAGE_HOTKEY_PRESSED, "You are visible again.")
		
	end
	return false
end

ghost:separator(" ")
ghost:register()
