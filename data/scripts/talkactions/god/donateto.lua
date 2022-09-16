local donateTo = TalkAction("/donateto")

function donateTo.onSay(player, words, param)
	local howtouse = "How to use:\n /donateto [playername], [quantidade]"
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end
	if param == "" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "missing parameter \n" ..howtouse)
		return false
	end
	local split = param:split(",")
	
	if not split[1] then
		return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "missing command parameter \n" ..howtouse)
	end
	if not split[2] then
		return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "missing parameter: quantidade\n" ..howtouse)
	end
	split[2] = split[2]:gsub("^%s*(.-)$", "%1")
	-- if type(split[2]) ~= "number" then
		-- return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "invalid parameter: quantidade\n" ..howtouse)
	-- end
	
	local name = split[1]
	local amount = tonumber(split[2])
	if not amount or type(amount) ~= "number" then
		return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "invalid parameter: quantidade\n" ..howtouse)
	end
	
	local accountId = getAccountNumberByPlayerName(name)
	if accountId == 0 then
		return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "invalid parameter: playername\n" ..howtouse)
	end
	
	db.query("UPDATE `accounts` SET `coins` = (`coins`+ " .. amount .. ") WHERE `id` = " .. accountId)
	player:sendCancelMessage("Ok! Donate send to: " .. name .. ", Coins amount: " .. amount)
	return false
end

donateTo:separator(" ")
donateTo:register()