invoqueUglyMonsterData = {}

function isWalkable(position, pz, creature, floorchange, block, proj)
	local tile = Tile(position)
	if not tile then
		return false
	end
	return tile:isWalkable(pz, creature, floorchange, block, proj)
end

local function getNearPos(creature)
	if not creature then return false end
	local p = creature:getPosition()
	local positions = {
		Position(p.x-1, p.y-1, p.z),
		Position(p.x, p.y-1, p.z),
		Position(p.x+1, p.y-1, p.z),
		Position(p.x-1, p.y, p.z),
		Position(p.x+1, p.y, p.z),
		Position(p.x-1, p.y+1, p.z),
		Position(p.x, p.y+1, p.z),
		Position(p.x+1, p.y+1, p.z),
	}
	local sorted = positions[math.random(1,8)]
	return isWalkable(sorted, false, false, false, true, false) and sorted or getNearPos(creature) 
end

function onCastSpell(creature, var)
	local maxUggly = 1
	if not invoqueUglyMonsterData[creature:getId()] then
		invoqueUglyMonsterData[creature:getId()] = {}
	end
	if #invoqueUglyMonsterData[creature:getId()] >= maxUggly then
		return false
	end
	
	local nearPos = getNearPos(creature)
	if not nearPos then
		return false
	end
	
	local uglyMonster = Game.createMonster("Ugly Monster", nearPos, false, true)
	if not uglyMonster then
		return false
	end
	creature:registerEvent("uglyOriginOnDeath")
	table.insert(invoqueUglyMonsterData[creature:getId()], uglyMonster:getId())
	return true
end
