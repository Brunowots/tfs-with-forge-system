local mType = Game.createMonsterType("Girtablilu Warrior")
local monster = {}

monster.description = "an Girtablilu Warrior"
monster.experience = 5800
monster.outfit = {
	lookType = 1407,
	lookHead = 114,
	lookBody = 39,
	lookLegs = 113,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0
}


monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 41635
monster.speed = 400
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
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
	pushable = true,
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
	{text = "Tip tap tip tap!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 595300, maxCount = 16},
	{name = "Gold Ingot", chance = 1200},
	{name = "Green Crystal Shard", chance = 1000,},
	{name = "Magma Coat", chance = 1000},
	{name = "Ultimate Health Potion", chance = 9800, maxCount = 4},
	{name = "Yellow Gem", chance = 1080},
	{name = "Green Gem", chance = 1080},
	{name = "Red Gem", chance = 1030},
	{name = "Blue Gem", chance = 1090},
	{name = "Ice Rapier", chance = 5120},
	{name = "Knight Axe", chance = 500},
	{name = "Epee", chance = 501},
	{name = "Beastslayer Axe", chance = 500},
	{name = "Blue Robe", chance = 530},
	{name = "Diamond Sceptre", chance = 480},
	{name = "Dragonbone Staff", chance = 300},
	{name = "Blue Crystal Shard", chance = 5300},
	{name = "Violet Crystal Shard", chance = 5000},
	{name = "Cyan Crystal Fragment", chance = 5992},
	{name = "Green Crystal Fragment", chance = 300},
	{name = "Fur Armor", chance = 2000},
	{name = "Scorpion Charm", chance = 2000},
	{name = "Girtablilu Warrior Carapace", chance = 2992},
	{name = "Focus Cape", chance = 3000},
	{name = "Glacier Robe", chance = 1120}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 400, maxDamage = -1050},
	{name ="arachnophobicawavedice", interval = 2000, chance = 20, minDamage = -500, maxDamage = -900, target = false},
	{name ="arachnophobicawaveenergy", interval = 2000, chance = 20, minDamage = -420, maxDamage = -970, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -823, radius = 4, effect = CONST_ME_BLOCKHIT, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -601, maxDamage = -828, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 70,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 150, maxDamage = 550, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
