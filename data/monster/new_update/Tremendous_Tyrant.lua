local mType = Game.createMonsterType("Tremendous Tyrant")
local monster = {}

monster.description = "a Tremendous Tyrant"
monster.experience = 6100
monster.outfit = {
	lookType = 1396,
	lookHead = 125,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}


monster.health = 11500
monster.maxHealth = 11500
monster.race = "blood"
monster.corpse = 41519
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 10000,
	chance = 10
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
	{text = "naps naps naps!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 595300, maxCount = 19},
	{name = "great spirit potion", chance = 9800, maxCount = 2},
	{name = "ultimate health potion", chance = 9800, maxCount = 4},
	{name = "Red Gem", chance = 3200},
	{name = "Gold Ingot", chance = 3000,},
	{name = "Blue Crystal Shard", chance = 2000},
	{name = "Violet Crystal Shard", chance = 1980},
	{name = "Green Crystal Shard", chance = 1980},
	{name = "Tremendous Tyrant Shell", chance = 1230},
	{name = "Lightning Legs", chance = 1890},
	{name = "Glacier Robe", chance = 1520},
	{name = "Yellow Gem", chance = 1500},
	{name = "Hailstorm Rod", chance = 1501},
	{name = "Wand of Cosmic Energy", chance = 1200},
	{name = "Elven Amulet", chance = 1200},
	{name = "Ice Rapier", chance = 1480},
	{name = "Knight Axe", chance = 1700},
	{name = "Dragonbone Staff", chance = 1700},
	{name = "Focus Cape", chance = 1700},
	{name = "Spellbook of Warding", chance = 1592},
	{name = "Wand of Starstorm", chance = 1501},
	{name = "Warrior's Shield", chance = 1200},
	{name = "Tremendous Tyrant Head", chance = 1200}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
	{name ="stalagmite", interval = 2000, chance = 15, minDamage = -190, maxDamage = -200, range = 7, length = 6, spread = 3, shootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -170, maxDamage = -260, range = 3, length = 6, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -190, maxDamage = -210, range = 3, length = 6, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="stone shower", interval = 2000, chance = 10, minDamage = -230, maxDamage = -350, range = 7, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
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
