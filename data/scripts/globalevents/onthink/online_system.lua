function getPlayersByIp(ip)	
	local result = {}
	local players, player = Game.getPlayers()
	for i = 1, #players do -- retorna players online
		player = players[i] -- começa tratar playes 1 por 1 [i]
			
		if player:getIp() == ip then
			result[#result + 1] = player
		end
	end
	return result
end

local tournament_amount = 10
local onlineSystem20 = GlobalEvent("onlineSystem20")
function onlineSystem20.onThink(interval)
	local gainedIps = {}
	for _, player in ipairs(Game.getPlayers()) do
		local tournamentToAdd = tournament_amount
		if player:isVip() then
			tournamentToAdd = tournamentToAdd + (tournamentToAdd * VIP_SYSTEM_CONFIG.tournament_bonus)
		end
		if not table.contains(gainedIps, player:getIp()) then
			if player and player:getIp() ~= 0 then
				player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You earned ".. tournamentToAdd .."  Tournament Coins for staying online for 1 hour.")
				player:addTournamentCoinsBalance(tournamentToAdd, true)
				table.insert(gainedIps, player:getIp())
			end
		end
	end

	return true
end

onlineSystem20:interval(3600000) -- every 1h
onlineSystem20:register()