local spiteOnChangeHealth = CreatureEvent("spiteOnChangeHealth")

local maliceForceIndex = {
	[1] = 0.9,
	[2] = 0.8,
	[3] = 0.7,
	[4] = 0.6,
	[5] = 0.5,
}

function spiteOnChangeHealth.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType)
	local increaseCount = Game.getStorageValue(GlobalStorage.SoulWar.maliceForceIncreaseCount)
	if increaseCount <= 0 then
		return primaryDamage, primaryType, secondaryDamage, secondaryType
	end
	local modifier = maliceForceIndex[increaseCount]
	if not increaseCount then
		return primaryDamage, primaryType, secondaryDamage, secondaryType
	end
	if attacker then
		if primaryDamage > 0 and primaryType ~= COMBAT_HEALING then
			primaryDamage = primaryDamage * modifier
		end
		if secondaryDamage > 0 and secondaryType ~= COMBAT_HEALING then
			secondaryDamage = secondaryDamage * modifier
		end
	end
	
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

spiteOnChangeHealth:register()