local commonCommandsExaustStorage = 30058
local exaustDelay = 1 -- seconds

function doPlayerRemoveMoneyDinamic(player, money)
	local itemMoney = player:getMoney()
	local balance = player:getBankBalance()
	if (itemMoney + balance) < money then
		return false
	end
	if itemMoney >= money then
		player:removeMoney(money)
		return true
	end
	if balance >= money then
		player:setBankBalance(balance - money)
		return true
	end
	if (itemMoney + balance) >= money then
		local left = money
		if itemMoney > 0 then
			left = left - itemMoney
			player:removeMoney(itemMoney)
		end
		if left > 0 then
			player:setBankBalance(balance - left)
		end
		return true
	end
	return false
end

function Player.commonCommandsCooldown(self)
	if not self then return false end
	if self:getStorageValue(commonCommandsExaustStorage) > os.time() then
		return false
	end
	self:setStorageValue(commonCommandsExaustStorage, os.time() + exaustDelay)
	return true
end