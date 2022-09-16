local mType = Game.createMonsterType("Werelion")
local monster = {}

monster.description = "a werelion"
monster.experience = 2400
monster.outfit = {
	lookType = 1301,
	lookHead = 58,
	lookBody = 2,
	lookLegs = 94,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 1965
monster.Bestiary = {
	class = "Lycanthrope",
	race = BESTY_RACE_LYCANTHROPE,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "This monster you can find in Hyaena Lairs."
	}
	
monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 38660
monster.speed = 210
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
	runHealth = 5,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 1,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "Platinum Coin", chance = 88200, maxCount = 5},
	{name = "Great Spirit Potion", chance = 55600, maxCount = 2},
	{name = "Dark Armor", chance = 22090},
	{name = "Small Enchanted Ruby", chance = 4960, maxCount = 2},
	{name = "Meat", chance = 10740},
	{name = "Crystal Sword", chance = 5740},
	{name = "Lion's Mane", chance = 14240},
	{name = "Silver Brooch", chance = 5610},
	{name = "Small Diamond", chance = 4460, maxCount = 2},
	{name = "War Hammer", chance = 3570},
	{name = "Doublet", chance = 2420},
	{name = "Dark Shield", chance = 2790},
	{name = "Titan Axe", chance = 1230},
	{name = "Spiked Squelcher", chance = 1560},
	{name = "Glorious Axe", chance = 2110},
	{name = "Spirit Cloak", chance = 1900},
	{name = "Onyx Chip", chance = 1710},
	{name = "Coral Brooch", chance = 1250},
	{name = "Ivory Carving", chance = 3250},
	{name = "Rainbow Quartz", chance = 2170},
	{name = "Noble Axe", chance = 880},
	{name = "White Silk Flower", chance = 500},
	{name = "Lion Figurine", chance = 380}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
	{name ="werelion wave", interval = 2000, chance = 20, minDamage = -350, maxDamage = -370, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -350, maxDamage = -450, range = 3, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -230, maxDamage = -300, range = 3, shootEffect = CONST_ANI_HOLY, target = true}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 45}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
