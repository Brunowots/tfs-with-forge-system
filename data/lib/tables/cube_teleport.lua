-- templos, self.house, self.temple, adventurers guild
-- Town(townId):getTemplePosition()
-- player:getTown():getTemplePosition()
CUBE_TELEPORT = {
	CITIES = {
		["Thais"] = Town(TOWNS_LIST.THAIS):getTemplePosition() or nil,
		["Ab'Dendriel"] = Town(TOWNS_LIST.AB_DENDRIEL):getTemplePosition() or nil,
		["Carlin"] = Town(TOWNS_LIST.CARLIN):getTemplePosition() or nil,
		["Kazordoon"] = Town(TOWNS_LIST.KAZORDOON):getTemplePosition() or nil,
		["Venore"] = Town(TOWNS_LIST.VENORE):getTemplePosition() or nil,
		["Ankrahmun"] = Town(TOWNS_LIST.ANKRAHMUN):getTemplePosition() or nil,
		["Edron"] = Town(TOWNS_LIST.EDRON):getTemplePosition() or nil,
		["Farmine"] = Town(TOWNS_LIST.FARMINE):getTemplePosition() or nil,
		["Darashia"] = Town(TOWNS_LIST.DARASHIA):getTemplePosition() or nil,
		["Liberty Bay"] = Town(TOWNS_LIST.LIBERTY_BAY):getTemplePosition() or nil,
		["Port Hope"] = Town(TOWNS_LIST.PORT_HOPE):getTemplePosition() or nil,
		["Svargrond"] = Town(TOWNS_LIST.SVARGROND):getTemplePosition() or nil,
		["Yalahar"] = Town(TOWNS_LIST.YALAHAR):getTemplePosition() or nil,
		["Gray Beach"] = Town(TOWNS_LIST.GRAY_BEACH):getTemplePosition() or nil,
		["Krailos"] = Town(TOWNS_LIST.KRAILOS):getTemplePosition() or nil,
		["Rathleton"] = Town(TOWNS_LIST.RATHLETON):getTemplePosition() or nil,
		["Roshamuul"] = Town(TOWNS_LIST.ROSHAMUUL):getTemplePosition() or nil,
		["Issavi"] = Town(TOWNS_LIST.ISSAVI):getTemplePosition() or nil,
		["Feyrist"] = Position(33483, 32237, 7) or nil,
		["Adventurers' Guild"] = Position(32210, 32300, 6) or nil
	},
	EXTRAS = {
		-- ["Example"] = Position(32209, 32299, 6),
		-- ["Supply"] = Position(12744, 15540, 7),
	},
	EXAUST_STORAGE = 1564849,
	EXAUST_TIME = 0, -- in seconds
	EXAUST = false,
}

function CUBE_TELEPORT:SHOW_MODAL(playerId)
	if not playerId then return false end
	local player = Player(playerId)
	local level = 19
	if not player then return false end
	
	if not player:isVip() then
		player:sendTextMessage(MESSAGE_FAILURE, "Only vip's can use.")
		return true
	end
	
	if self.EXAUST then
		if player:getStorageValue(self.EXAUST_STORAGE) > os.time() then
			player:sendTextMessage(MESSAGE_FAILURE, "Wait the cooldown")
			return true
		end
	end
	
	player:setStorageValue(self.EXAUST_STORAGE, os.time() + self.EXAUST_TIME)
	
	if player:getLevel() < level then
		player:say("You need level 20 to use this Teleprot.", TALKTYPE_MONSTER_SAY)

	elseif player:getLevel() > level then
	local window = ModalWindow {
		title = 'Teleport Stone',
		message = 'Choose destination.'
	}
	
	local choice = window:addChoice("Cities")
	choice.id = 1
	local choice = window:addChoice("My Places")
	choice.id = 2
	-- local choice = window:addChoice("Extras")
	-- choice.id = 3
	
	window:addButton('Choose',
		function(button, choice)
			if choice.id == 1 then
				self:SHOW_MODAL_CITIES(playerId)
			elseif choice.id == 2 then
				self:SHOW_MODAL_HOUSE(playerId)
			-- elseif choice.id == 3 then
				-- self:SHOW_MODAL_EXTRA(playerId)
			end
		end
	)
	
	window:addButton('Close',
		function(button, choice)
		end
	)
	
	window:setDefaultEnterButton('Choose')
	window:setDefaultEscapeButton('Choose')
	window:sendToPlayer(player)
	end
