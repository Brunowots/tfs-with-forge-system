local mType = Game.createMonsterType("Katex Blood Tongue")
local monster = {}

monster.description = "a katex blood tongue"
monster.experience = 5000
monster.outfit = {
	lookType = 1300,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6300
monster.maxHealth = 6300
monster.race = "blood"
monster.corpse = 38656
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
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
	runHealth = 30,
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
	interval = 0,
	chance = 0
}

monster.loot = {
	{name = "platinum coin", chance = 100000, maxCount = 3},
    {name = "great health potion", chance = 49970, maxCount = 3},
    {name = "meat", chance = 19070},
    {name = "axe", chance = 16810},
    {name = "knife", chance = 16620},
    {name = "werehyaena nose", chance = 12670},
    {name = "halberd", chance = 11480},
    {name = "red crystal fragment", chance = 9540},
    {name = "small enchanted amethyst", chance = 5760, maxCount = 5},
    {name = "life preserver", chance = 5670},
    {name = "red gem", chance = 5590},
	{name = "Demonrage Sword", chance = 3600},
	{name = "jade hammer", chance = 3600},
    {name = "yellow gem", chance = 5420},
    {name = "assassin dagger", chance = 4700},
	{name = "demon shield", chance = 2700},
    {name = "green crystal fragment", chance = 4580},
    {name = "Skull Helmet", chance = 4280},
	{name = "magic plate armor", chance = 1500},
    {name = "werehyaena talisman", chance = 750},
    {name = "werehyaena trophy", chance = 190},
	{name = "Raw Watermelon Tourmaline", chance = 1000},	
	{name = "Red Silk Flower", chance = 500}
}

monster.attacks = {
	{name = "melee", type = COMBAT_PHYSICALDAMAGE, interval = 2*1000, minDamage = -200, maxDamage = -600},
    {name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2*1000, chance = 17, minDamage = -175, maxDamage = -855, radius = 3, effect = CONST_ME_HITBYPOISON},
    {name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2*1000, chance = 15, minDamage = -330, maxDamage = -870, target = true, range = 5, radius = 1, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_MORTAREA},
    {name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2*1000, chance = 13, minDamage = -225, maxDamage = -875, length = 3, spread = 0, effect = CONST_ME_MORTAREA}
}

monster.defenses = {
	{name = "speed", chance = 15, interval = 2*1000, speed = 200, duration = 5*1000, effect = CONST_ME_MAGIC_BLUE},
	defense = 0,
	armor = 38
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType:register(monster)
