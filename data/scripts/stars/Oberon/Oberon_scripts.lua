local oberon_PrepareDeath = CreatureEvent("oberon_PrepareDeath")
function oberon_PrepareDeath.onPrepareDeath(creature, lastHitKiller, mostDamageKiller)
	local healCount = Game.getStorageValue(GlobalStorage.OberonHealCount)
	if healCount < 3 then
		creature:addHealth(creature:getMaxHealth())
		Game.setStorageValue(GlobalStorage.OberonHealCount, healCount +1)
	end
	return true
end
oberon_PrepareDeath:register()