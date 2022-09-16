local goshnar_hub_hunts = MoveEvent()

local config = {
	[1] = {from = Position(33615, 31422, 10), to = Position(33988, 31001, 9)}, -- Claustrophobic Inferno
	[2] = {from = Position(33618, 31422, 10), to = Position(33948, 31030, 11)}, -- Rotten Wasteland
	[3] = {from = Position(33621, 31422, 10), to = Position(33880, 31001, 8)}, -- Ebb And Flow
	[4] = {from = Position(33624, 31422, 10), to = Position(33855, 31832, 3)}, -- Furious Crater
	[5] = {from = Position(33627, 31422, 10), to = Position(33888, 31185, 10)}, -- Mirrored Nightmare
}

function goshnar_hub_hunts.onStepIn(creature, item, position, fromPosition)
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

goshnar_hub_hunts:type("stepin")

for i = 1, #config do
	local conf = config[i]
	goshnar_hub_hunts:position(conf.from)
end

goshnar_hub_hunts:register()