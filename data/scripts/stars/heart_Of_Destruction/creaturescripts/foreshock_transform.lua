local foreshockTransform = CreatureEvent("ForeshockTransform")
function foreshockTransform.onThink(creature)
	if not creature:isMonster() then
		return true
	end

	local sparkOfDestructionPositions = {
		Position(32203, 31246, 14),
		Position(32205, 31251, 14),
		Position(32210, 31251, 14),
		Position(32212, 31246, 14),
	}
	
	local monsterTable = {
		[80] = {fromStage = 0, toStage = 1},
		[60] = {fromStage = 1, toStage = 2},
		[40] = {fromStage = 2, toStage = 3},
		[25] = {fromStage = 3, toStage = 4},
		[10] = {fromStage = 4, toStage = 5}
	}
	
	for hp, data in pairs(monsterTable) do
		local hpPercent = math.floor((creature:getHealth() / creature:getMaxHealth()) * 100)
		if realityQuakeStage == 0 then
			local foreshockHealth = creature:getHealth()
			if hpPercent <= hp and aftershockStage == data.fromStage then
				creature:remove()
				for _, sparkPos in pairs(sparkOfDestructionPositions) do
					Game.createMonster("Spark Of Destruction", sparkPos, false, true)
				end
				local monster = Game.createMonster("Aftershock", Position(32208, 31248, 14), false, true)
				if monster then
					monster:addHealth(-monster:getHealth() + foreshockHealth, COMBAT_PHYSICALDAMAGE)
					foreshockStage = data.toStage
				end
				return true
			end
		end
	end
	return true
end

foreshockTransform:register()
