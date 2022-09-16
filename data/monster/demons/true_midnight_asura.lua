local mType = Game.createMonsterType("True Midnight Asura")
local monster = {}

monster.description = "a true midnight asura"
monster.experience = 7313
monster.outfit = {
	lookType = 1068,
	lookHead = 72,
	lookBody = 95,
	lookLegs = 72,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1621
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

monster.health = 9000
monster.maxHealth = 9000
monster.race = "blood"
monster.corpse = 33360
monster.speed = 340
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
}

monster.loot = {
	{name = "Platinum Coin", chance = 100000, maxCount = 8},
	-- {name = "Flask of Demonic Blood", chance = 20400},
	{name = "Golden Lotus Brooch", chance = 21560},
	{name = "Demonic Essence", chance = 14830},
	{name = "Peacock Feather Fan", chance = 21820},
	{name = "Soul Orb", chance = 21040},
	{name = "Small Emerald", chance = 7750, maxCount = 5},
	{name = "Great Health Potion", chance = 20020, maxCount = 2},
	{name = "Small Sapphire", chance = 7760, maxCount = 5},
	{name = "Small Ruby", chance = 7750, maxCount = 5},
	{name = "Black Pearl", chance = 9750, maxCount = 2},
	{name = "Small Enchanted Amethyst", chance = 14420, maxCount = 3},
	{name = "Assassin Star", chance = 9230, maxCount = 5},
	{name = "Silver Brooch", chance = 10160},
	{name = "White Pearl", chance = 8270, maxCount = 2},
	{name = "Small Topaz", chance = 8330, maxCount = 2},
	{name = "Small Diamond", chance = 15670, maxCount = 3},
	{name = "Royal Star", chance = 4210, maxCount = 3},
	{name = "Crystal Coin", chance = 5860},
	{name = "Necrotic Rod", chance = 3690},
	{name = "Yellow Gem", chance = 780},
	{name = "Tribal Mask", chance = 3420},
	{name = "Gold Ingot", chance = 1880},
	{name = "Silver Amulet", chance = 2060},
	{name = "Underworld Rod", chance = 1100},
	{name = "Oriental Shoes", chance = 2990},
	{name = "Blue Gem", chance = 2110},
	{name = "Assassin Dagger", chance = 1110},
	{name = "Oriental Shoes", chance = 1970},
	{name = "Skullcracker Armor", chance = 990},
	{name = "Blue Robe", chance = 900},
	{name = "Spellbook of Mind Control", chance = 930}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -450},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -280, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -500, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -800, length = 8, spread = 3, effect = CONST_ME_BLACKSMOKE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000},
	{name ="drunk", interval = 2000, chance = 10, range = 3, radius = 4, effect = CONST_ME_STUN, target = true, duration = 4000}
}

monster.defenses = {
	defense = 55,
	armor = 75,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="invisible", interval = 2000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
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
