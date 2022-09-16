local mType = Game.createMonsterType("weak warlock")
local monster = {}

monster.description = "Weak Warlock"
monster.experience = 6000
monster.outfit = {
	lookType = 968,
	lookHead = 19,
	lookBody = 71,
	lookLegs = 128,
	lookFeet = 128,
	lookAddons = 0,
	lookMount = 0
}
			     
monster.health = 750000
monster.maxHealth = 750000
monster.race = "fire"
monster.corpse = 20527
monster.speed = 600
monster.manaCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 2000,
	chance = 100
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.summons = {

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
	canPushCreatures = true,
	staticAttackChance = 70,
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
	chance = 50,
	{text = "Golden Helmet ??", yell = false},	
	{text = "Já donatou HOJE?", yell = false},
	{text = "Pede o PIX do ADM!", yell = false}
}

monster.loot = {	

	
}

-- ADICIONEI LIFEDRAIN, MANA DRAIN E REDU??O DE ML. 3 ULTIMAS LINHAS
monster.attacks = {
	{name="melee" ,interval = 2000 ,minDamage = -800, maxDamage= -2500},
	{name ="speed", interval = 2000, chance = 90, speedChange = -850, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = false, duration = 30000},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -1000, radius = 3, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -1000, range = 20, shootEffect = CONST_ANI_ICE, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -1000, length = 8, spread = 0, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -1000, range = 20, shootEffect = CONST_ANI_FIRE, target = false},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, length = 8, spread = 3, minDamage = -800, maxDamage = -1700, effect = CONST_ME_SMALLCLOUDS},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, length = 8, spread = 3, minDamage = -800, maxDamage = -1700, effect = CONST_ME_SMALLCLOUDS},
	{name ="silencer skill reducer", interval = 2000, chance = 10, range = 3, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -40, maxDamage = -90, radius = 4, shootEffect = CONST_ANI_ONYXARROW, effect = CONST_ME_MAGIC_RED, target = true},	
}


-- ADICIONEI CHANCE CE CURA. 2 ULTIMAS LINHAS
monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 1000, chance = 9, type = COMBAT_HEALING, minDamage = 1500, maxDamage = 2500, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 1000, chance = 17, type = COMBAT_HEALING, minDamage = 600, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false},
}

monster.events = {
	"warlockChanges"
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
