local mType = Game.createMonsterType("Weak Soul")
local monster = {}

monster.description = "a Weak Soul"
monster.experience = 120
monster.outfit = {
	lookType = 48,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1500
monster.maxHealth = 1500
monster.race = "undead"
monster.corpse = 0
monster.speed = 280
monster.manaCost = 100
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Huh!", yell = false},
	{text = "Shhhhhh", yell = false},
	{text = "Buuuuuh", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -20, maxDamage = -45, range = 1, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

local function getCreaturesInMatrix(position, area, effect)
	local result = {}
	local colMiddle = math.floor(#area[1] / 2) + 1
	local lineMiddle = math.floor(#area / 2) + 1
	local posAjusted = Position(position.x - colMiddle, position.y - lineMiddle, position.z)
	for i = 1, #area do
		local line = area[i]
		for o = 1, #line do
			if area[i][o] == 1 then
				local pos = Position(posAjusted.x + o, posAjusted.y + i, posAjusted.z)
				if effect then
					pos:sendMagicEffect(effect)
				end
				local tile = Tile(pos)
				if tile then
					local creature = tile:getTopCreature()
					if creature and creature:isPlayer() then
						table.insert(result, creature:getId())
					end
				end
			end
		end
	end
	return result
end

local selfExplodeArea = {
	{0,1,1,1,1,1,0},
	{1,1,1,1,1,1,1},
	{1,1,1,1,1,1,1},
	{1,1,1,0,1,1,1},
	{1,1,1,1,1,1,1},
	{1,1,1,1,1,1,1},
	{0,1,1,1,1,1,0},
}

local function doSelfExplode(cid)
	local creature = Creature(cid)
	if not creature then
		return
	end
	local targets = getCreaturesInMatrix(creature:getPosition(), selfExplodeArea, 6)
	for _, tid in pairs(targets) do
		local target = Player(tid)
		if target then
			target:addHealth(-math.random(4000, 5000))
		end
	end
	creature:remove()
end

local function checkType(cid)
	local creature = Creature(cid)
	if not creature then
		return
	end
	if creature then
		local atualType = creature:getName()
		if atualType == "Weak Soul" then
			creature:setType("Strong Soul")
		elseif atualType == "Strong Soul" then
			creature:setType("Powerful Soul")
		elseif atualType == "Powerful Soul" then
			doSelfExplode(cid)
			return
		end
	end
	
	addEvent(checkType, 5000, cid)
end

mType.onAppear = function(monster, creature)
	local cid = creature:getId()
	addEvent(checkType, 5000, cid)
end

mType:register(monster)
