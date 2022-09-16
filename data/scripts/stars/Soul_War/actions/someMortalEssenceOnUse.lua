local someMortalEssence = Action()
function someMortalEssence.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if type(target) ~= "userdata" then
		return false
	end
	if not target:isItem() then
		return false
	end
	
	if target:getId() ~= 38725 then
		return false
	end
	
	local pos = Position(33856, 31874, 7)
	pos:sendMagicEffect(CONST_ME_MAGIC_RED)
	
	local increaseIndex = Game.getStorageValue(GlobalStorage.SoulWar.crueltyForceIncreaseCount)
	if increaseIndex > 0 then
		Game.setStorageValue(GlobalStorage.SoulWar.crueltyForceIncreaseCount, increaseIndex - 1)
	end
	
	item:remove()
	return true
end

someMortalEssence:id(38726)
someMortalEssence:register()