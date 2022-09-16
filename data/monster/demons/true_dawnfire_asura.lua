local mType = Game.createMonsterType("True Dawnfire Asura")
local monster = {}

monster.description = "a true dawnfire asura"
monster.experience = 7475
monster.outfit = {
	lookType = 1068,
	lookHead = 79,
	lookBody = 94,
	lookLegs = 120,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1620
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Asura Palace."
	}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 33404
monster.speed = 360
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
	targetDistance = 1,
	runHealth = 0,
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
}

monster.loot = {
	{name = "Platinum Coin", chance = 100000, maxCount = 12},
	-- {name = "Flask of Demonic Blood", chance = 3048},
	{name = "Golden Lotus Brooch", chance = 22530},
	{name = "Demonic Essence", chance = 22260},
	{name = "Peacock Feather Fan", chance = 21530},
	{name = "Soul Orb", chance = 20090},
	{name = "Small Emerald", chance = 18060, maxCount = 5},
	{name = "Great Mana Potion", chance = 16860, maxCount = 2},
	{name = "Small Ruby", chance = 11800, maxCount = 5},
	{name = "Small Enchanted Ruby", chance = 9390, maxCount = 5},
	{name = "Small Topaz", chance = 8740, maxCount = 2},
	{name = "Small Diamond", chance = 7500, maxCount = 2},
	{name = "Small Amethyst", chance = 6570, maxCount = 2},
	{name = "Royal Star", chance = 3830, maxCount = 3},
	{name = "Crystal Coin", chance = 4540},
	{name = "Ruby Necklace", chance = 4330},
	{name = "Red Gem", chance = 3650},
	{name = "Mystic Turban", chance = 3340},
	{name = "Red Piece of Cloth", chance = 3030},
	{name = "Oriental Shoes", chance = 2990},
	{name = "Mysterious Fetish", chance = 2860},
	{name = "Blue Gem", chance = 2610},
	{name = "Focus Cape", chance = 2200},
	{name = "Magma Coat", chance = 2100},
	{name = "Wand of Inferno", chance = 1380},
	{name = "Spellbook of Mind Control", chance = 1170}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100,  minDamage = -400, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -300, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -300, length = 4, spread = 2, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -750, length = 1, spread = 0, effect = CONST_ME_HITBYFIRE, target = false},	
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -550, maxDamage = -750, radius = 4, effect = CONST_ME_BLACKSMOKE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
	defense = 55,
	armor = 77,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
