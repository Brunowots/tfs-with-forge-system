local mType = Game.createMonsterType("Frost Flower Asura")
local monster = {}

monster.description = "a frost flower asura"
monster.experience = 4200
monster.outfit = {
	lookType = 150,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 86,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1619
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Asura Palace."
	}

monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 33420
monster.speed = 220
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 3,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 100},
	{name = "platinum coin", chance = 100000, maxCount = 6},
	{name = "golden lotus brooch", chance = 20240},
	-- {name = "flask of demonic blood", chance = 19610},
	{name = "soul orb", chance = 18690},
	{name = "peacock feather fan", chance = 17840},
	{name = "demonic essence", chance = 16780},
	{name = "great health potion", chance = 12410, maxCount = 2},
	{name = "assassin star", chance = 10160, maxCount = 5},
	{name = "small diamond", chance = 8250, maxCount = 3},
	{name = "small sapphire", chance = 7760, maxCount = 3},
	{name = "white pearl", chance = 7120, maxCount = 2},
	{name = "black pearl", chance = 5430, maxCount = 2},
	{name = "silver brooch", chance = 5220},
	{name = "small ruby", chance = 4440, maxCount = 2},
	{name = "small topaz", chance = 4020, maxCount = 2},
	{name = "small emerald", chance = 3950, maxCount = 2},
	{name = "tribal mask", chance = 3170},
	{name = "northwind rod", chance = 3030},
	{name = "yellow gem", chance = 2050},
	{name = "hailstorm rod", chance = 1130},
	{name = "silver amulet", chance = 990},
	{name = "blue robe", chance = 780},
	{name = "assassin dagger", chance = 710},
	{name = "gold ingot", chance = 420},
	{name = "blue gem", chance = 350},
	{name = "oriental shoes", chance = 350},
	{name = "skullcracker armor", chance = 280},
	{name = "spellbook of mind control", chance = 280},
	{id = 2124, chance = 270}, -- crystal ring
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -110, maxDamage = -400},
	{name ="combat", interval = 1300, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -185, maxDamage = -210, length = 8, spread = 3, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 1000, chance = 9, type = COMBAT_ICEDAMAGE, minDamage = -120, maxDamage = -200, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true}
}

monster.defenses = {
	defense = 30,
	armor = 56,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 90, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
