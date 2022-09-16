local mType = Game.createMonsterType("True Frost Flower Asura")
local monster = {}

monster.description = "a true frost flower asura"
monster.experience = 7069
monster.outfit = {
	lookType = 1068,
	lookHead = 105,
	lookBody = 0,
	lookLegs = 105,
	lookFeet = 8,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1622
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Asura Palace's secret basement."
	}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 33408
monster.speed = 300
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
	{name = "Platinum Coin", chance = 100000, maxCount = 8},
	-- {name = "Flask of Demonic Blood", chance = 20180},
	{name = "Golden Lotus Brooch", chance = 23280},
	{name = "Demonic Essence", chance = 15410},
	{name = "Peacock Feather Fan", chance = 20730},
	{name = "Soul Orb", chance = 17960},
	{name = "Small Emerald", chance = 16300, maxCount = 5},
	{name = "Great Health Potion", chance = 20840, maxCount = 2},
	{name = "Small Ruby", chance = 7760, maxCount = 5},
	{name = "Black Pearl", chance = 10420, maxCount = 2},
	{name = "Small Enchanted Sapphire", chance = 11750, maxCount = 3},
	{name = "Assassin Star", chance = 10200, maxCount = 5},
	{name = "Silver Brooch", chance = 8980},
	{name = "White Pearl", chance = 8870, maxCount = 2},
	{name = "Small Topaz", chance = 8540, maxCount = 2},
	{name = "Small Diamond", chance = 11860, maxCount = 3},
	{name = "Royal Star", chance = 4210, maxCount = 3},
	{name = "Crystal Coin", chance = 7100},
	{name = "Gold Ingot", chance = 3550},
	{name = "Yellow Gem", chance = 4320},
	{name = "Tribal Mask", chance = 3440},
	{name = "Northwind Rod", chance = 3100},
	{name = "Mystic Turban", chance = 3340},
	{name = "Silver Amulet", chance = 2110},
	{name = "Red Piece of Cloth", chance = 3030},
	{name = "Oriental Shoes", chance = 2990},
	{name = "Mysterious Fetish", chance = 2860},
	{name = "Blue Gem", chance = 2110},
	{name = "Hailstorm Rod", chance = 1220},
	{name = "Assassin Dagger", chance = 1110},
	{name = "Oriental Shoes", chance = 890},
	{name = "Skullcracker Armor", chance = 1440},
	{name = "Blue Robe", chance = 1660},
	{name = "Spellbook of Mind Control", chance = 1770}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100,  minDamage = -200, maxDamage = -500},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -250, range = 7, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -400, length = 8, spread = 3, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -300, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},	
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -650, maxDamage = -800, range = 7, shootEffect = CONST_ANI_ICE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
	defense = 55,
	armor = 72,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
