local up = TalkAction("/up")

local function testando(cid) 
	local player = Player(cid)
	player:remove()
end

function up.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end


	if (param == "test") then 
		--addEvent(testando, 5 * 1000, player.uid)
		--[[
		while( true ) do
		   print("This loop will run forever.")
		end
		]]--

	else 

		local position = player:getPosition()
		position.z = position.z - 1
		player:teleportTo(position)
	end

	return false
end

up:separator(" ")
up:register()
