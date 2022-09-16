if (not ForgeSystemMonster) then 
	ForgeSystemMonster = 
	{
		timeLeftToChangeMonsters = {},

		names = {
			[FORGESYSTEM_NORMAL_MONSTER] = 'normal',
			[FORGESYSTEM_INFLUENCED_MONSTER] = 'influenced',
			[FORGESYSTEM_FIENDISH_MONSTER] = 'fiendish',
		},
		chanceToAppear = {
			fiendish = 80, -- 80% 	(porcentagem custom, esse pode ter até 3 monstros no mapa)
			influenced = 20 -- 20%	(porcentagem custom, esse é ilimitado no mapa)
		},

		maxFiendish = 3,

		eventName = 'ForgeSystemMonster'
	}
end

function getFiendishMinutesLeft(leftTime)
	local secLeft = leftTime - os.time()
	local timeLeft = 0

	local desc = "This monster will stay fiendish for less than"
	
	if math.floor(secLeft / 60) >= 1 then
		desc = desc .. " " .. math.floor(secLeft / 60)  .. " minutes and"
		secLeft = secLeft - math.floor(secLeft / 60) * 60
	end
	
	if secLeft < 60 then
		desc = desc .. " " .. secLeft .. " seconds"
	end
	return desc
end

function ForgeSystemMonster:getTimeLeftToChangeMonster(monster)
	if (monster) then 
		local leftTime = monster:getTimeToChangeFiendish()
		leftTime = leftTime or 0
		return getFiendishMinutesLeft(leftTime)
	end
	return 0
end

function ForgeSystemMonster:onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
	if (not creature) then return true end
	
	local stack = creature:getForgeStack()
	--if (creature:getMonsterForgeClassification() > FORGESYSTEM_NORMAL_MONSTER) then
	if (stack > 0) then
		-- give dusts
		local party = nil	
		if (killer) then
			if (killer:isPlayer()) then
				party = killer:getParty()
			elseif (killer:getMaster() and killer:getMaster():isPlayer()) then
				party = killer:getMaster():getParty()
			end
		end
		
		if (party and party:isSharedExperienceEnabled()) then
			local killers = {}
			local partyMembers = party:getMembers()
			
			for pid, _ in pairs(creature:getDamageMap()) do
				local creatureKiller = Creature(pid)
				if creatureKiller and creatureKiller:isPlayer() then
					if not isInArray(killers, creatureKiller) and isInArray(partyMembers, creatureKiller) then
						table.insert(killers, creatureKiller)
					end
				end
			end

			for i = 1, #killers do
				local playerKiller = killers[i]
				if (playerKiller) then
					-- Each stack can multiplied from 1x to 3x
					-- Example monster with 5 stack and system randomize multiplier 3x, players will receive 15x dusts

					local multiplier_random = math.random(3)
					local amount					
					amount = multiplier_random * stack
					playerKiller:addForgeDust(amount)

					local totalDusts = playerKiller:getForgeDust()				
					local limitDusts = playerKiller:getForgeDustLimit()				

					playerKiller:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received "..amount.." dust"..(amount > 1 and 's' or '').." for the Exaltation Forge. You now have "..totalDusts.." out of a maximum of "..limitDusts.." dusts.")
				end
			end
		else
			local playerKiller = nil
			
			if (killer) then
				if (killer:isPlayer()) then
					playerKiller = killer
				elseif (killer:getMaster() and killer:getMaster():isPlayer()) then
					playerKiller = killer:getMaster() 
				end
			end
			
			if (playerKiller) then
				-- Each stack can multiplied from 1x to 3x
				-- Example monster with 5 stack and system randomize multiplier 3x, players will receive 15x dusts

				local multiplier_random = math.random(3)
				local amount
				local stack = creature:getForgeStack()
				amount = multiplier_random * stack
				playerKiller:addForgeDust(amount)

				local totalDusts = playerKiller:getForgeDust()				
				local limitDusts = playerKiller:getForgeDustLimit()				

				playerKiller:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received "..amount.." dust"..(amount > 1 and 's' or '').." for the Exaltation Forge. You now have "..totalDusts.." out of a maximum of "..limitDusts.." dusts.")
			end
		end
	end

	return true 
end

function ForgeSystemMonster:onSpawn(monster)	
	if (not monster) then 
		return false 
	end
	local monsterType = monster:getType()
	if (not monsterType) then 
		return false 
	end

	--[[ ja tem esse check no Game.addInfluencedMonster(monster)
	if (not monster:canBeForgeMonster()) then 
		--print('can not be forged')
		return false 
	end
	]]--

	local pos = monster:getPosition()
	if (Tile(pos):hasFlag(TILESTATE_NOLOGOUT)) then
		--print('invalid tile')
		return false
	end

	Game.addInfluencedMonster(monster)
end

function ForgeSystemMonster:pickFiendish()
	for _, cid in pairs(Game.getFiendishMonsters()) do 
		if (Monster(cid)) then 
			return cid
		end
	end
	return 0
end

