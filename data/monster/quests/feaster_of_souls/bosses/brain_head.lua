local mType = Game.createMonsterType("Brain Head")
local monster = {}

monster.description = "Brain Head"
monster.experience = 50000
monster.outfit = {
	lookTypeEx = 37253,
}

monster.health = 230000
monster.maxHealth = 230000
monster.race = "undead"
monster.corpse = 37107
monster.speed = 0
monster.manaCost = 0
monster.maxSummons = 4
monster.summons = {
	-- {name = "Cerebellum", chance = 100, interval = 2000},
	{name = "Bad Thought", chance = 100, interval = 2000}
}

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
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
}

monster.loot = {
	{name = "white gem", chance = 45833, maxCount = 2},
	{name = "supreme health potion", chance = 41667, maxCount = 6},
	{name = "diamond", chance = 33333},
	{name = "berserk potion", chance = 12500, maxCount = 10},
	{name = "bullseye potion", chance = 12500, maxCount = 10},
	{name = "death toll", chance = 12500},
	{name = "mastermind potion", chance = 12500, maxCount = 10},
	{name = "moonstone", chance = 12500},
	{name = "ultimate mana potion", chance = 12500, maxCount = 6},
	{name = "ultimate spirit potion", chance = 12500, maxCount = 6},
	{name = "cursed bone", chance = 8333},
	{name = "angel figurine", chance = 4167},
	{name = "giant amethyst", chance = 4167},
	{name = "giant topaz", chance = 4167},
	{name = "brain head's giant neuron", chance = 3000},
	{name = "brain head's left hemisphere", chance = 3000},
	{name = "brain head's right hemisphere", chance = 3000},
	{name = "spooky hood", chance = 200},
	{id = 37456, chance = 1000}, -- ring od soul
	{name = "ghost claw", chance = 300},
	{name = "phantasmal axe", chance = 150},
	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
	{name ="combat", interval = 1500, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -500, radius = 3, shootEffect = CONST_ANI_ENVENOMEDARROW, target = true},
	{name ="combat", interval = 1500, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -650, length = 4, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1500, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -650, radius = 4, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 1500, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -650, radius = 4, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 20,
	armor = 30
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType:register(monster)
