local mType = Game.createMonsterType("Sorcerer's Apparition")
local monster = {}

monster.description = "a sorcerer's apparition"
monster.experience = 18870
monster.outfit = {
	lookType = 138,
	lookHead = 95,
	lookBody = 114,
	lookLegs = 52,
	lookFeet = 76,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1949
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 2500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Mirrored Nightmare."
	}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 6081
monster.speed = 235
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
	chance = 10,
	{text = "I'll take your place when you are gone.", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 82130},
	{name = "great mana potion", chance = 63290, maxCount = 3},
	{id = 7632, chance = 10630}, -- Giant shimmering pearl
	{name = "blue gem", chance = 5800},
	{id = 26189, chance = 4350}, -- Ring of red plasma
	{name = "wand of voodoo", chance = 4350},
	{name = "wand of defiance", chance = 1930},
	{name = "wand of everblazing", chance = 1930},
	{name = "glacier amulet", chance = 2420},
	{name = "stone skin amulet", chance = 1450},
	{name = "alloy legs", chance = 480},
	{id = 26185, chance = 2900}, -- Ring of blue plasma
	{id = 26187, chance = 3380}, -- Ring of green plasma
	{name = "wand of starstorm", chance = 970},
	{id = 38944, chance = 1} -- Bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -800, maxDamage = -1100, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -1200, radius = 4, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -800, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -900, radius = 3, effect = CONST_ME_ICEATTACK, target = false}
	-- Chain: const_me-> CONST_ME_BLUE_ENERGY_SPARK, combat_t->COMBAT_ICEDAMAGE
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)