local uglyOriginOnDeath = CreatureEvent("uglyOriginOnDeath")
function uglyOriginOnDeath.onDeath(creature)
	if invoqueUglyMonsterData then
		if invoqueUglyMonsterData[creature:getId()] then
			invoqueUglyMonsterData[creature:getId()] = nil
		end
	end
	return true
end

uglyOriginOnDeath:register()