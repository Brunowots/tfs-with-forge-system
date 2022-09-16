local mType = Game.createMonsterType("Midnight Asura")
local monster = {}

monster.description = "a midnight asura"
monster.experience = 4100
monster.outfit = {
	lookType = 150,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 90,
	lookFeet = 90,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1135
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

monster.health = 3100
monster.maxHealth = 3100
monster.race = "blood"
monster.corpse = 24644
monster.speed = 240
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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
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
	{text = "Death and Darkness!", yell = false},
	{text = "Embrace the night!", yell = false},
	{text = "May night fall upon you!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 70580, maxCount = 100},
	{name = "platinum coin", chance = 80450, maxCount = 6},
	-- {name = "flask of demonic blood", chance = 20830},
	{name = "soul orb", chance = 13810},
	{name = "golden lotus brooch", chance = 12790},
	{name = "peacock feather fan", chance = 10160},
	{name = "demonic essence", chance = 10710},
	{name = "great health potion", chance = 8080, maxCount = 2},
	{name = "small diamond", chance = 6220, maxCount = 3},
	{name = "assassin star", chance = 6030, maxCount = 5},
	{name = "white pearl", chance = 5930, maxCount = 2},
	{name = "small sapphire", chance = 5260, maxCount = 3},
	{name = "silver brooch", chance = 3940},
	{name = "black pearl", chance = 3750, maxCount = 2},
	{name = "small ruby", chance = 3690, maxCount = 2},
	{name = "small emerald", chance = 3080, maxCount = 2},
	{name = "small topaz", chance = 2790, maxCount = 2},
	{name = "necrotic rod", chance = 2500},
	{name = "tribal mask", chance = 1990},
	{name = "yellow gem", chance = 1060},
	{name = "silver amulet", chance = 960},
	{name = "underworld rod", chance = 610},
	{id = 2124, chance = 480}, -- crystal ring
	{name = "blue robe", chance = 420},
	{name = "oriental shoes", chance = 380},
	{name = "blue gem", chance = 350},
	{name = "assassin dagger", chance = 220},
	{name = "gold ingot", chance = 190},
	{name = "skullcracker armor", chance = 160},
	{name = "spellbook of mind control", chance = 130}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -110, range = 7, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -200, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="energy strike", interval = 2000, chance = 10, minDamage = -10, maxDamage = -100, range = 1, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000},
	{name ="drunk", interval = 2000, chance = 15, range = 2, target = true, duration = 5000}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
