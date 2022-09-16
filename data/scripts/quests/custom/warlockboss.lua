-- Mage Ot

local config = {
	requiredLevel = 350,
	daily = true,
	roomCenterPosition = Position(32070, 33347, 5),
	playerPositions = {		
		Position(32061, 33413, 6),
		Position(32060, 33413, 6),
		Position(32059, 33413, 6),
		Position(32059, 33414, 6),
		Position(32060, 33414, 6),
		Position(32061, 33414, 6),
		Position(32062, 33414, 6),
		Position(32063, 33414, 6),
		Position(32063, 33413, 6),
		Position(32062, 33413, 6),
	},
	teleportPosition = Position(32065, 33352, 5),
	bossPosition = Position(32070, 33347, 5)
}

local leverboss = Action()

function leverboss.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 9825 then		
		-- Check if the player that pulled the lever is on the correct position
		if player:getPosition() ~= config.playerPositions[1] then
			player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can\'t start the battle.")
			return true
		end
		
		local team, participant = {}

		for i = 1, #config.playerPositions do
			participant = Tile(config.playerPositions[i]):getTopCreature()
			
			-- Check there is a participant player
			if participant and participant:isPlayer() then
				-- Check participant level
				if participant:getLevel() < config.requiredLevel then
					player:sendTextMessage(MESSAGE_STATUS_SMALL,
						"All the players need to be level ".. config.requiredLevel .." or higher.")
					return true
				end

				-- Check participant boss timer
				if config.daily and participant:getStorageValue(Storage.Boos.mageOt) > os.time() then
					player:getPosition():sendMagicEffect(CONST_ME_POFF)
					player:sendCancelMessage("Not all players are ready yet from last battle.")
					return true
				end

				team[#team + 1] = participant
			end
		end

		-- Check if a team currently inside the boss room
		local specs, spec = Game.getSpectators(config.roomCenterPosition, false, false, 14, 14, 13, 13)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the boss room.")
				return true
			end
		end
		
		for i = 1, #specs do
			spec = specs[i]
			spec:remove()
		end
		
		-- Spawn boss
		Game.createMonster("weak warlock", config.bossPosition)

		-- Teleport team participants
		for i = 1, #team do
			team[i]:getPosition():sendMagicEffect(CONST_ME_POFF)
			team[i]:teleportTo(config.teleportPosition)
			-- Assign boss timer
			team[i]:setStorageValue(Storage.Boos.mageOt, os.time() + 20*60*60) -- 20 hours
		end
		
		config.teleportPosition:sendMagicEffect(CONST_ME_ENERGYAREA)
	end

	item:transform(9825)
	return true
end

leverboss:uid(60120)
leverboss:register()