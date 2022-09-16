local timetochange = 120 --in seconds
local time = nil

local config = {
	{itemId = 20527},
	{itemId = 2016},
}

--base urmahlullu have 515000/515000 hp, next form 400000/515000,
-- next form 300000/515000, next form 200000/515000, and last 100000/515000

local warlockChanges = CreatureEvent("warlockChanges")

function warlockChanges.onHealthChange(creature, attacker, primaryDamage, primaryType,
                                          secondaryDamage, secondaryType)
	if creature and creature:getName() == 'weak warlock' then
		if creature:getHealth() <= 680000 then
			position = creature:getPosition()
			creature:remove()
			Game.createMonster('warlock of winsdow', position, true, true)
			time = os.time()
			-- make change and start counter (~ 1 minute)
		end
	end
	if creature and creature:getName() == 'warlock of winsdow' then
		if creature:getHealth() <= 500000 then
			if os.time() <= time + timetochange  then
				position = creature:getPosition()
				creature:remove()
				Game.createMonster('fortified warlock', position, true, true)
				time = os.time()
				-- make change to urmahlullu the tamed and start new count (~1 minute)
			else
				position = creature:getPosition()
				creature:remove()
				Game.createMonster('weak warlock', position, true, true)
				-- back to wildness of urmahlullu
			end
		end
	end
	if creature and creature:getName() == 'fortified warlock' then
		if creature:getHealth() <= 250000 then
			if os.time() <= time + timetochange then
				position = creature:getPosition()
				creature:remove()
				Game.createMonster('warlock boss', position, true, true)
				time = os.time()
				-- make change to wisdom of urmahlullu and start new count (~1 minute)
			else
				position = creature:getPosition()
				creature:remove()
				Game.createMonster('warlock of winsdow', position, true, true)
				time = os.time()
				-- back to wildness of urmahlullu
			end
		end
	end
	if creature and creature:getName() == 'warlock boss' then
		if creature:getHealth() <= 250000 then
			if os.time() <= time + timetochange then
				position = creature:getPosition()
				creature:remove()
				Game.createMonster('Lastform Warlock', position, true, true)
				time = os.time()
				-- make change to urmahlullu the weakened and start new count (~1 minute)
			else
				position = creature:getPosition()
				creature:remove()
				Game.createMonster('fortified warlock', position, true, true)
				time = os.time()
				--back to urmahlullu the tamed
			end
		end
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

warlockChanges:register()

local warlockDeath = CreatureEvent("warlockDeath")

function warlockDeath.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
	if creature and creature:getName()== 'Lastform Warlock' then
		if os.time() > time + timetochange then
			local position = creature:getPosition()
			for _, tab in ipairs(config) do
				local item = Tile(position):getItemById(tab.itemId)
				if item then
					item:remove()
				end
			end
			Game.createMonster('lastform warlock', position, true, true)
			time = os.time()
		end
	end
	return true
end

warlockDeath:register()