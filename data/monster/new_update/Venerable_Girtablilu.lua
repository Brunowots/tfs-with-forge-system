local mType = Game.createMonsterType("Venerable Girtablilu")
local monster = {}

monster.description = "an Venerable Girtablilu"
monster.experience = 5300
monster.outfit = {
	lookType = 1407,
	lookHead = 38,
	lookBody = 58,
	lookLegs = 114,
	lookFeet = 2,
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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
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
	{text = "Tip tap tip tap!", yell = false}
}

monster.loot = {
	{name = "platinum coin", chance = 595300, maxcount = 19},
	{name = "small diamond", chance = 9800, maxcount = 2},
	{name = "ultimate health potion", chance = 9800, maxcount = 4},
	{name = "red gem", chance = 3200},
	{name = "gold ingot", chance = 3000,},
	{name = "cyan crystal fragment", chance = 2000},
	{name = "old girtablilu carapace", chance = 1980},
	{name = "violet gem", chance = 1980},
	{name = "yellow gem", chance = 1230},
	{name = "blue gem", chance = 1890},
	{name = "wand of decay", chance = 1520},
	{name = "wand of cosmic energy", chance = 1500},
	{name = "underworld rod", chance = 1501},
	{name = "northwind rod", chance = 1200},
	{name = "wand of voodoo", chance = 1200},
	{name = "blue crystal shard", chance = 1480},
	{name = "violet crystal shard", chance = 1700},
	{name = "green crystal shard", chance = 1700},
	{name = "red crystal fragment", chance = 1700},
	{name = "green crystal fragment", chance = 1592},
	{id = 26185, chance = 1501},
	{name = "scorpion charm", chance = 1200},
	{name = "necrotic rod", chance = 1200},
	{name = "wood cape", chance = 1480},
	{name = "wand of defiance", chance = 1480},
	{name = "springsprout rod", chance = 1700}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 601, maxDamage = -1250},
	{name ="arachnophobicawavedice", interval = 2000, chance = 20, minDamage = -420, maxDamage = -732, target = false},
	{name ="arachnophobicawaveenergy", interval = 2000, chance = 20, minDamage = -401, maxDamage = -628, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -428, maxDamage = -716, radius = 4, effect = CONST_ME_BLOCKHIT, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -401, maxDamage = -628, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false}
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
