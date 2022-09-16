local mType = Game.createMonsterType("Infernal Phantom")
local monster = {}

monster.description = "a infernal phantom"
monster.experience = 14080
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

monster.health = 26000
monster.maxHealth = 26000
monster.race = "undead"
monster.corpse = 38960
monster.speed = 200
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	{text = "Ashes to ashes.", yell = false},
	{text = "Burn, baby! Burn!", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 62200},
	{name = "terra rod", chance = 34150},
	{name = "ultimate health potion", chance = 24390, maxCount = 4},
	{name = "hailstorm rod", chance = 7520},
	{name = "fire axe", chance = 3460},
	{name = "titan axe", chance = 1420},
	{name = "chaos mace", chance = 2240},
	{name = "glorious axe", chance = 3250},
	{name = "underworld rod", chance = 1630},
	{name = "springsprout rod", chance = 4670},
	{name = "wand of starstorm", chance = 7520},
	{name = "wand of voodoo", chance = 1630},
	{name = "warrior's axe", chance = 1420},
	{id = 38974, chance = 4470}, -- Infernal hearth
	{id = 38981, chance = 2640}, -- Infernal robe
	{id = 38944, chance = 1} -- Bag you desire
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -800},
	{name ="combat", interval = 3000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -980, maxDamage = -1350, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 3000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -850, maxDamage = -1200, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -980, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -1300, radius = 4, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -1350, length = 6, effect = CONST_ME_EXPLOSIONHIT, target = false},
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 1},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)