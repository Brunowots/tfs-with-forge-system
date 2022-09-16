local mType = Game.createMonsterType("Lavaworm")
local monster = {}

monster.description = "a lavaworm"
monster.experience = 6500
monster.outfit = {
	lookType = 1394,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}



monster.health = 7500
monster.maxHealth = 7500
monster.race = "fire"
monster.corpse = 41514
monster.speed = 258
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "hot hot hot!", yell = false},
	{text = "wobble wobble!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 595300, maxCount = 19},
	{name = "Violet Crystal Shard", chance = 9800, maxCount = 2},
	{name = "Blue Crystal Shard", chance = 3200},
	{name = "Lavaworm Spike Roots", chance = 3000},
	{name = "gold ingot", chance = 2000},
	{name = "green Gem", chance = 1980},
	{name = "Lavaworm Spikes", chance = 1980},
	{name = "Violet Gem", chance = 1230},
	{name = "Warrior Helmet", chance = 1890},
	{name = "Underworld Rod", chance = 1520},
	{name = "Wand of Voodoo", chance = 1500},
	{name = "Blue Crystal Shard", chance = 1501},
	{name = "Butterfly Ring", chance = 1200},
	{name = "lavaworm Jaws", chance = 1200},
	{name = "crusader Helmet", chance = 1480},
	{name = "Strange Helmet", chance = 1700}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -300, range = 7, length = 3, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -300, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -90, maxDamage = -180, range = 7, length = 6, spread = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.defenses = {
	defense = 33,
	armor = 45
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
