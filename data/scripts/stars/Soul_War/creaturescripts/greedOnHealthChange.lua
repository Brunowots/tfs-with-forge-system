local greedOnHealthChange = CreatureEvent("greedOnHealthChange")

function greedOnHealthChange.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType)
	local count = Game.getStorageValue(GlobalStorage.SoulWar.greedbeastKillCount)
	if count < 5 then
		return false
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

greedOnHealthChange:register()