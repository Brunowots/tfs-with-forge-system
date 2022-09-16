-- hatefulSoulOnDeath

local hatefulSoulOnDeath = CreatureEvent("hatefulSoulOnDeath")
function hatefulSoulOnDeath.onDeath(creature)
	local pos = creature:getPosition()
	Game.createItem(38628, 1, pos)
	return true
end

hatefulSoulOnDeath:register()
