local sorrow = Action()
function sorrow.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if type(target) ~= "userdata" then
		return false
	end
	if type(target) == "userdata" and not target:isMonster() then
		return false
	end
	if target:getName() ~= "Ashes of Burning Hatred" then
		return false
	end
	
	local increaseIndex = Game.getStorageValue(GlobalStorage.SoulWar.hatredForceIncreaseCount)
	if increaseIndex > 0 then
		Game.setStorageValue(GlobalStorage.SoulWar.hatredForceIncreaseCount, increaseIndex - 1)
	end
	
	target:getPosition():sendMagicEffect(2)
	target:say("gouph!!", TALKTYPE_MONSTER_SAY)
	item:remove()
	return true
end

sorrow:id(38628)
sorrow:register()