local mType = Game.createMonsterType("Werelioness")
local monster = {}

monster.description = "a werelioness"
monster.experience = 2500
monster.outfit = {
	lookType = 1301,
	lookHead = 58,
	lookBody = 2,
	lookLegs = 94,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1966
monster.Bestiary = {
	class = "Lycanthrope",
	race = BESTY_RACE_LYCANTHROPE,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "This monster we can find in Hyaena Lairs."
	}
	
monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 39020
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
	canWalkOnEnergy = true,
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
	{name = "Platinum Coin", chance = 8737, maxCount = 8},
	{name = "Gold Coin", chance = 8828, maxCount = 99},
	{name = "Small Enchanted Sapphire", chance = 8670, maxCount = 6},
	{name = "Black Pearl", chance = 7310},
	{name = "Ham", chance = 70640},
	{name = "Meat", chance = 16620},
	{name = "Soul Orb", chance = 17270},
	{name = "White Pearl", chance = 3120},
	{name = "Ankh", chance = 8330},
	{name = "Crystal Sword", chance = 9430},
	{name = "Serpent Sword", chance = 5360},
	{name = "Rapier", chance = 11570},
	{name = "Lion's Mane", chance = 13670},
	{name = "Lightning Headband", chance = 2060},
	{name = "Steel Helmet", chance = 3200},
	{name = "Doublet", chance = 1500},
	{name = "Ivory Carving", chance = 3050},
	{name = "Magma Legs", chance = 910},
	{name = "Crown Helmet", chance = 910},
	{name = "White Silk Flower", chance = 290},
	{name = "Lion Figurine", chance = 370}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -350, range = 3, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -170, maxDamage = -350, range = 3, shootEffect = CONST_ANI_HOLY, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -350, length = 4, spread = 1, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
