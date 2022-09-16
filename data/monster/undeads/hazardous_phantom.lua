local mType = Game.createMonsterType("Hazardous Phantom")
local monster = {}

monster.description = "a Hazardous Phantom"
monster.experience = 22000
monster.outfit = {
	lookType = 1298,
	lookHead = 114,
	lookBody = 80,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1933
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 2500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Claustrophobic Inferno."
	}

monster.health = 44000
monster.maxHealth = 44000
monster.race = "undead"
monster.corpse = 38960
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


monster.loot = {
	{name = "crystal coin", chance = 100000},
	{name = "great health potion", chance = 80560, maxCount = 5},
	{name = "green gem", chance = 7410},
	{name = "hailstorm rod", chance = 11110},
	{name = "northwind rod", chance = 1850},
	{name = "glacier robe", chance = 1850},
	{name = "blue gem", chance = 2780},
	{name = "glacier amulet", chance = 4060},
	{name = "platinum amulet", chance = 2030},
	{name = "underworld rod", chance = 2540},
	{name = "springsprout rod", chance = 2540},
	{name = "sacred tree amulet", chance = 3550},
	{id = 7632, chance = 1850}, -- Giant shimmering pearl
	{id = 26198, chance = 930}, -- Collar of blue plasma,
	{id = 38944, chance = 1}, -- Bag you desire
	{name = "hazardous heart", chance = 4630},
	{name = "hazardous robe", chance = 4630}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -950, maxDamage = -1800},
	{name ="combat", interval = 3000, chance = 24, type = COMBAT_EARTHDAMAGE, minDamage = -1000, maxDamage = -1400, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1200, maxDamage = -1400, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}	
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = - 0},
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
