local mType = Game.createMonsterType("Streaked Devourer")
local monster = {}

monster.description = "a Streaked Devourer"
monster.experience = 6300
monster.outfit = {
	lookType = 1398,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}



monster.health = 7000
monster.maxHealth = 7000
monster.race = "blood"
monster.corpse = 41527
monster.speed = 205
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
	canWalkOnFire = false,
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
	{text = "tzzzz tzzzz tzzzz!", yell = false},
	{text = "sloap sloap sloap!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 595300, maxCount = 24},
	{name = "Red Gem", chance = 3200},
	{name = "Gold Ingot", chance = 3000,},
	{name = "Streaked Devourer Eyes", chance = 2000},
	{name = "Streaked Devourer Maw", chance = 1980},
	{name = "streaked Devourer Legs", chance = 1980},
	{name = "Giant Sword", chance = 1230},
	{name = "Yellow Gem", chance = 1890},
	{name = "Guardian Halberd", chance = 1520},
	{name = "Crystal Mace", chance = 1500},
	{name = "War Axe", chance = 1501},
	{name = "Relic Sword", chance = 500},
	{name = "Mercenary Sword", chance = 500},
	{name = "Noble Axe", chance = 1480},
	{name = "Warrior's Axe", chance = 1700},
	{name = "Ornate Crossbow", chance = 1700}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -50, maxDamage = -96, range = 7, shootEffect = CONST_ANI_POISON, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -60, maxDamage = -260, range = 7, shootEffect = CONST_ANI_DEATH, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -70, maxDamage = -160, range = 3, length = 3, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="explosion", interval = 2000, chance = 15, minDamage = -50, maxDamage = -170, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -90, maxDamage = -260, range = 7, target = false},
	{name ="stone shower", interval = 2000, chance = 10, minDamage = -70, maxDamage = -140, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -70, maxDamage = -140, length = 3, spread = 3, effect = CONST_ME_PLANTATTACK, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
