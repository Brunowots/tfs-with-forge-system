TOWNS_LIST = {
	DAWNPORT_TUTORIAL = 1,
	DAWNPORT = 2,
	ROOKGAARD = 3,
	ISLAND_OF_DESTINY = 4,
	AB_DENDRIEL = 5,
	CARLIN = 6,
	KAZORDOON = 7,
	THAIS = 8,
	VENORE = 9,
	ANKRAHMUN = 10,
	EDRON = 11,
	FARMINE = 12,
	DARASHIA = 13,
	LIBERTY_BAY = 14,
	PORT_HOPE = 15,
	SVARGROND = 16,
	YALAHAR = 17,
	GRAY_BEACH = 18,
	KRAILOS = 19,
	RATHLETON = 20,
	ROSHAMUUL = 21,
	ISSAVI = 22,
	EVENT_ROOM = 23,
	COBRA_BASTION = 24,
	BOUNAC = 25,
	FEYRIST = 26
}

TOWN_TEMPLE_RANGE = {
	[TOWNS_LIST.DAWNPORT_TUTORIAL] = {x = 42, y = 50, z = 5},
	[TOWNS_LIST.DAWNPORT] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.ROOKGAARD] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.ISLAND_OF_DESTINY] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.AB_DENDRIEL] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.CARLIN] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.KAZORDOON] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.THAIS] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.VENORE] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.ANKRAHMUN] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.EDRON] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.FARMINE] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.DARASHIA] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.LIBERTY_BAY] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.PORT_HOPE] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.SVARGROND] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.YALAHAR] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.GRAY_BEACH] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.KRAILOS] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.RATHLETON] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.ROSHAMUUL] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.ISSAVI] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.EVENT_ROOM] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.COBRA_BASTION] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.BOUNAC] = {x = 50, y = 50, z = 5},
	[TOWNS_LIST.FEYRIST] = {x = 50, y = 50, z = 5},
}

local function isInArea(pos, fromPos, toPos)
    if pos.x >= fromPos.x and pos.x <= toPos.x then
        if pos.y >= fromPos.y and pos.y <= toPos.y then
            if pos.z >= fromPos.z and pos.z <= toPos.z then
                return true
            end
        end
    end
    return false
end

function getTownIdByPos(pos)
	for t, id in pairs(TOWNS_LIST) do
		local town = Town(id)
		local range = TOWN_TEMPLE_RANGE[id]
		if town and range then
			local tPos = town:getTemplePosition()
			if tPos then
				local from = Position(tPos.x - range.x, tPos.y - range.y, tPos.z - range.z)
				local to = Position(tPos.x + range.x, tPos.y + range.y, tPos.z + range.z)
				if isInArea(pos, from, to) then
					return id
				end
			end
		end
	end
	return false
end