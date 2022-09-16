local mType = Game.createMonsterType("Dawnfire Asura")
local monster = {}

monster.description = "a dawnfire asura"
monster.experience = 4100
monster.outfit = {
	lookType = 150,
	lookHead = 114,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 79,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1134
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

monster.health = 2900
monster.maxHealth = 2900
monster.race = "blood"
monster.corpse = 24643
monster.speed = 280
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
	{text = "Encounter the flames of destiny!", yell = false},
	{text = "Fire and destruction!", yell = true},
	{text = "May the flames consume you!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 69610, maxCount = 100},
	{name = "platinum coin", chance = 84190, maxCount = 9},
	-- {name = "flask of demonic blood", chance = 20830},
	{name = "soul orb", chance = 14160},
	{name = "golden lotus brooch", chance = 12260},
	{name = "peacock feather fan", chance = 11210},
	{name = "demonic essence", chance = 10400},
	{name = "great mana potion", chance = 9110, maxCount = 2},
	{name = "small ruby", chance = 5980, maxCount = 3},
	{name = "small emerald", chance = 3340, maxCount = 2},
	{name = "small amethyst", chance = 3310, maxCount = 2},
	{name = "small topaz", chance = 2830, maxCount = 2},
	{name = "small diamond", chance = 2770, maxCount = 2},
	{name = "red piece of cloth", chance = 2550},
	{name = "mystic turban", chance = 2310},
	{name = "wand of inferno", chance = 1170},
	{name = "mysterious fetish", chance = 1020},
	{name = "focus cape", chance = 750},
	{name = "ruby necklace", chance = 780},
	{name = "magma coat", chance = 420},
	{name = "blue gem", chance = 300},
	{name = "red gem", chance = 930},
	{name = "oriental shoes", chance = 180},
	{name = "spellbook of mind control", chance = 280},
	{id = 6300, chance = 270}, -- death ring
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -250, range = 7, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50, maxDamage = -200, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="energy strike", interval = 2000, chance = 10, minDamage = -10, maxDamage = -100, range = 1, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -100, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
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
