local mType = Game.createMonsterType("Many Faces")
local monster = {}

monster.description = "a many faces"
monster.experience = 18870
monster.outfit = {
	lookType = 1296,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1927
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 2500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "The Mirrored Nightmare."
	}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 38640
monster.speed = 215
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
	{text = "I have a head start.", yell = false},
	{text = "Look into my eyes! No, the other ones!", yell = false},
	{text = "The mirrors can't contain the night!", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 76950},
	{name = "ultimate health potion", chance = 15160, maxCount = 7},
	{name = "violet gem", chance = 4920},
	{name = "green gem", chance = 5860},
	{name = "blue gem", chance = 5000},
	{name = "northwind rod", chance = 7660},
	{name = "sacred tree amulet", chance = 5550},
	{id = 38768, chance = 8130}, -- Apron
	{name = "glacier shoes", chance = 2580},
	{name = "glacier robe", chance = 2190},
	{name = "stone skin amulet", chance = 5940},
	{id = 26189, chance = 4840}, -- Ring of red plasma
	{id = 38767, chance = 3520}, -- Head
	{name = "glacial rod", chance = 630},
	{id = 38859, chance = 630}, -- Gruesome fan
	{id = 38944, chance = 1} -- Bag you desire
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1100},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1020, maxDamage = -1200, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -950, maxDamage = -1250, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -1300, radius = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 3000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -1250, radius = 4, effect = CONST_ME_HOLYDAMAGE, target = false},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_HOLYDAMAGE, minDamage = -850, maxDamage = -1000, radius = 4, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1100, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false}
	-- Chain: const_me-> CONST_ME_YELLOW_ENERGY_SPARK, combat_t->COMBAT_HOLYDAMAGE

}

monster.defenses = {
	defense = 90,
	armor = 105
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = -30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)