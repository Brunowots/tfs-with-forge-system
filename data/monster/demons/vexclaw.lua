local mType = Game.createMonsterType("Vexclaw")
local monster = {}

monster.description = "a vexclaw"
monster.experience = 10248
monster.outfit = {
	lookType = 854,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1197
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Dungeons of The Ruthless Seven."
	}

monster.health = 9500
monster.maxHealth = 9500
monster.race = "fire"
monster.corpse = 25432
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	{text = "Weakness must be culled!", yell = false},
	{text = "Power is miiiiine!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 87340, maxCount = 197},
	{name = "platinum coin", chance = 87220, maxCount = 9},
	{name = "great spirit potion", chance = 16040, maxCount = 5},
	{name = "great mana potion", chance = 16040, maxCount = 5},
	{name = "vexclaw talon", chance = 13300},
	{name = "demonic essence", chance = 12840},
	{name = "ultimate health potion", chance = 12930, maxCount = 5},
	{name = "fire mushroom", chance = 12290, maxCount = 6},
	{name = "small amethyst", chance = 6550, maxCount = 5},
	{name = "small topaz", chance = 6190, maxCount = 5},
	{name = "small emerald", chance = 6840, maxCount = 5},
	{name = "small ruby", chance = 6700, maxCount = 5},
	{name = "yellow gem", chance = 3190},
	{name = "devil helmet", chance = 860},
	{name = "red gem", chance = 3260},
	{name = "ice rapier", chance = 3110},
	{name = "fire axe", chance = 2610},
	{name = "might ring", chance = 1690},
	{name = "giant sword", chance = 1360},
	{name = "demon shield", chance = 580},
	{name = "energy ring", chance = 1810},
	{name = "rift lance", chance = 460},
	{name = "rift shield", chance = 330},
	{name = "mastermind shield", chance = 260},
	{name = "ring of healing", chance = 1060},
	{name = "platinum amulet", chance = 480},
	{name = "golden legs", chance = 320},
	{name = "rift crossbow", chance = 300},
	{name = "rift bow", chance = 130},
	{name = "magic plate armor", chance = 90},
	{name = "demonrage sword", chance = 80}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 75, attack = 150},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -220, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -950, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="choking fear drown", interval = 2000, chance = 20, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -700, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -500, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -590, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="energy strike", interval = 2000, chance = 10, minDamage = -210, maxDamage = -300, range = 1, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -300, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
