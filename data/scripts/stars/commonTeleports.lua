local config = {
	-- Grave Danger Bosses
	{from = Position(32345, 32168, 12), to = Position(33459, 31499, 13)},
	{from = Position(33261, 31984, 8), to = Position(33519, 31439, 13)},
	{from = Position(33196, 31694, 8), to = Position(33458, 31406, 13)},
	{from = Position(32190, 31817, 8), to = Position(33425, 31499, 13)},
	{from = Position(33288, 32473, 9), to = Position(33428, 31406, 13)},
	{from = Position(32174, 31916, 8), to = Position(33493, 31544, 13)},
	-- Heart Of Destruction (other world)
	{from = Position(32232, 31359, 11), to = Position(32181, 31240, 14)},
	{from = Position(32106, 31329, 12), to = Position(32242, 31247, 14)},
	{from = Position(32089, 31319, 13), to = Position(32306, 31247, 14)},
	{from = Position(32207, 31370, 14), to = Position(32203, 31285, 14)},
	{from = Position(32221, 31373, 14), to = Position(32337, 31289, 14)},
	{from = Position(32213, 31378, 14), to = Position(32272, 31381, 14)},
	
	{from = Position(33898, 31889, 8), to = Position(33232, 31702, 7)}, -- thaian back
	{from = Position(33813, 31906, 8), to = Position(33232, 31702, 7)}, -- thaian back
	
	{from = Position(33572, 31459, 8), to = Position(31904, 32347, 9)}, -- Lost soul banuta to Lost soul Jakundav
	{from = Position(31904, 32346, 9), to = Position(33572, 31461, 8)}, -- Lost soul Jakundav to Lost soul banuta
	
	{from = Position(33695, 32191, 5), to = Position(32014, 31948, 13)}, -- summer courts to bosses
	{from = Position(32014, 31946, 13), to = Position(33695, 32189, 5)}, -- summer courts back
	
	{from = Position(32041, 32022, 14), to = Position(32040, 31936, 15)}, -- to sun tile room
	
	{from = Position(32042, 31922, 15), to = Position(32041, 32024, 14)}, -- sun tile room exit
	{from = Position(32043, 31954, 15), to = Position(32041, 32024, 14)}, -- sun tile room exit
	{from = Position(32208, 32091, 13), to = Position(32042, 31941, 15)}, -- dream scar to sun tile room
	
	{from = Position(32203, 32078, 14), to = Position(33715, 32109, 7)}, -- Dream scar to Winter Courts
	{from = Position(32217, 32071, 14), to = Position(33666, 32193, 7)}, -- Dream scar to Summer Courts
}

local commonTeleports = MoveEvent()

function commonTeleports.onStepIn(creature, item, position, fromPosition)
    if not creature:isPlayer() then
		return false
	end
	
	for i = 1, #config do
		local from = config[i].from
		if position.x == from.x and position.y == from.y and position.z == from.z then
			creature:teleportTo(config[i].to)
			return true
		end
	end
     
    return true
end
commonTeleports:type("stepin")

for i = 1, #config do
	local conf = config[i]
	commonTeleports:position(conf.from)
end

commonTeleports:register()