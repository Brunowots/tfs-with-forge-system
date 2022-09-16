local mType = Game.createMonsterType("Reality Reaver")
local monster = {}

monster.description = "a reality reaver"
monster.experience = 2480
monster.outfit = {
	lookType = 879,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1224
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

monster.health = 3900
monster.maxHealth = 3900
monster.race = "venom"
monster.corpse = 26068
monster.speed = 340
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25
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
	{text = "Ssshhh!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 100},
	{name = "platinum coin", chance = 100000, maxCount = 6},
	{name = "energy bar", chance = 17580},
	{name = "energy drink", chance = 17850},
	{name = "energy vein", chance = 15180},
	{name = "great health potion", chance = 11050, maxCount = 2},
	{name = "great spirit potion", chance = 10930, maxCount = 2},
	{name = "great mana potion", chance = 10940, maxCount = 2},
	{name = "crystallized anger", chance = 10330},
	{name = "plasmatic lightning", chance = 14620},
	{name = "plasma pearls", chance = 7970},
	{name = "dangerous proto matter", chance = 9870},
	{name = "blue crystal splinter", chance = 8140, maxCount = 2},
	{name = "red crystal fragment", chance = 6270},
	{name = "violet crystal shard", chance = 4090},
	{name = "blue crystal shard", chance = 4080},
	{name = "red gem", chance = 2550},
	{name = "wand of starstorm", chance = 1070},
	{name = "lightning headband", chance = 490},
	{name = "focus cape", chance = 400},
	{name = "violet gem", chance = 360},
	{name = "ring of green plasma", chance = 370},
	{id = 26185, chance = 360},
	{id = 26189, chance = 290},
	{name = "collar of green plasma", chance = 270},
	{id = 26198, chance = 290},
	{id = 26200, chance = 210}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -180, maxDamage = -400, range = 5, radius = 5, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_PURPLEENERGY, target = true},
	{name ="reality reaver wave", interval = 2000, chance = 20, minDamage = -200, maxDamage = -500, target = false},
	-- energy damage
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 20, minDamage = -400, maxDamage = -800, radius = 5, effect = CONST_ME_STUN, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_POFF},
	{name ="speed", interval = 2000, chance = 10, speedChange = 380, effect = CONST_ME_HITAREA, target = false, duration = 8000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 85},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
