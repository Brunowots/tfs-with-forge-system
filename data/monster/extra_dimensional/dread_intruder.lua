local mType = Game.createMonsterType("Dread Intruder")
local monster = {}

monster.description = "a dread intruder"
monster.experience = 2400
monster.outfit = {
	lookType = 882,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1260
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

monster.health = 4500
monster.maxHealth = 4500
monster.race = "venom"
monster.corpse = 26134
monster.speed = 330
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
	{text = "Whirr!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 200},
	{name = "platinum coin", chance = 100000, maxCount = 8},
	{name = "energy bar", chance = 20150},
	{name = "energy drink", chance = 21110},
	{name = "frozen lightning", chance = 15970},
	{name = "instable proto matter", chance = 1519},
	{name = "sparkion tail", chance = 10050},
	{name = "ultimate health potion", chance = 12520},
	{name = "great spirit potion", chance = 12840},
	{name = "great mana potion", chance = 13420},
	{name = "energy ball", chance = 12090},
	{name = "odd organ", chance = 9720},
	{name = "blue crystal splinter", chance = 8930},
	{name = "cyan crystal fragment", chance = 5740},
	{name = "violet crystal shard", chance = 4470},
	{name = "small sapphire", chance = 4790, maxCount = 2},
	{name = "small ruby", chance = 4810, maxCount = 2},
	{name = "small amethyst", chance = 4430, maxCount = 2},
	{name = "violet gem", chance = 1010},
	{name = "ring of green plasma", chance = 260},
	{id = 26185, chance = 280},
	{id = 26189, chance = 290},
	{name = "collar of green plasma", chance = 260},
	{id = 26198, chance = 240},
	{id = 26200, chance = 230}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	-- energy damage
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 20, minDamage = -400, maxDamage = -600, radius = 5, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -400, range = 4, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="dread intruder wave", interval = 2000, chance = 25, minDamage = -350, maxDamage = -550, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 80, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 90},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
