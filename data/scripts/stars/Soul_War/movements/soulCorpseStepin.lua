local outfitCondition = Condition(CONDITION_OUTFIT)
outfitCondition:setTicks(15000)
local outfit = {
	lookType = 286,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

outfitCondition:setOutfit(outfit)

local boostDamage = Condition(CONDITION_ATTRIBUTES)
boostDamage:setParameter(CONDITION_PARAM_TICKS, 15000)
boostDamage:setParameter(CONDITION_PARAM_BUFF_DAMAGERECEIVED, 150)

local soulCorpseStepin = MoveEvent()
function soulCorpseStepin.onStepIn(creature, item, position, fromPosition)
	-- local spite = Creature("Goshnar's Spite")
	-- if not spite then
		-- return true
	-- end
	
	if not creature:isPlayer() then
		return true
	end
	
	creature:addCondition(outfitCondition)
	creature:addCondition(boostDamage)
	
	return true
end

soulCorpseStepin:type("stepin")
soulCorpseStepin:aid(60026)
soulCorpseStepin:register()