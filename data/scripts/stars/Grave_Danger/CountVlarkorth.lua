local config = {
	boss = "Count Vlarkorth",
	timeToKill = 10, -- minutes
	delayToDoAgain = 20, -- hours
	requiredlevel = 150,
	centerPosition = Position(33456, 31437, 13),
	roomPlayerPosition = Position(33456, 31430, 13),
	bossPosition = Position(33454, 31444, 13),
	kickPosition = Position(33458, 31406, 13),
	storage = 554654,
	range = {x = 14, y = 13},
	leverPositions = {
		Position(33455, 31413, 13),
		Position(33456, 31413, 13),
		Position(33457, 31413, 13),
		Position(33458, 31413, 13),
		Position(33459, 31413, 13),
	},
}

countVlarkorthSummedCount = 0

local dustBySummon = {
	["Dark Knight"] = 36040,
	["Dark Sorcerer"] = 36039,
	["Dark Druid"] = 36038,
	["Dark Paladin"] = 36041,
}

local dustByVocId = {
	[1] = 36039,
	[2] = 36038,
	[3] = 36041,
	[4] = 36040,
	[5] = 36039,
	[6] = 36038,
	[7] = 36041,
	[8] = 36040,
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

local function init_mechanics()
	countVlarkorthSummedCount = 0
	local boss = Game.createMonster(config.boss, config.bossPosition)
	if not boss then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can\'t start the battle.")
		return true
	end
	boss:registerEvent("countVlarkorthChanges")
	boss:registerEvent("GraveDangerBossesKill")
end

local function getRoomVocations()
	local range = config.range
	local specs = Game.getSpectators(config.centerPosition, false, false, range.x, range.x, range.y, range.y)
	local result = {}
	for _, spec in pairs(specs) do
		if spec:isPlayer() then
			local voc = spec:getVocation()
			if voc then
				local vocName = voc:getName()
				table.insert(result, vocName)
			end
		end
	end
	return result
end

local function bossAddSummon(cid, summonName)
	local boss = Creature(cid)
	if not boss or not summonName then return end
	local pos = boss:getPosition()
	local summon = Game.createMonster(summonName, pos, true, false)
	if summon then
		summon:registerEvent("darkVocPrepareDeath")
		boss:addSummon(summon)
	end
end

local function spawnCountSummons()
	local boss = Creature("Count Vlarkorth")
	if not boss then return end
	
	if not countVlarkorthSummedCount then
		countVlarkorthSummedCount = 0
	end
	if countVlarkorthSummedCount > 2 then
		return
	end
	
	local maxHealth = boss:getMaxHealth()
	local bossHealth = boss:getHealth()
	local healthTrigger
	
	if countVlarkorthSummedCount < 2 then
		healthTrigger = maxHealth * 0.95
	else
		healthTrigger = maxHealth * 0.50
	end
	
	if not healthTrigger then
		return
	end
	
	if bossHealth > healthTrigger then
		return
	end
	
	local vocSummons = getRoomVocations()
	local summons = {}
	for _, vocName in pairs(vocSummons) do
		if vocName == "Knight" or vocname == "Elite Knight" then
			table.insert(summons, "Dark Knight")
		elseif vocName == "Sorcerer" or vocName == "Master Sorcerer" then
			table.insert(summons, "Dark Sorcerer")
		elseif vocName == "Druid" or vocName == "Elder Druid" then
			table.insert(summons, "Dark Druid")
		elseif vocName == "Paladin" or vocName == "Royal Paladin" then
			table.insert(summons, "Dark Paladin")
		end
	end
	
	local pos = boss:getPosition()
	for k, summonName in pairs(summons) do
		if type(summonName) == "string" then
			bossAddSummon(boss:getId(), summonName)
			addEvent(bossAddSummon, 250 * k, boss:getId(), summonName)
			-- local summon = Game.createMonster(summonName, pos, true, false)
			-- if summon then
				-- summon:registerEvent("darkVocPrepareDeath")
				-- boss:addSummon(summon)
			-- end
		end
	end
	
	countVlarkorthSummedCount = countVlarkorthSummedCount + 1
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
	init_mechanics()
	
	-- teleport player and set storage
	for _, p in pairs(checked) do
		p:sendTextMessage(MESSAGE_STATUS_SMALL, "You have "..config.timeToKill.." minutes to defeat the boss.")
		p:teleportTo(config.roomPlayerPosition)
		p:setStorageValue(config.storage, os.time() + (config.delayToDoAgain * 3600))
	end
	
	addEvent(kickPlayers, config.timeToKill * 60000, toKick)
	return true
end

DefaultBossLever:uid(60009)
DefaultBossLever:register()

local countVlarkorthChanges = CreatureEvent("countVlarkorthChanges")
function countVlarkorthChanges.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType)
	spawnCountSummons()
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
countVlarkorthChanges:register()

local darkVocPrepareDeath = CreatureEvent("darkVocPrepareDeath")
function darkVocPrepareDeath.onPrepareDeath(creature, lastHitKiller, mostDamageKiller)
    local dustId = dustBySummon[creature:getName()]
	if dustId then
		Game.createItem(dustId, 1, creature:getPosition())
	end
    return true
end
darkVocPrepareDeath:register()

local weaken = Condition(CONDITION_ATTRIBUTES)
weaken:setParameter(CONDITION_PARAM_TICKS, 60000)
weaken:setParameter(CONDITION_PARAM_BUFF_DAMAGERECEIVED, 165)
weaken:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)

local dustUse = Action()
function dustUse.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local creature = Creature(target)
	if not creature then
		return true
	end
	if creature:getName() ~= "Count Vlarkorth" then
		return true
	end
	local voc = player:getVocation()
	local vocId = voc and voc:getId() or nil
	local dustVoc = vocId and dustByVocId[vocId]or nil
	if not dustVoc then return true end
	if item:getId() ~= dustVoc then return false end
	
	creature:addCondition(weaken)
	item:remove()
	return true
end
for _, itemId in pairs(dustBySummon) do
	dustUse:id(itemId)
end
dustUse:register()