local megalomaniaOnChangeHealth = CreatureEvent("megalomaniaOnChangeHealth")


function megalomaniaOnChangeHealth.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType)
	if Game.getStorageValue(GlobalStorage.SoulWar.megalomaniaImortal) >= 1 then
		return false
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

megalomaniaOnChangeHealth:register()