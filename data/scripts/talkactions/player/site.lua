local ropeshovel = TalkAction("!site")

function ropeshovel.onSay(player, words, param)
		
		doPlayerSendTextMessage(player, MESSAGE_EVENT_ADVANCE, "https://extremer-global.com")
end

ropeshovel:separator(" ")
ropeshovel:register()

