local mType = Game.createMonsterType("Cave Chimera")
local monster = {}

monster.description = "a Cave Chimera"
monster.experience = 6800
monster.outfit = {
	lookType = 1406,
	lookHead = 125,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}


monster.health = 8000
monster.maxHealth = 8000
monster.race = "blood"
monster.corpse = 41603
monster.speed = 310
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 20,
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
	{text = "QJELL NETA NA!!", yell = false}
}

monster.loot = {
    {name = "platinum coin", chance = 595300, maxcount = 24},
    {name = "violet gem", chance = 1200},
    {name = "ultimate health potion", chance = 1000,},
    {name = "gold ingot", chance = 1000},
    {name = "great spirit potion", chance = 9800, maxcount = 2},
    {name = "green crystal shard", chance = 9800, maxcount = 6},
    {id = 26185, chance = 1980},
    {name = "glacier amulet", chance = 1980},
    {name = "glacier kilt", chance = 2030},
    {name = "yellow gem", chance = 1890},
    {name = "gold ring", chance = 5120},
    {name = "fur armor", chance = 1000},
    {name = "gemmed figurine", chance = 1500},
    {name = "mercenary sword", chance = 130},
    {name = "elvish bow", chance = 280},
    {name = "composite hornbow", chance = 200},
    {name = "crystal crossbow", chance = 200},
    {name = "ornate crossbow", chance = 1000},
    {name = "cave chimera head", chance = 1992}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -601, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -475, range = 7, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DROWNDAMAGE, minDamage = -180, maxDamage = -400, range = 7, shootEffect = CONST_ANI_SPEAR, effect = CONST_ME_LOSEENERGY, target = true}
}

monster.defenses = {
	defense = 45,
	armor = 54,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 200, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
