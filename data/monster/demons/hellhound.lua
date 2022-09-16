local mType = Game.createMonsterType("Hellhound")
local monster = {}

monster.description = "a hellhound"
monster.experience = 5440
monster.outfit = {
	lookType = 240,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 294
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Infernatil's Throneroom The Inquisition Quest Area, Hellgorge, \z
		Roshamuul Prison, Chyllfroest, Oramond Dungeon, The Extension Site and under the Asura Palace."
	}

monster.health = 7500
monster.maxHealth = 7500
monster.race = "blood"
monster.corpse = 6332
monster.speed = 360
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
	{text = "GROOOOWL!", yell = false}
}

monster.loot = {
	{name = "Platinum Coin", chance = 100000, maxCount = 7},
	{name = "Assassin Star", chance = 24850, maxCount = 10},
	{name = "Great Mana Potion", chance = 29030, maxCount = 3},
	{name = "Demonic Essence", chance = 21750},
	{name = "Ultimate Health Potion", chance = 15400},
	{name = "Blazing Bone", chance = 13290},
	{name = "Small Emerald", chance = 10890, maxCount = 3},
	{name = "Hardened Bone", chance = 10860, maxCount = 5},
	{name = "Hellhound Slobber", chance = 20530},
	{name = "Great Spirit Potion", chance = 20050},
	-- {name = "Flask of Demonic Blood", chance = 19830},
	{name = "Soul Orb", chance = 19720},
	{name = "Fiery Heart", chance = 10010},
	{name = "Wand of Inferno", chance = 8350},
	{name = "Knight Axe", chance = 7390},
	{name = "Fire Sword", chance = 6540},
	{name = "Yellow Piece of Cloth", chance = 5830},
	{name = "Green Piece of Cloth", chance = 5240},
	{name = "Yellow Gem", chance = 4540},
	{name = "Red Gem", chance = 4510},
	{name = "Red Piece of Cloth", chance = 3100},
	{name = "Gold Ingot", chance = 2950},
	{name = "Magma Amulet", chance = 2580},
	{name = "Amber Staff", chance = 1990},
	{name = "Magma Legs", chance = 1440},
	{name = "Magma Boots", chance = 1290},
	{id = 2231, chance = 1070},
	{name = "Small Ruby", chance = 9560, maxCount = 3},
	{name = "Black Pearl", chance = 9450, maxCount = 4},
	{name = "Magma Coat", chance = 1000},
	{name = "Green Gem", chance = 960},
	{name = "Magma Monocle", chance = 960},
	{name = "Onyx Flail", chance = 890},
	{name = "Ruthless Axe", chance = 810},
	{name = "Explorer Brooch", chance = 260},
	{name = "Giant Sword", chance = 850}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -520, condition = {type = CONDITION_POISON, totalDamage = 800, interval = 4000}},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -395, maxDamage = -498, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -660, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -976, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -403, radius = 1, effect = CONST_ME_HITBYFIRE, target = true},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -549, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 220, maxDamage = 425, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
