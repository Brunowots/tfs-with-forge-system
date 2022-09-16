local recompensaLevel = CreatureEvent("recompensaLevel")

local table = 
{
	-- [level] = type = "item", id = {ITEM_ID, QUANTIDADE}, msg = "MENSAGEM"},
	-- [level] = type = "bank", id = {QUANTIDADE, 0}, msg = "MENSAGEM"},
	-- [level] = type = "addon", id = {ID_ADDON_FEMALE, ID_ADDON_MALE}, msg = "MENSAGEM"},
	-- [level] = type = "mount", id = {ID_MOUNT, 0}, msg = "MENSAGEM"},

	[20] = {type = "item", id = {2160, 3}, msg = "You got 3 crystal coins for reaching level 20!"},
	[50] = {type = "item", id = {2160, 5}, msg = "You got 5 crystal coins for reaching level 50!"},
	[80] = {type = "item", id = {2160, 10}, msg = "You got 10 crystal coins for reaching level 80!"},
	[130] = {type = "item", id = {2160, 15}, msg = "You got 15 crystal coins for reaching level 130!"},
	[170] = {type = "item", id = {2160, 20}, msg = "You got 20 crystal coins for reaching level 170!"},
	[220] = {type = "item", id = {2160, 25}, msg = "You got 25 crystal coins for reaching level 220!"},
	[250] = {type = "item", id = {2160, 30}, msg = "You got 30 crystal coins for reaching level 250!"},
	[280] = {type = "item", id = {2160, 30}, msg = "You got 30 crystal coins for reaching level 280!"},
	[330] = {type = "item", id = {2160, 50}, msg = "You got 50 crystal coins for reaching level 330!"}
}

local storage = 1500

function recompensaLevel.onAdvance(player, skill, oldLevel, newLevel)

	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end

	for level, _ in pairs(table) do
		if newLevel >= level and player:getStorageValue(storage) < level then
			if table[level].type == "item" then	
				player:addItem(table[level].id[1], table[level].id[2])
			elseif table[level].type == "bank" then
				player:setBankBalance(player:getBankBalance() + table[level].id[1])
			elseif table[level].type == "addon" then
				player:addOutfitAddon(table[level].id[1], 3)
				player:addOutfitAddon(table[level].id[2], 3)
			elseif table[level].type == "mount" then
				player:addMount(table[level].id[1])
			else
				return false
			end
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table[level].msg)
			player:setStorageValue(storage, level)
		end
	end
	player:save()
	return true
end

recompensaLevel:register()