end

function CUBE_TELEPORT:SHOW_MODAL_CITIES(playerId)
	if not playerId then return false end
	local player = Player(playerId)
	if not player then return false end
	
	local window = ModalWindow {
		title = 'Cities',
		message = 'Choose the city.'
	}
	
	for cidade, position in pairs(self.CITIES) do
		if position then
			local choice = window:addChoice(cidade)
			choice.position = position
		end
	end
	
	window:addButton('Go',
		function(button, choice)
			-- player:teleportTo(choice.position)
			self:ProcessPlayerTeleport(player, choice.position)
		end
	)
	
	window:addButton('Close',
		function(button, choice)
		end
	)
	
	window:setDefaultEnterButton('Go')
	window:setDefaultEscapeButton('Go')
	window:sendToPlayer(player)
end

function CUBE_TELEPORT:SHOW_MODAL_HOUSE(playerId)
	if not playerId then return false end
	local player = Player(playerId)
	if not player then return false end
	
	local window = ModalWindow {
		title = 'My Places',
		message = 'Choose the place.'
	}
	
	local house = player:getHouse()
	if house then
		local house_position = house:getExitPosition()
		if house_position then
			local choice = window:addChoice("House")
			choice.position = house_position
		end
	else
		local choice = window:addChoice("you don't have a house")
		choice.position = nil
	end
	
	local town = player:getTown()
	if town then
		if town:getId() < 5 then
			town = Town(8)
		end
		local townPosition = town:getTemplePosition()
		if townPosition then
			local choice = window:addChoice("My City")
			choice.position = townPosition
		end

	end
	
	window:addButton('Go',
		function(button, choice)
			if choice.position then
				-- player:teleportTo(choice.position)
				self:ProcessPlayerTeleport(player, choice.position)
			end
		end
	)
	
	window:addButton('Close',
		function(button, choice)
		end
	)
	
	window:setDefaultEnterButton('Go')
	window:setDefaultEscapeButton('Go')
	window:sendToPlayer(player)
end

function CUBE_TELEPORT:SHOW_MODAL_EXTRA(playerId)
	if not playerId then return false end
	local player = Player(playerId)
	if not player then return false end
	if not playerId then return false end
	local player = Player(playerId)
	if not player then return false end
	
	local window = ModalWindow {
		title = 'Extra',
		message = 'Choose.'
	}
	
	for extra, position in pairs(self.EXTRAS) do
		if position then
			local choice = window:addChoice(extra)
			choice.position = position
		end
	end
	
	window:addButton('Go',
		function(button, choice)
			if choice.position then
				-- player:teleportTo(choice.position)
				self:ProcessPlayerTeleport(player, choice.position)
			end
		end
	)
	
	window:addButton('Close',
		function(button, choice)
		end
	)
	
	window:setDefaultEnterButton('Go')
	window:setDefaultEscapeButton('Go')
	window:sendToPlayer(player)
end

function CUBE_TELEPORT:ProcessPlayerTeleport(player, position)
	if not player or not position then return false end
	
	if (player:getCondition(CONDITION_INFIGHT, CONDITIONID_DEFAULT) and player:getZone() ~= ZONE_PROTECTION) or player:isPzLocked() then
		player:sendTextMessage(MESSAGE_FAILURE, "You are in battle")
		return false
	end
	player:teleportTo(position)
	return true
end