function ForgeSystemMonster:pickClosestFiendish(player)
	if (not player) then return 0 end
	--TODO: cache every X seconds

	local creatures = {}

	local playerPosition = player:getPosition()
	for _, cid in pairs(Game.getFiendishMonsters()) do 
		if (Monster(cid)) then 
			creatures[#creatures + 1] = {cid = cid, distance = Monster(cid):getPosition():getDistance(playerPosition)}
		end
	end
	if (#creatures == 0) then return false end
	table.sort( creatures, function(a, b)
		return a.distance < b.distance
	end)
	return creatures[1].cid
end

function ForgeSystemMonster:onSayTeleportToMonster(player, words, param, type)
	local monster = Monster(self:pickFiendish())
	if (monster) then 
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(monster:getPosition())
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	else
		player:sendTextMessage(MESSAGE_STATUS_WARNING, 'There are not fiendish monsters right now.')
	end
	return false 
end
--exiva

local LEVEL_LOWER = 1
local LEVEL_SAME = 2
local LEVEL_HIGHER = 3

local DISTANCE_BESIDE = 1
local DISTANCE_CLOSE = 2
local DISTANCE_FAR = 3
local DISTANCE_VERYFAR = 4

local directions = {
	[DIRECTION_NORTH] = "north",
	[DIRECTION_SOUTH] = "south",
	[DIRECTION_EAST] = "east",
	[DIRECTION_WEST] = "west",
	[DIRECTION_NORTHEAST] = "north-east",
	[DIRECTION_NORTHWEST] = "north-west",
	[DIRECTION_SOUTHEAST] = "south-east",
	[DIRECTION_SOUTHWEST] = "south-west"
}

local messages = {
	[DISTANCE_BESIDE] = {
		[LEVEL_LOWER] = "is below you",
		[LEVEL_SAME] = "is standing next to you",
		[LEVEL_HIGHER] = "is above you"
	},
	[DISTANCE_CLOSE] = {
		[LEVEL_LOWER] = "is on a lower level to the",
		[LEVEL_SAME] = "is to the",
		[LEVEL_HIGHER] = "is on a higher level to the"
	},
	[DISTANCE_FAR] = "is far to the",
	[DISTANCE_VERYFAR] = "is very far to the"
}

function ForgeSystemMonster:findClosestFiendish(player)
	if (player) then 
		local playerPosition = player:getPosition()
		local target = Monster(self:pickClosestFiendish(player))
		if (not target) then 
			player:sendTextMessage(MESSAGE_INFO_DESCR, 'At the moment there is no fiend with special loot roaming this world.')
			playerPosition:sendMagicEffect(CONST_ME_POFF)
			return false
		end

		local targetPosition = target:getPosition()
		
		local positionDifference = {
			x = playerPosition.x - targetPosition.x,
			y = playerPosition.y - targetPosition.y,
			z = playerPosition.z - targetPosition.z
		}

		local maxPositionDifference, direction = math.max(math.abs(positionDifference.x), math.abs(positionDifference.y))
		if maxPositionDifference >= 5 then
			local positionTangent = positionDifference.x ~= 0 and positionDifference.y / positionDifference.x or 10
			if math.abs(positionTangent) < 0.4142 then
				direction = positionDifference.x > 0 and DIRECTION_WEST or DIRECTION_EAST
			elseif math.abs(positionTangent) < 2.4142 then
				direction = positionTangent > 0 and (positionDifference.y > 0 and DIRECTION_NORTHWEST or DIRECTION_SOUTHEAST) or positionDifference.x > 0 and DIRECTION_SOUTHWEST or DIRECTION_NORTHEAST
			else
				direction = positionDifference.y > 0 and DIRECTION_NORTH or DIRECTION_SOUTH
			end
		end

		local level = positionDifference.z > 0 and LEVEL_HIGHER or positionDifference.z < 0 and LEVEL_LOWER or LEVEL_SAME
		local distance = maxPositionDifference < 5 and DISTANCE_BESIDE or maxPositionDifference < 101 and DISTANCE_CLOSE or maxPositionDifference < 275 and DISTANCE_FAR or DISTANCE_VERYFAR
		local message = messages[distance][level] or messages[distance]
		if distance ~= DISTANCE_BESIDE then
			message = message .. " " .. directions[direction]
		end

		-- só começa a aparecer os minutos quando tiver faltando 15 min pro monstro sumir
		local timeLeft = math.floor((target:getTimeToChangeFiendish() - os.time()) / 60)
		if (timeLeft <= 15) then 
			message = string.format('%s\n%s', message, self:getTimeLeftToChangeMonster(target))
		end

		local type = target:getType()
		if (type) then
			--local raceId = type:getRaceId()
			local lastKillsAmount = 1000--player:getDificultLevel(raceId) (aqui vc vai ter de puxar do seu bestiary)
			--[[
			Harmless kills: 5 to 25
			Trivial kills: 10 to 250
			Easy kills: 25 to 500
			Medium kills: 50 to 1000
			Hard kills: 100 to 2500
			Challenging kills: 200 to 5000
			]]

			local stringLevel = 'Unknown'
			if (lastKillsAmount >= 0 and lastKillsAmount <= 25) then 
				stringLevel = 'Harmless'
			elseif (lastKillsAmount <= 250) then 
				stringLevel = 'Trivial'
			elseif (lastKillsAmount <= 500) then 
				stringLevel = 'Easy'
			elseif (lastKillsAmount <= 1000) then 
				stringLevel = 'Medium'
			elseif (lastKillsAmount <= 2500) then 
				stringLevel = 'Hard'
			elseif (lastKillsAmount <= 5000) then 
				stringLevel = 'Challenging'			
			end

			player:sendTextMessage(MESSAGE_INFO_DESCR, "The monster " .. message .. ". Be prepared to find a creature of difficulty level \""..stringLevel.."\".")
		else 
			player:sendTextMessage(MESSAGE_INFO_DESCR, "The monster " .. message .. ". Be prepared to find a creature of difficulty level \"Unknown\".")
		end		

		playerPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
		player:teleportTo(targetPosition)
	end
end

--[[
TODO: 
	add storage?
	bosses can't have forge descriptions
	after X time remove status and add to other
--]]