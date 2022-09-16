local greedbeastOnDeath = CreatureEvent("greedbeastOnDeath")
function greedbeastOnDeath.onDeath(creature)
	local count = Game.getStorageValue(GlobalStorage.SoulWar.greedbeastKillCount)
	Game.setStorageValue(GlobalStorage.SoulWar.greedbeastKillCount, count + 1)
	return true
end

greedbeastOnDeath:register()
