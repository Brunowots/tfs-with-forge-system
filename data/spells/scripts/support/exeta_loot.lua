function onCastSpell(creature, variant)
	local exetaLootArea = {
		{1,1,1},
		{1,1,1},
		{1,1,1},
	}
	creature:lootAllArea(exetaLootArea)
	return true
end