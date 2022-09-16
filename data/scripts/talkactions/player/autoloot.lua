local autlootSwitch = TalkAction("!autoloot")

function autlootSwitch.onSay(player, words, param)
	local actived = player:getStorageValue(Storage.autoLootEnabled)
	if actived == -1 then
		player:setStorageValue(Storage.autoLootEnabled, 1)
		actived = 1
	end
	local msg
	if actived == 1 then
		player:setStorageValue(Storage.autoLootEnabled, 0)
		msg = "disabled"
	elseif actived == 0 then
		player:setStorageValue(Storage.autoLootEnabled, 1)
		msg = "actived"
	end
	player:sendTextMessage(MESSAGE_LOOK, "Autoloot " .. msg)
	return false
end

autlootSwitch:register()