local forgeSystemMonster = CreatureEvent("ForgeSystemMonster")
function forgeSystemMonster.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
	local targetMonster = creature:getMonster()
	if not targetMonster then
		return true
	end
	return ForgeSystemMonster:onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified) 
end
forgeSystemMonster:register()
