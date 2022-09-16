local discord = TalkAction("!discord")

function discord.onSay(player, words, param)

	local str = "https://discord.com/invite/wevTkkRjVp"
	player:sendTextMessage(MESSAGE_LOOT, str)
	return false
end

discord:separator(" ")
discord:register()
