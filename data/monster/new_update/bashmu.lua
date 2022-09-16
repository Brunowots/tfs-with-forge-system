local mType = Game.createMonsterType("Bashmu")
local monster = {}

monster.description = "a bashmu"
monster.experience = 5000
monster.outfit = {
	lookType = 1408,
	lookHead = 123,
	lookBody = 123,
	lookLegs = 99,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}


monster.health = 8200
monster.maxHealth = 8200
monster.race = "blood"
monster.corpse = 41638
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	damage = 30,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
}

monster.loot = {
	{name = "Platinum Coin", chance = 69390, maxCount = 19},
	{name = "guardian halberd", chance = 8930,},
	{name = "bashmu feather", chance = 5320},
	{name = "Great Spirit Potion", chance = 3750},
	{name = "Green Crystal Shard", chance = 3340},
	{name = "Blue Crystal Shard", chance = 2930},
	{name = "Bashmu Tongue", chance = 4910},
	{name = "Bashmu Fang", chance = 2110},
	{name = "sacred tree amulet", chance = 4360},
	{name = "rainbow quartz", chance = 1840},
	{name = "Glacier Amulet", chance = 1020},
	{name = "Small Diamond", chance = 2930},
	{name = "violet gem", chance = 2730},
	{name = "Haunted Blade", chance = 480},
	{id = 26200, chance = 610},
	{name = "Glorious Axe", chance = 820},
	{name = "magma amulet", chance = 550},
	{name = "Terra Amulet", chance = 1640},
	{id = 26198, chance = 480}
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -800, range = 7, shootEffect = CONST_ANI_POISON, target = false},
	{name ="outfit", interval = 2000, chance = 1, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 3000, outfitItem = 3976},
	{name ="speed", interval = 2000, chance = 25, speedChange = -850, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true, duration = 12000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -250, maxDamage = -600, length = 8, spread = 3, effect = CONST_ME_SOUND_RED, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -600, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 65,
	armor = 65,
		{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 340, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
