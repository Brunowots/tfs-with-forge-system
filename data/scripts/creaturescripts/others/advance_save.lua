local config = {
	heal = true,
	save = true,
	effect = false
}

local advanceSave = CreatureEvent("AdvanceSave")
function advanceSave.onAdvance(player, skill, oldLevel, newLevel)
	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end
	
	if newLevel == 20 then
		player:addItem(2160, 2)
		player:say('Level 20! Gained 20000 of money!', TALKTYPE_MONSTER_SAY)
	elseif newLevel == 50 then
		player:addItem(2160, 5)
		player:say('Level 20! Gained 50000 of money!', TALKTYPE_MONSTER_SAY)
	elseif newLevel == 100 then
		player:addItem(2160, 10)
		player:say('Level 20! Gained 100000 of money!', TALKTYPE_MONSTER_SAY)
	end
	
	if config.effect then
		player:getPosition():sendMagicEffect(math.random(CONST_ME_FIREWORK_YELLOW, CONST_ME_FIREWORK_BLUE))
		player:say('LEVEL UP!', TALKTYPE_MONSTER_SAY)
	end

	if config.heal then
		player:addHealth(player:getMaxHealth())
	end

	if config.save then
		player:save()
	end
	return true
end
advanceSave:register()