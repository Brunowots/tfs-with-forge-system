local mType = Game.createMonsterType("Afflicted Strider")
local monster = {}

monster.description = "an afflicted strider"
monster.experience = 5700
monster.outfit = {
	lookType = 1403,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 41554
monster.speed = 340
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
	interval = 5000,
	chance = 10,
	{text = "You're so little!", yell = false},
	{text = "Human flesh -  delicious!", yell = false},
	{text = "Crush the intruders!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 595300, maxCount = 29},
	{name = "violet gem", chance = 2000},
	{name = "guardian halberd", chance = 1000},
	{name = "Crystal Sword", chance = 10000},
	{name = "violet crystal shard", chance = 1800, maxCount = 6},
	{name = "Green Crystal Shard", chance = 1800, maxCount = 6},
	{name = "Magma Coat", chance = 900},
	{name = "ice Rapier", chance = 1980},
	{name = "Serpent Sword", chance = 4030},
	{name = "Broadsword", chance = 1890},
	{name = "Machete", chance = 5120},
	{name = "Knight Axe", chance = 1200},
	{name = "Knight Armor", chance = 501},
	{name = "Doublet", chance = 90},
	{name = "Mercenary Sword", chance = 300},
	{name = "Haunted Blade", chance = 580},
	{name = "Titan Axe", chance = 3100},
	{name = "Spirit Cloak", chance = 1300},
	{name = "Focus Cape", chance = 1000},
	{name = "Belted Cape", chance = 1992},
	{name = "Afflicted Strider Head", chance = 1800}	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -850},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -410, range = 3, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -170, maxDamage = -400, range = 3, shootEffect = CONST_ANI_HOLY, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -350, length = 4, spread = 1, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="speed", interval = 2000, chance = 25, speedChange = 450, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
