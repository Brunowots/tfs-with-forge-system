--[[

	Created by Stay Henrique 
	]]--
	
	
function getPlayersIp(cid)
	local player = Player(cid)
	if not player then return true end
	local tb = {}
	local players = Game.getPlayers()
	for _, pl in pairs(players) do
		if not tb[pl:getIp()] then
			tb[pl:getIp()] = 0
		end
		
		if pl:getIp() == player:getIp() then
			tb[pl:getIp()] = tb[pl:getIp()] + 1
		end
	end
	return tb[player:getIp()]
end
	
local OnlineSystem = CreatureEvent("OnlineSystem")
	

eventOnline = {}

local function addOnlineItem(playerId)
	local player = Player(playerId)
	if not player then return false end
	if player:getIp() == 0 then
		eventOnline[playerId] = nil
		return false
	end
	local checkingGained = 0
	if getPlayersIp(playerId) <= 5 then
		checkingGained = 50
	else
		checkingGained = 3
	end

	player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Você ganhou ".. checkingGained .."  Tournament Coins por permanecer online por 1 hora sem deslogar.")

	local tourAdd = player:addTournamentCoinsBalance(checkingGained, true)
	if tourAdd then
		print("".. player:getName() .." recebeu ".. checkingGained .." Tournament Coins as ".. os.date("%X")..".")
	else
		print("".. player:getName() .." não recebeu ".. checkingGained .." Tournament Coins as ".. os.date("%X")..".")
	end
	
	eventOnline[playerId] = nil
	--eventOnline[playerId] = addEvent(addOnlineItem, 60 * 60 * 1000, playerId) -- pode ser oq vc falou msm
end



function OnlineSystem.onLogin(player)
	--print("testando se o reload deu certo")
	--[[
	player:registerEvent("OnlineSystem")
	player:registerEvent("OnlineSystemLogout")
	local playerId = player:getId()
	if eventOnline[playerId] == nil then
		print(""..player:getName().." Logou as ".. os.date("%X").." e deu inicio ao Online System.") 
		eventOnline[playerId] = addEvent(addOnlineItem, 60 * 60 * 1000, playerId)
	end
	]]--
	return true
end

OnlineSystem:register()
		

	
	
 local OnlineSystemLogout = CreatureEvent("OnlineSystemLogout")



function OnlineSystemLogout.onLogout(player)
 	--[[
 	local playerId = player:getId()
	if eventOnline[playerId] then
		print(""..player:getName().." Deslogou as ".. os.date("%X").." e deu exit ao Online System.") 
		stopEvent(eventOnline[playerId])
		eventOnline[playerId] = nil
	end
	]]--
	return true
end
	



OnlineSystemLogout:register()