local mType = Game.createMonsterType("Count Vlarkorth")
local monster = {}

monster.description = "Count Vlarkorth"
monster.experience = 55000
monster.outfit = {
	lookType = 1221,
	lookHead = 10,
	lookBody = 19,
	lookLegs = 19,
	lookFeet = 19,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 300000
monster.maxHealth = 300000
monster.race = "venom"
monster.corpse = 36434
monster.speed = 250
monster.manaCost = 0
monster.maxSummons = 6

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "Soulless Minion", chance = 99, interval = 1000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "platinum coin", minCount = 1, maxCount = 5, chance = 100000},
	{name = "crystal coin", minCount = 0, maxCount = 2, chance = 50000},
	{name = "supreme health potion", minCount = 0, maxCount = 6, chance = 35000},
	{name = "ultimate mana potion", minCount = 0, maxCount = 20, chance = 32000},
	{name = "ultimate spirit potion", minCount = 0, maxCount = 20, chance = 32000},
	{name = "bullseye potion", minCount = 0, maxCount = 10, chance = 12000},
	{name = "mastermind potion", minCount = 0, maxCount = 10, chance = 12000},
	{name = "silver token", minCount = 0, maxCount = 2, chance = 8000},
	{name = "blue gem", chance = 9000},
	{id = 26198, chance = 5200},-- collar of blue plasma
	{id = 26200, chance = 5200},-- collar of red plasma
	{name = "blue gem", chance = 8500},
	{name = "gold ingot", minCount = 0, maxCount = 1, chance = 10000},
	{name = "green gem", chance = 8200},
	{name = "magic sulphur", chance = 6500},
	{name = "red gem", chance = 8000},
	{id = 26185, chance = 5000},-- ring of blue plasma
	{id = 26189, chance = 5000},-- ring of red plasma
	{id = 26187, chance = 5000},-- ring of green plasma
	{name = "skull staff", chance = 7000},
	{name = "yellow gem", chance = 8500},
	{name = "young lich worm", chance = 5500},
	{name = "bear skin", chance = 200},
	{name = "embrace of nature", chance = 300},
	{name = "giant emerald", chance = 1700},
	{name = "giant ruby", chance = 1900},
	{name = "giant sapphire", chance = 1800},
	{name = "medal of valiance", chance = 500},
	{name = "terra helmet", chance = 300},
	{name = "final judgement", chance = 50}
}

monster.attacks = {
    {name ="melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1200},
    {name ="combat", interval = 2000, chance = 70, type = COMBAT_MANADRAIN, minDamage = -600, maxDamage = -1000, length = 7, spread = 3, effect = CONST_ME_SMALLCLOUDS, target = false},
    {name ="combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1100, length = 7, spread = 3, effect = CONST_ME_YELLOW_ENERGY_SPARK, target = false},
    {name ="combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -800, length = 7, spread = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.defenses = {
	defense = 120,
	armor = 78,
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 250, maxDamage = 450, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 3},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
