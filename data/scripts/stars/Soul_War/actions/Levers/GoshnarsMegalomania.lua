--== Default boss Lever Script

local config = {
	boss = "Goshnar's Megalomania",
	timeToKill = 20, -- minutes
	delayToDoAgain = 20, -- hours
	requiredlevel = 400,
	centerPosition = Position(34093, 31030, 11),
	roomPlayerPosition = Position(34091, 31037, 11),
	bossPosition = Position(34094, 31023, 11),
	kickPosition = Position(34064, 31027, 11),
	storage = Storage.Boos.GoshnarsMegalomania,
	range = {x = 12, y = 12},
	leverPositions = {
		Position(34059, 31030, 11),
		Position(34060, 31030, 11),
		Position(34061, 31030, 11),
		Position(34062, 31030, 11),
		Position(34063, 31030, 11),
	},
}

local function kickPlayers(toKick)
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:isPlayer() then
			if table.contains(toKick, spec:getId()) then
				spec:teleportTo(config.kickPosition)
			end
		end
	end
end

local function cleanRoomMonsters()
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if not spec:isPlayer() then
			spec:remove()
		end
	end
end

local function roomIsOcuped()
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	for _, spec in pairs(specs) do
		if spec:isPlayer() then
			return true
		end
	end
	return false
end

local whiteFloorData = {
	[1] = {
		Position(34087, 31028, 11),
		Position(34087, 31029, 11),
		Position(34087, 31030, 11),
		Position(34087, 31031, 11),
		Position(34087, 31032, 11),
	},
	[2] = {
		Position(34087, 31027, 11),
		Position(34088, 31026, 11),
		Position(34089, 31025, 11),
		Position(34096, 31028, 11),
		Position(34097, 31028, 11),
		Position(34097, 31027, 11),
	},
	[3] = {
		Position(34091, 31034, 11),
		Position(34092, 31034, 11),
		Position(34093, 31034, 11),
		Position(34094, 31034, 11),
		Position(34093, 31030, 11),
		Position(34093, 31029, 11),
		Position(34093, 31028, 11),
		Position(34093, 31027, 11),
	},
	[4] = {
		Position(34090, 31029, 11),
		Position(34090, 31030, 11),
		Position(34090, 31031, 11),
		Position(34091, 31032, 11),
		Position(34092, 31032, 11),
		Position(34093, 31032, 11),
		Position(34094, 31032, 11),
		Position(34095, 31031, 11),
		Position(34095, 31030, 11),
		Position(34095, 31029, 11),
		Position(34094, 31028, 11),
		Position(34093, 31028, 11),
		Position(34092, 31028, 11),
		Position(34091, 31028, 11),
	},
}

local roomDyn = {
	from = Position(34083, 31021, 11),
	to = Position(34103, 31039, 11),
}

local function doGroundDamageEffect()
	local f, t = roomDyn.from, roomDyn.to
	for a=f.x, t.x do
		for b=f.y, t.y do
			for c=f.z, t.z do
				local pos = Position(a, b, c)
				if pos then
					local tile = Tile(pos)
					if tile and tile:isWalkable(false, false, false, true, true) then
						local ground = tile:getGround()
						if ground and ground:getId() ~= 457 then
							pos:sendMagicEffect(CONST_ME_REDSMOKE)
						end
					end
				end
			end
		end
	end
end

local function doGroundDamages()
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, true, range.x, range.x, range.y, range.y)
	for _, player in pairs(specs) do
		local pos = player:getPosition()
		local tile = Tile(pos)
		if tile then
			local ground = tile:getGround()
			if ground and ground:getId() ~= 457 then
				player:addHealth(-6000)
				pos:sendMagicEffect(18)
			end
		end
	end
	doGroundDamageEffect()
end

local function revertTransformAndDamage(data, revert)
	for _, revertData in pairs(revert) do
		local pos = revertData.pos
		local oldId = revertData.itemId
		local tile = Tile(pos)
		if tile then
			local ground = tile:getGround()
			if ground then
				ground:transform(oldId)
			end
		end
	end
end

local function transformToWhiteTiles()
	local itemId = 457
	local data = whiteFloorData[math.random(#whiteFloorData)]
	if not data then return false end
	local revert = {}
	
	for _, pos in pairs(data) do
		local tile = Tile(pos)
		if tile then
			local ground = tile:getGround()
			if ground then
				table.insert(revert, {pos = pos, itemId = ground:getId()})
				ground:transform(itemId)
			end
		end
	end
	addEvent(revertTransformAndDamage, 5000, data, revert)
	addEvent(doGroundDamages, 4500)
end

local function megalomaniaGroundEvent()
	if not Creature("Goshnar's Megalomania") then
		return
	end
	
	
	transformToWhiteTiles()
	
	addEvent(megalomaniaGroundEvent, 30000)
end

local function aspectOfPowerEvent()
	if not Creature("Goshnar's Megalomania") then
		return
	end
	
	if not Creature("Aspect Of Power") then
		Game.createMonster("Aspect Of Power" ,config.bossPosition)
	end
	
	addEvent(aspectOfPowerEvent, 5000)
end

local function init_mechanics()
	local monsterBoss = Game.createMonster(config.boss, config.bossPosition)
	if not monsterBoss then
		Spdlog.warn("Failed to init "..config.boss.." Mechanic")
		return false
	end
	
	addEvent(aspectOfPowerEvent, 5000)
	addEvent(megalomaniaGroundEvent, 30000)
	Game.setStorageValue(GlobalStorage.SoulWar.megalomaniaImortal, 1)
	Game.setStorageValue(GlobalStorage.SoulWar.aspectOfPowerKillCount, 0)
	return true
end

local DefaultBossLever = Action()
function DefaultBossLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if roomIsOcuped() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the boss room.")
		return true
	end
	
	if player:getPosition() ~= config.leverPositions[1] then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can\'t start the battle.")
		return true
	end
	
	local checked = {}
	local toKick = {}
	
	for _, pos in pairs(config.leverPositions) do
		local tile = Tile(pos)
		if tile then
			local creature = tile:getTopCreature()
			if creature and creature:isPlayer() then
				
				if creature:getLevel() < config.requiredlevel then
					-- player:sendTextMessage(MESSAGE_STATUS_SMALL, "All players must be level "..config.requiredlevel.." or higher")
					-- return true
				end
				
				if creature:getStorageValue(config.storage) > os.time() then
					-- player:sendTextMessage(MESSAGE_STATUS_SMALL, "All players must wait for the cooldown.")
					-- return true
				end
				
				table.insert(checked, creature)
				table.insert(toKick, creature:getId())
			end
		end
	end
	cleanRoomMonsters()
	
	-- execute here mechanics functions
	if not init_mechanics() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can\'t start the battle. Contact the administrator.")
		return true
	end	
	
	-- teleport player and set storage
	for _, p in pairs(checked) do
		p:sendTextMessage(MESSAGE_STATUS_SMALL, "You have "..config.timeToKill.." minutes to defeat the boss.")
		p:teleportTo(config.roomPlayerPosition)
		p:setStorageValue(config.storage, os.time() + (config.delayToDoAgain * 3600))
	end
	
	addEvent(kickPlayers, config.timeToKill * 60000, toKick)
	return true
end

DefaultBossLever:uid(60112)
DefaultBossLever:register()