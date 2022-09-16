local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)
combat:setParameter(COMBAT_PARAM_CREATEITEM, ITEM_POISONFIELD_PVP)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

local config = {
	area = { -- Scarlet
		from = Position(33386, 32639, 6),
		to = Position(33405, 32659, 6)
	},
}

function onCastSpell(creature, var, isHotkey)
	local player = creature:getPlayer()

	if player and isInRange(player:getPosition(), config.area.from, config.area.to) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Sorry, you cannot use rune fields here.')
		return false
	end

	return combat:execute(creature, var)
end
