TP_modal = {
	-- House, Adventures guild, NPCs room, Trainning room
	sample_pos = {
		["Adventurer's Guild"] = Position(32210, 32300, 6),
		["NPC's Room"] = Position(17067, 16973, 6),
		["Trainning Room"] = Position(32267, 31956, 7),
	},
	last_town = {},
}

function TP_modal:show_main_modal(playerId, fromPos)
	if not playerId then return false end
	local player = Player(playerId)
	if not player then return false end
	
	local window = ModalWindow {
		title = 'Teleport',
		message = 'Choose destination.'
	}
	
	local currentTownId = getTownIdByPos(player:getPosition())
	if currentTownId then
		self.last_town[playerId] = currentTownId
	else
		self.last_town[playerId] = player:getTown():getId()
	end
	
	local house = player:getHouse()
	if house then
		local house_position = house:getExitPosition()
		if house_position then
			local choice = window:addChoice("House")
			choice.position = house_position
		end
	end
	
	for destination, position in pairs(self.sample_pos) do
		local choice = window:addChoice(destination)
		choice.position = position
	end
	
	window:addButton('Close',
		function(button, choice)
		end
	)
	
	window:addButton('Go',
		function(button, choice)
			player:teleportTo(choice.position)
		end
	)
	
	window:setDefaultEnterButton('Close')
	window:setDefaultEscapeButton('Close')
	
	window:sendToPlayer(player)
	
end