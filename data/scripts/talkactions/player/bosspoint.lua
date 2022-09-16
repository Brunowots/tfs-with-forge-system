local aol = TalkAction("!bosspoint")

function aol.onSay(player, words, param)	
	player:sendTextMessage(MESSAGE_LOOK, "you have " .. player:getBossPoints() .. " boss point(s)")
	return false
end

aol:register()
