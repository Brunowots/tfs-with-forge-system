--== Default boss Lever Script

local config = {
	boss = "Goshnar's Malice",
	timeToKill = 20, -- minutes
	delayToDoAgain = 20, -- hours
	requiredlevel = 400,
	centerPosition = Position(34092, 30995, 11),
	roomPlayerPosition = Position(34090, 31001, 11),
	bossPosition = Position(34092, 30988, 11),
	kickPosition = Position(34068, 30993, 11),
	storage = Storage.SoulWar.Timer.Malice,
	range = {x = 11, y = 11},
	leverPositions = {
		Position(34062, 30995, 11),
		Position(34063, 30995, 11),
		Position(34064, 30995, 11),
		Position(34065, 30995, 11),
		Position(34066, 30995, 11),
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

--[[Mechanic Functions]]--

local whiteFloorData = {
	[1] = {
		Position(34088, 30989, 11),
		Position(34087, 30990, 11),
		Position(34086, 30991, 11),
		Position(34089, 30995, 11),
		Position(34090, 30995, 11),
	},
	[2] = {
		Position(34087, 30993, 11),
		Position(34087, 30994, 11),
		Position(34087, 30995, 11),
		Position(34087, 30996, 11),
		Position(34087, 30997, 11),
		
		Position(34088, 30993, 11),
		Position(34088, 30994, 11),
		Position(34088, 30995, 11),
		Position(34088, 30996, 11),
		Position(34088, 30997, 11),
		
		Position(34089, 30993, 11),
		Position(34089, 30994, 11),
		Position(34089, 30995, 11),
		Position(34089, 30996, 11),
		Position(34089, 30997, 11),
	},
	[3] = {
		Position(34088, 30993, 11),
		Position(34089, 30993, 11),
		
		Position(34092, 30996, 11),
		Position(34093, 30996, 11),
		
		Position(34093, 30992, 11),
		Position(34094, 30992, 11),
	},
	[4] = {
		Position(34088, 30990, 11),
		Position(34089, 30990, 11),
		Position(34090, 30990, 11),
		Position(34092, 30995, 11),
	},
	[5] = {
		Position(34090, 30994, 11),
		Position(34090, 30995, 11),
		Position(34090, 30996, 11),
		
		Position(34091, 30997, 11),
		Position(34092, 30997, 11),
		Position(34093, 30997, 11),
		
		Position(34094, 30996, 11),
		Position(34094, 30995, 11),
		Position(34094, 30994, 11),
		
		Position(34093, 30993, 11),
		Position(34092, 30993, 11),
		Position(34091, 30993, 11),
	},
}

local roomDyn = {
	from = Position(34082, 30987, 11),
	to = Position(34102, 31004, 11),
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
						if ground and ground:getId() == 407 then
							pos:sendMagicEffect(CONST_ME_REDSMOKE)
						end
					end
				end
			end
		end
	end
end

local function transformToWhiteTiles(groupId, itemId)
	local data = whiteFloorData[groupId]
	if not data then return false end
	
	for _, pos in pairs(data) do
		local tile = Tile(pos)
		if tile then
			local ground = tile:getGround()
			if ground then
				ground:transform(itemId)
			end
		end
	end
end

local function doGroundDamages(groundIndex)
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, true, range.x, range.x, range.y, range.y)
	for _, player in pairs(specs) do
		local pos = player:getPosition()
		local tile = Tile(pos)
		if tile then
			local ground = tile:getGround()
			if ground and ground:getId() == 407 then
				player:addHealth(-6000)
				pos:sendMagicEffect(18)
			end
		end
	end
	doGroundDamageEffect()
	transformToWhiteTiles(groundIndex, 407)
end

local function maliceGroundEvent()
	if not Creature("Goshnar's Malice") then
		return
	end
	local groundIndex = Game.getStorageValue(GlobalStorage.SoulWar.maliceGroundIndex)
	if groundIndex > 5 then
		groundIndex = 1
	end
	Game.setStorageValue(GlobalStorage.SoulWar.maliceGroundIndex, groundIndex + 1)
	transformToWhiteTiles(groundIndex, 457)
	
	addEvent(doGroundDamages, 3000, groundIndex)
	addEvent(maliceGroundEvent, 30000)
end

local function increaseMaliceForce(malice)
	if not malice then return false end
	local increaseCount = Game.getStorageValue(GlobalStorage.SoulWar.maliceForceIncreaseCount)
	if increaseCount >= 5 then
		return
	end
	Game.setStorageValue(GlobalStorage.SoulWar.maliceForceIncreaseCount, increaseCount + 1)
end

local cagePosition = Position(34092, 30990, 11)
local function maliceCageEvent()
	local malice = Creature("Goshnar's Malice")
	if not malice then
		return
	end
	local cage
	local tile = Tile(cagePosition)
	if tile then
		local topCreature = tile:getTopCreature()
		if topCreature and topCreature:getName() == "Soul Cage" then
			cage = topCreature
		end
	end
	if cage then
		cage:remove()
		increaseMaliceForce(malice)
		addEvent(maliceCageEvent, math.random(15000, 30000))
		malice:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		malice:say("Strength increased!", TALKTYPE_MONSTER_SAY)
		return
	end
	
	if not Creature("Soul Cage") then
		Game.createMonster("Soul Cage", cagePosition)
	end
	addEvent(maliceCageEvent, math.random(15000, 30000))
end

-- cage 15/30 secconds
-- ground 15/30 secconds
-- damage in 3 seconds

local function Init_Goshnars_Malice_Mechanic()
	Game.setStorageValue(GlobalStorage.SoulWar.maliceForceIncreaseCount, 0)
	Game.setStorageValue(GlobalStorage.SoulWar.maliceGroundIndex, 1)
	local boss = Game.createMonster(config.boss, config.bossPosition)
	if not boss then
		Spdlog.warn("Failed to init Goshnars "..config.boss.." Mechanic")
		return false
	end
	addEvent(maliceCageEvent, 7000)
	addEvent(maliceGroundEvent, 15000)
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
					player:sendTextMessage(MESSAGE_STATUS_SMALL, "All players must be level "..config.requiredlevel.." or higher")
					return true
				end
				
				if creature:getStorageValue(config.storage) > os.time() then
					player:sendTextMessage(MESSAGE_STATUS_SMALL, "All players must wait for the cooldown.")
					return true
				end
				
				table.insert(checked, creature)
				table.insert(toKick, creature:getId())
			end
		end
	end
	cleanRoomMonsters()
	
	-- execute here mechanics functions
	
	if not Init_Goshnars_Malice_Mechanic() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can\'t start the battle, call a administrator.")
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

DefaultBossLever:uid(60110)
DefaultBossLever:register()