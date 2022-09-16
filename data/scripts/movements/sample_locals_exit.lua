local positions = {
	Position(17062, 16971, 6),
	Position(32269, 31956, 7), 
	Position(32265, 31950, 7),
	Position(32261, 31950, 7),
	Position(32257, 31947, 7),
	Position(32253, 31947, 7),
	Position(32249, 31947, 7),
	Position(32245, 31947, 7),
	Position(32241, 31947, 7),
	Position(32237, 31947, 7),
	Position(32226, 31952, 7),
	Position(32226, 31956, 7),
	Position(32226, 31960, 7),
	Position(32237, 31965, 7),
	Position(32241, 31965, 7),
	Position(32245, 31965, 7),
	Position(32249, 31965, 7),
	Position(32253, 31965, 7),
	Position(32257, 31965, 7),
	Position(32261, 31962, 7),
	Position(32265, 31962, 7),
	Position(32255, 31958, 7),
	Position(32255, 31954, 7),
	Position(32253, 31954, 7),
	Position(32253, 31958, 7),
	Position(32246, 31958, 7),
	Position(32246, 31954, 7),
	Position(32244, 31954, 7),
	Position(32244, 31958, 7),
	Position(32237, 31954, 7),
	Position(32235, 31954, 7),
	Position(32235, 31958, 7),
	Position(32237, 31958, 7),
	Position(32258, 31948, 8),
	Position(32254, 31948, 8),
	Position(32250, 31948, 8),
	Position(32246, 31948, 8),
	Position(32242, 31948, 8),
	Position(32238, 31948, 8),
	Position(32227, 31953, 8),
	Position(32227, 31957, 8),
	Position(32227, 31961, 8),
	Position(32238, 31966, 8),
	Position(32242, 31966, 8),
	Position(32246, 31966, 8),
	Position(32250, 31966, 8),
	Position(32254, 31966, 8),
	Position(32258, 31966, 8),
	Position(32258, 31959, 8),
	Position(32258, 31955, 8),
	Position(32256, 31955, 8),
	Position(32256, 31959, 8),
	Position(32249, 31955, 8),
	Position(32249, 31959, 8),
	Position(32247, 31955, 8),
	Position(32247, 31959, 8),
	Position(32240, 31955, 8),
	Position(32240, 31959, 8),
	Position(32238, 31955, 8),
	Position(32238, 31959, 8),
	-- Position(17062, 16971, 6),
}

local sample_locals_exit_portals = MoveEvent()

function sample_locals_exit_portals.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then 
		creature:teleportTo(fromPosition)
		return false
	end
	local lastTownId = player:getTown():getId()
	if TP_modal.last_town[player:getId()] then
		lastTownId = TP_modal.last_town[player:getId()]
	end
	local town = Town(lastTownId)
	if town then
		player:teleportTo(town:getTemplePosition())
	else
		player:teleportTo(Town(8):getTemplePosition())
	end
	
	return true
end
sample_locals_exit_portals:type("stepin")

for _, pos in pairs(positions) do
	sample_locals_exit_portals:position(pos)
end

sample_locals_exit_portals:register()