local mType = Game.createMonsterType("Sparkion")
local monster = {}

monster.description = "a sparkion"
monster.experience = 1520
monster.outfit = {
	lookType = 877,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1234
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

monster.health = 2700
monster.maxHealth = 2700
monster.race = "venom"
monster.corpse = 26044
monster.speed = 302
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 15
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
	{text = "Zzing!", yell = false},
	{text = "Frizzle!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 100},
	{name = "platinum coin", chance = 90080, maxCount = 3},
	{name = "energy bar", chance = 15010},
	{name = "sparkion claw", chance = 14960},
	{name = "energy drink", chance = 14480},
	{name = "sparkion stings", chance = 13890},
	{name = "sparkion legs", chance = 11260},
	{name = "sparkion tail", chance = 10050},
	{name = "great health potion", chance = 9890, maxCount = 2},
	{name = "great spirit potion", chance = 9870, maxCount = 2},
	{name = "great mana potion", chance = 9670, maxCount = 2},
	{name = "blue crystal splinter", chance = 8450},
	{name = "cyan crystal fragment", chance = 5370},
	{name = "small sapphire", chance = 4860, maxCount = 2},
	{name = "blue gem", chance = 970},
	{name = "blue crystal shard", chance = 4680},	
	{name = "wand of cosmic energy", chance = 720},
	{name = "ring of green plasma", chance = 380},
	{id = 26185, chance = 320},
	{id = 26189, chance = 320},
	{name = "collar of green plasma", chance = 250},
	{id = 26198, chance = 200},
	{id = 26200, chance = 170}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -400, length = 6, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -400, range = 5, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGYHIT, target = true},
	-- energy damage
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 20, minDamage = -300, maxDamage = -600, range = 6, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_PURPLEENERGY, target = true}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="speed", interval = 2000, chance = 10, speedChange = 400, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 50, maxDamage = 180, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 90},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 70},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
