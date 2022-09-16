function Party:onJoin(player)
	return true
end

function Party:onLeave(player)
	return true
end

function Party:onDisband()
	return true
end

function Party:onShareExperience(exp)
	local sharedExperienceMultiplier = 1
	local sharedExperienceMultiplier20 = 1.20 	--20% == 2 Vocations Iguais
	local sharedExperienceMultiplier30 = 1.30 	--30% == 2 Vocations Diferente
	local sharedExperienceMultiplier40 = 1.40 	--30% == 2 Vocations Diferente
	local sharedExperienceMultiplier60 = 1.60 	--60% == 3 Vocations Diferente
	local sharedExperienceMultiplier80 = 1.80 	--60% == 3 Vocations Diferente
	local sharedExperienceMultiplier100 = 2		--100% == 4 Vocations Diferentes
	local sharedExperienceMultiplier120 = 2.20		--100% == 4 Vocations Diferentes
	local sharedExperienceMultiplier50 = 1.50	--50% para acima de 6 players
	local vocationsIds = {}

	local vocationId = self:getLeader():getVocation():getBase():getId()
	if vocationId ~= VOCATION_NONE then
		table.insert(vocationsIds, vocationId)
	end

	for _, member in ipairs(self:getMembers()) do
		vocationId = member:getVocation():getBase():getId()
		if not table.contains(vocationsIds, vocationId) and vocationId ~= VOCATION_NONE then
			table.insert(vocationsIds, vocationId)
		end
	end
	
	local vocations = #vocationsIds
	
	if vocations == 1 then
		sharedExperienceMultiplier = sharedExperienceMultiplier30
	elseif vocations == 2 then
		sharedExperienceMultiplier = sharedExperienceMultiplier50
	elseif vocations == 3 then
		sharedExperienceMultiplier = sharedExperienceMultiplier80
	elseif vocations >= 4 then
		sharedExperienceMultiplier = sharedExperienceMultiplier120
	end

	local countPlayers = #self:getMembers() + 1
	
	if countPlayers <= 6 then
		return (exp * sharedExperienceMultiplier) / countPlayers
	else
		return (exp * sharedExperienceMultiplier50) / countPlayers
	end
end
