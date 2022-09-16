local mType = Game.createMonsterType("Turbulent Elemental")
local monster = {}

monster.description = "a turbulent elemental"
monster.experience = 19360
monster.outfit = {
	lookType = 1314,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1940
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 2500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Ebb and Flow."
	}

monster.health = 28000
monster.maxHealth = 28000
monster.race = "blood"
monster.corpse = 38740
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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

monster.voices = {
	interval = 5000,
	chance = 10
}

monster.loot = {
	{name = "crystal coin", chance = 78100},
	{name = "ultimate health potion", chance = 16890, maxCount = 4},
	{name = "gold ingot", chance = 23480},
	{name = "glacier robe", chance = 2110},
	{name = "violet gem", chance = 2900},
	{name = "blue gem", chance = 5280},
	{name = "wood cape", chance = 790},
	{name = "glacier amulet", chance = 3170},
	{name = "northwind rod", chance = 3430},
	{name = "stone skin amulet", chance = 260},
	{name = "springsprout rod", chance = 4490},
	{name = "sacred tree amulet", chance = 6860},
	{name = "crystalline armor", chance = 790},
	{name = "rubber cap", chance = 790},
	{name = "fur armor", chance = 1580},
	{id = 38944, chance = 1} -- Bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -900, maxDamage = -2000},	
	{name ="combat", interval = 4000, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -950, maxDamage = -2500, radius = 4, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_ICEDAMAGE, minDamage = -950, maxDamage = -1650, radius = 4, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -990, maxDamage = -1650, length = 5, radius = 2, effect = CONST_ME_GREEN_RINGS, target = false}	
}

monster.defenses = {
	defense = 90,
	armor = 105
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)