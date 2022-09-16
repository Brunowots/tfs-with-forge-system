local autoloot = TalkAction("!task")

function autoloot.onSay(player, words, param)
	CUSTOM_TASK_MODAL:showTasks(player:getId())
	return false
end

autoloot:separator(" ")

autoloot:register()