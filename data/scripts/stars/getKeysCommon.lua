-- 28590

-- local keys_data = {
	-- ActionId = {itemId, storage}
	-- [28590] = {itemId = 3701, str = Storage.gettedKeys.TREE_SEVEN_ZERO_ONE},
-- }

-- local getKeysCommon = Action()

-- function getKeysCommon.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
	-- local keyData = keys_data[item:getActionId()]
	-- if not keyData then
		-- return false
	-- end
	
	-- if player:getStorageValue(keyData.str) > os.time() then
		-- player:sendTextMessage(MESSAGE_STATUS_SMALL, "Have you already picked up this key today.")
		-- return true
	-- end
	
	-- player:addItem(keyData.itemId)
	
	-- player:setStorageValue(keyData.str, os.time() + 72000)
	-- return true
-- end

-- for actionId, keyData in pairs(keys_data) do
	-- getKeysCommon:aid(actionId)
-- end

-- getKeysCommon:register()