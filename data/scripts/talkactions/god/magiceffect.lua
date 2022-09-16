local magicEffect = TalkAction("/effect")

function magicEffect.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end

	if param == "" then
		player:sendCancelMessage("Command param required.")
		return false
	end

	local effect = tonumber(param)
	if(effect ~= nil and effect > 0) then
		player:getPosition():sendMagicEffect(effect)
	end

	return false
end

magicEffect:separator(" ")
magicEffect:register()

local magicEffect = TalkAction("/distanceeffect")

function magicEffect.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end

	if param == "" then
		player:sendCancelMessage("Command param required.")
		return false
	end

	local effect = tonumber(param)
	if(effect ~= nil and effect > 0) then
		local p = player:getPosition()
		p:sendDistanceEffect(Position(p.x+1, p.y+1, p.z), effect)
	end

	return false
end

magicEffect:separator(" ")
magicEffect:register()
