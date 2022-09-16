local mType = Game.createMonsterType("Leiden")
local monster = {}

monster.description = "Leiden"
monster.experience = 0
monster.outfit = {
	lookType = 988,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 380000
monster.maxHealth = 380000
monster.race = "blood"
monster.corpse = 0
monster.speed = 240
monster.manaCost = 390
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.events = {
	"LeidenHeal",
	"LeidenDead"
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "Barkless Fanatic", chance = 20, interval = 2000},
	{name = "Barkless Fanatic", chance = 30, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Bring me the pain! Make me suffer!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -900}
}

monster.defenses = {
	defense = 50,
	armor = 35
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)

local leidenHeal = CreatureEvent("LeidenHeal")
function leidenHeal.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if creature:getName():lower() == "leiden" then
		if attacker and attacker:isPlayer() then
			primaryType = COMBAT_HEALING
			secondaryType = primaryType
			if primaryDamage < 0 then
				primaryDamage = primaryDamage * -1
			end
			secondaryDamage = primaryDamage
			creature:addHealth(primaryDamage < 0 and -primaryDamage or primaryDamage)
			return primaryDamage, primaryType, secondaryDamage, secondaryType
		end
	end
end

leidenHeal:register()

local leidenDeath = CreatureEvent("LeidenDead")
function leidenDeath.onDeath(creature, corpse, deathList)
	local pool = Tile(creature:getPosition()):getItemById(2016)
	if pool then
		pool:remove()
	end
	Game.createMonster("Ravennous Hunger", creature:getPosition(), true, true)
end

leidenDeath:register()