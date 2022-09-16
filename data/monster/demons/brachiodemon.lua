local mType = Game.createMonsterType("Brachiodemon")
local monster = {}

monster.description = "a brachiodemon"
monster.experience = 14080
monster.outfit = {
	lookType = 1299,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1930
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 2500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Claustrophobic Inferno."
	}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 38652
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
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
	{text = "Feel the heat!", yell = false},
	{text = "Hand over your life.", yell = false},
	{text = "I can give you a hand... or two.", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 5920},
	{name = "ultimate health potion", chance = 29380, maxCount = 4},
	{id = 1971, chance = 5180}, -- Hand
	{name = "skull staff", chance = 890},
	{name = "epee", chance = 3480},
	{name = "crystal mace", chance = 1790},
	{name = "noble axe", chance = 1610},
	{name = "spellbook of mind control", chance = 1250},
	{id = 38772, chance = 3840}, -- Head
	{name = "fire axe", chance = 630},
	{name = "royal helmet", chance = 890},
	{name = "mastermind shield", chance = 450},
	{name = "assassin dagger", chance = 360},
	{name = "butcher's axe", chance = 450},
	{name = "jade hammer", chance = 890},
	{name = "crystalline sword", chance = 450},
	{name = "alloy legs", chance = 180},
	{name = "metal bat", chance = 800},
	{id = 26187, chance = 980}, -- Ring of green plasma
	{id = 38860, chance = 630}, -- Diabolic skull
	{id = 38944, chance = 1} -- Bag you desire
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -800},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1150, maxDamage = -1460, range = 7, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_FIREDAMAGE, minDamage = -1100, maxDamage = -1550, radius = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -900, maxDamage = -1280, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 24, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -1100, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -950, maxDamage = -1250, length = 8, effect = CONST_ME_EXPLOSIONHIT, target = false},
}

monster.defenses = {
	defense = 90,
	armor = 105
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = -35},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)