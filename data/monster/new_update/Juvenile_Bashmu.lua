local mType = Game.createMonsterType("Juvenile Bashmu")
local monster = {}

monster.description = "a Juvenile Bashmu"
monster.experience = 4500
monster.outfit = {
	lookType = 1408,
	lookHead = 0,
	lookBody = 113,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

	
monster.health = 7500
monster.maxHealth = 7500
monster.race = "blood"
monster.corpse = 41802
monster.speed = 210
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
	runHealth = 5,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 1,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "platinum coin", chance = 73110, maxcount = 19},
	{name = "great spirit potion", chance = 14620, maxcount = 2},
	{name = "ultimate health potion", chance = 10270, maxcount = 4},
	{name = "blue crystal shard", chance = 6110},
	{name = "bashmu tongue", chance = 5970,},
	{name = "bashmu feather", chance = 4500},
	{name = "lightning pendant", chance = 2150},
	{name = "lightning boots", chance = 1370},
	{name = "lightning legs", chance = 2150},
	{name = "violet gem", chance = 2250},
	{name = "yellow gem", chance = 2100},
	{name = "green gem", chance = 1170},
	{name = "red gem", chance = 2250},
	{name = "war hammer", chance = 1610},
	{name = "amber staff", chance = 1320},
	{name = "crystal mace", chance = 730},
	{name = "diamond sceptre", chance = 2000},
	{name = "dragonbone staff", chance = 1420},
	{name = "violet crystal shard", chance = 1560},
	{name = "green crystal shard", chance = 3770},
	{name = "cyan crystal fragment", chance = 3330},
	{name = "bashmu fang", chance = 2150},
	{name = "skull staff", chance = 930},
	{name = "chaos mace", chance = 540},
	{name = "spellweaver's robe", chance = 1080},
	{name = "pair of iron fists", chance = 980}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -410, range = 3, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -170, maxDamage = -350, range = 3, shootEffect = CONST_ANI_HOLY, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -300, length = 4, spread = 1, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
