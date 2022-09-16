local mType = Game.createMonsterType("The Source Of Corruption")
local monster = {}

monster.description = "The Source Of Corruption"
monster.experience = 50000
monster.outfit = {
	lookType = 979,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 500000
monster.maxHealth = 500000
monster.race = "undead"
monster.corpse = 26223
monster.speed = 120
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 95,
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
}

monster.loot = {
	{name = "gold coin", chance = 67000, maxCount = 100},
	{name = "platinum coin", chance = 67000, maxCount = 30},
	{name = "crystallized anger", chance = 21000, maxCount = 10},
	{name = "gemmed figurine", chance = 33230, maxCount = 3},
	{name = "gold ingot", chance = 12000},
	{name = "gold token", chance = 68299, maxCount = 4},
	{name = "lightning legs", chance = 18000},
	{name = "ancient stone", chance = 15000},
	{name = "wood cape", chance = 9000},
	{name = "gold token", chance = 1532},
	{id = 5906, chance = 100000},
	{name = "magic sulphur", chance = 19000, maxCount = 3},
	{name = "onyx chip", chance = 31230},
	{name = "red gem", chance = 12000},
	{name = "oriental shoes", chance = 11000},
	{name = "torn shirt", chance = 42000},
	{name = "fig leaf", chance = 32000},
	{name = "luminous orb", chance = 35000},
	{name = "heavy mace", chance = 4500},
	{name = "magic plate armor", chance = 1600},
	{name = "silver token", chance = 21000, maxCount = 3},
	{name = "small amethyst", chance = 28230, maxCount = 20},
	{name = "piece of hell steel", chance = 28230, maxCount = 5},
	{name = "small emerald", chance = 28230, maxCount = 20},
	{name = "small topaz", chance = 28230, maxCount = 20},
	{name = "solid rage", chance = 28230, maxCount = 11},
	{name = "small amethyst", chance = 28230, maxCount = 20},
	{name = "enchanted chicken wing", chance = 2000},
	{name = "crude umbral slayer", chance = 1200},
	{name = "sapphire hammer", chance = 4000},
	{name = "muck rod", chance = 10000},
	{name = "mysterious remains", chance = 100000},
	{name = "Rift Bow", chance = 1200},
	{name = "silver token", chance = 2500},
	{name = "Silkweaver Bow", chance = 500},
	{name = "wand of everblazing", chance = 1200},
	{name = "Rift Bow", chance = 1200},
	{name = "Demonwing axe", chance = 500},
	{name = "heart of the mountain", chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1500},
	{name ="source of corruption wave", interval = 2000, chance = 15, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 15},
	{type = COMBAT_MANADRAIN, percent = 15},
	{type = COMBAT_DROWNDAMAGE, percent = 15},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
