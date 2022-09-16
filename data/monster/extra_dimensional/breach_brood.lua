local mType = Game.createMonsterType("Breach Brood")
local monster = {}

monster.description = "a breach brood"
monster.experience = 1760
monster.outfit = {
	lookType = 878,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1235
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Otherworld."
	}

monster.health = 3500
monster.maxHealth = 3500
monster.race = "venom"
monster.corpse = 26048
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
	{text = "Hisss!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 100},
	{name = "platinum coin", chance = 100000, maxCount = 5},
	{name = "energy bar", chance = 18300},
	{name = "energy drink", chance = 18190},
	{name = "spark sphere", chance = 14650},
	{name = "great health potion", chance = 12360},
	{name = "great spirit potion", chance = 11910},
	{name = "great mana potion", chance = 11950},
	{name = "crystallized anger", chance = 10330},
	{name = "curious matter", chance = 10050},
	{name = "plasma pearls", chance = 10000},
	{name = "volatile proto matter", chance = 9940},
	{name = "blue crystal splinter", chance = 8070, maxCount = 2},
	{name = "cyan crystal fragment", chance = 5890},
	{name = "green crystal shard", chance = 4200},
	{name = "blue crystal shard", chance = 3930},
	{name = "blue gem", chance = 360},
	{name = "ring of green plasma", chance = 210},
	{id = 26185, chance = 350},
	{id = 26189, chance = 230},
	{name = "collar of green plasma", chance = 270},
	{id = 26198, chance = 270},
	{id = 26200, chance = 250},
	{name = "lightning legs", chance = 70}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -400, range = 6, shootEffect = CONST_ANI_FLASHARROW, effect = CONST_ME_STUN, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -350, radius = 5, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="breach brood reducer", interval = 2000, chance = 20, target = false}
}

monster.defenses = {
	defense = 52,
	armor = 52
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 80},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
