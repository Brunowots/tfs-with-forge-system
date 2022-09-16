local autoBroadcast = GlobalEvent("asd")
function autoBroadcast.onThink(interval, lastExecution)
	-- local player = Player("Testing")
	-- if player then
		-- if player:getHealth() < (player:getMaxHealth() * 0.8) then
			-- player:addHealth(player:getMaxHealth())
		-- end
	-- end
	-- local player = Player("Dekina")
	-- if player then
		-- if player:getHealth() < (player:getMaxHealth() * 0.8) then
			-- player:addHealth(player:getMaxHealth())
		-- end
	-- end
    return true
end

autoBroadcast:interval(1000)
autoBroadcast:register()