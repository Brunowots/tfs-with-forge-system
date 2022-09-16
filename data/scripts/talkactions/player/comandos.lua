local tutorPosition = TalkAction("!comandos")

function tutorPosition.onSay(player, words, param)

	local position = player:getPosition()
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "!serverinfo - !online - !bless - !buyhouse - !leavehouse - !sellhouse - !aol - !time - !vial - !tools - !vip - !shared - !sorf - !ringofsouls - !food - !discord")
	return false
end

tutorPosition:register()
