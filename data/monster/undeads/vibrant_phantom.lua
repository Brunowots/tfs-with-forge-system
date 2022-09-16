local mType = Game.createMonsterType("Vibrant Phantom")
local monster = {}

monster.description = "a vibrant phantom"
monster.experience = 19700
monster.outfit = {
	lookType = 1298,
	lookHead = 85,
	lookBody = 85,
	lookLegs = 88,
	lookFeet = 91,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1929
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 2500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Furious Crater."
	}

monster.health = 27000
monster.maxHealth = 27000
monster.race = "undead"
monster.corpse = 38648
monster.speed = 320
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "All this beautiful lightning.", yell = false},
	{text = "Feel the vibration!", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 67030},
	{name = "ultimate health potion", chance = 26370, maxCount = 5},
	{id = 7632, chance = 6590}, -- Giant shimmering pearl
	{name = "violet gem", chance = 8790},
	{name = "terra rod", chance = 14290},
	{name = "hailstorm rod", chance = 3300},
	{name = "gold ingot", chance = 4400},
	{name = "green gem", chance = 1100},
	{name = "blue gem", chance = 3300},
	{name = "underworld rod", chance = 2200},
	{name = "springsprout rod", chance = 3300},
	{name = "blue crystal shard", chance = 4400},
	{name = "violet crystal shard", chance = 1100},
	{id = 26185, chance = 1100}, -- Ring of blue plasma
	{id = 38978, chance = 6590}, -- Vibrant hearth
	{id = 38979, chance = 3300}, -- Vibrant robe
	{id = 38944, chance = 1} -- Bag you desire
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -1500, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1000, maxDamage = -1500, range = 7, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1100, maxDamage = -1500, range = 7, radius = 4, effect = CONST_ME_ENERGYAREA, target = false}
	-- Chain: const_me-> CONST_ME_PINK_ENERGY_SPARK, combat_t->COMBAT_HOLYDAMAGE
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)