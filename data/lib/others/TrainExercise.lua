local testMode = false
local testModeDisableAllBonuses = false 

local baseStorage = 23123
trainingWeaponSys = 
{
	-- secondsBetweenTraining = testMode and 0.01 or 2,
	secondsBetweenTraining = 2,
    skillTries = 10, -- Original Value: 7
    manaSpent = 500, -- 330

	dummies = 
	{
		-- Free
		[32142] = {premium = 1.1, free = 1.0},
		[32149] = {premium = 1.1, free = 1.0},
		[32143] = {premium = 1.2, free = 1.1},
		[32144] = {premium = 1.2, free = 1.1},
		[32145] = {premium = 1.2, free = 1.1},
		[32146] = {premium = 1.2, free = 1.1},
		[32147] = {premium = 1.2, free = 1.1},
		[32148] = {premium = 1.2, free = 1.1}
	},

	effects = 
	{
		["DEFAULT"] = {magic = CONST_ME_HITAREA},
		["MANA_SPENT"] = {distance = CONST_ANI_FIRE},
		["MANA_DRUID"] = {distance = CONST_ANI_SMALLICE},
		[SKILL_DISTANCE] = {distance = CONST_ANI_SIMPLEARROW}
	},

	weapons = 
	{
		[32384] = {distance = 1, skillId = SKILL_SWORD, mana = false}, -- KNIGHT
		[32385] = {distance = 1, skillId = SKILL_AXE, mana = false}, -- KNIGHT
		[32386] = {distance = 1, skillId = SKILL_CLUB, mana = false}, -- KNIGHT
		[32124] = {distance = 1, skillId = SKILL_SWORD, mana = false}, -- KNIGHT
		[32125] = {distance = 1, skillId = SKILL_AXE, mana = false}, -- KNIGHT
		[32126] = {distance = 1, skillId = SKILL_CLUB, mana = false}, -- KNIGHT
		[40114] = {distance = 1, skillId = SKILL_SWORD, mana = false}, -- KNIGHT
		[40115] = {distance = 1, skillId = SKILL_AXE, mana = false}, -- KNIGHT
		[40116] = {distance = 1, skillId = SKILL_CLUB, mana = false}, -- KNIGHT
		[40114] = {distance = 1, skillId = SKILL_SWORD, mana = false}, -- KNIGHT
		[40115] = {distance = 1, skillId = SKILL_AXE, mana = false}, -- KNIGHT
		[40116] = {distance = 1, skillId = SKILL_CLUB, mana = false}, -- KNIGHT
		[40120] = {distance = 1, skillId = SKILL_SWORD, mana = false}, -- KNIGHT
		[40121] = {distance = 1, skillId = SKILL_AXE, mana = false}, -- KNIGHT
		[40122] = {distance = 1, skillId = SKILL_CLUB, mana = false}, -- KNIGHT
		
		[32387] = {distance = 6, skillId = SKILL_DISTANCE, mana = false}, -- PALADIN
		[32127] = {distance = 6, skillId = SKILL_DISTANCE, mana = false}, -- PALADIN
		[40117] = {distance = 6, skillId = SKILL_DISTANCE, mana = false}, -- PALADIN
		[40123] = {distance = 6, skillId = SKILL_DISTANCE, mana = false}, -- PALADIN
		
		[32388] = {distance = 6, mana = true, druid = true}, -- DRUID
		[32389] = {distance = 6, mana = true}, -- SORCERER
		[32128] = {distance = 6, mana = true, druid = true}, -- DRUID
		[32129] = {distance = 6, mana = true}, -- SORCERER
		[40118] = {distance = 6, mana = true, druid = true}, -- DRUID
		[40119] = {distance = 6, mana = true}, -- SORCERER
		[40124] = {distance = 6, mana = true, druid = true}, -- DRUID
		[40125] = {distance = 6, mana = true} -- SORCERER
	},

	storages = 
	{
		eventId = baseStorage, 
		exhaustion = baseStorage + 1,
		uses = baseStorage + 3
	},

	exhaustionTime = 10,
	maxUses = tesMode and 5000 or 50000
}

if (not trainingTable) then 
	trainingTable = {}
end 

function trainingWeaponSys:setUses(player, uses)
	if (player) then
		player:setStorageValue(self.storages.uses, uses) 
	end
end

function trainingWeaponSys:getUses(player)
	if (player) then
		local value = player:getStorageValue(self.storages.uses)
		return  value and math.max(value, 0) or 0
	end

	return 0
end

function trainingWeaponSys:getExhausted(player)
	if (player) then 
		return player:getExhaustion(self.storages.exhaustion) 
	end 
end 

function trainingWeaponSys:hasExhausted(player) 
	if (player) then 
		return self:getExhausted(player) > 0
	end 
end 

function trainingWeaponSys:addExhausted(player)
	if (player) then 
		player:setExhaustion(self.storages.exhaustion, self.exhaustionTime)
	end 
end 

function trainingWeaponSys:setEventId(player, eventId)
	if (player) then
		player:setStorageValue(self.storages.eventId, eventId) 
	end
end

function trainingWeaponSys:getEventId(player)
	if (player) then
		return player:getStorageValue(self.storages.eventId) 
	end

	return 0
end

function trainingWeaponSys:cancelEvent(player, eventId)
	if (player) then
		player:setTraining(false) 
		stopEvent(trainingTable[eventId])
		self:setEventId(player, 0)
		trainingTable[eventId] = nil
		self:addExhausted(player)
	end
end 

function trainingWeaponSys:onLogout(player)
	if player then
		if trainingWeaponSys:isTraining(player) then
			local eventId = trainingWeaponSys:getEventId(player)
			if eventId > 0 then
				trainingWeaponSys:cancelEvent(player, eventId)
			end
		end
	end
end

function trainingWeaponSys:isTraining(player)
	return player and trainingTable[self:getEventId(player)] ~= nil
end

function trainingWeaponSys:isWeapon(item)
	return self.weapons[item:getId()] and true
end

function trainingWeaponSysExecute(cid, weapon, eventId, startPos, dummyPos, itemId, dummyId)
	local player = Player(cid)
	if (not player) then
		trainingTable[eventId] = nil
		--print("no player")
		return false
	end 

	local tile = Tile(dummyPos)
	if (not tile or not tile:getItemById(dummyId)) then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "Training dummy not found.")
		trainingWeaponSys:cancelEvent(player, eventId)
		return false 
	end 

	local item = player:getItemById(itemId, true)--player:getSlotItem(CONST_SLOT_AMMO)
	if (not item) then 
		--print("not item")
		trainingWeaponSys:cancelEvent(player, eventId)
		return false
	end 

	local pos = player:getPosition()

	if (pos ~= startPos) then 
		--print("cancel due to pos")
		trainingWeaponSys:cancelEvent(player, eventId)
		return false
	end 

	local charges = item:getAttribute(ITEM_ATTRIBUTE_CHARGES)
	-- local newCharges = item:getAttribute(ITEM_ATTRIBUTE_CHARGES,charges - 1)

	if (not testMode) then 
		if (charges <= 0) then 
			item:remove()
		else
			item:setAttribute(ITEM_ATTRIBUTE_CHARGES, (charges) - 1)
		end 
	end 

	local magicEffect, distanceEffect
	local effectInfo 
	if (weapon.skillId) then 
		effectInfo = trainingWeaponSys.effects[weapon.skillId]
		if (effectInfo) then 
			if (effectInfo.magic) then
				magicEffect = effectInfo.magic
			end

			if (effectInfo.distance) then
				distanceEffect = effectInfo.distance
			end
		end 
	end 

	if (weapon.mana) then
		
		effectInfo = trainingWeaponSys.effects["MANA_SPENT"]
		if weapon.druid then
			effectInfo = trainingWeaponSys.effects["MANA_DRUID"]
		end
		
		if (effectInfo) then 
			if (effectInfo.magic) then
				magicEffect = effectInfo.magic
			end

			if (effectInfo.distance) then
				distanceEffect = effectInfo.distance
			end
		end 
		 
	end 

	dummyPos:sendMagicEffect(CONST_ME_HITAREA)
	if (distanceEffect) then 
		startPos:sendDistanceEffect(dummyPos, distanceEffect)
	end 
	
	local dummy = trainingWeaponSys.dummies[dummyId]

	if (weapon.skillId) then
		local skillRateDefault = configManager.getNumber(configKeys.RATE_SKILL)
		local skillRate = getRateFromTable(skillsStages, player:getEffectiveSkillLevel(weapon.skillId), skillRateDefault)
		local skillTries = trainingWeaponSys.skillTries 

		--SkillRate
		skillTries = skillTries * skillRate

		--extra dummies percent
		skillTries = skillTries * (player:isPremium() and dummy.premium or dummy.free)
		
		if (testMode and testModeDisableAllBonuses) then 
			skillTries = trainingWeaponSys.skillTries 
		end 

		player:addSkillTries(weapon.skillId, skillTries)
	end

	if (weapon.mana) then
		local magicRateDefault = configManager.getNumber(configKeys.RATE_MAGIC)
		local magicRate = getRateFromTable(magicLevelStages, player:getMagicLevel(), magicRateDefault)
		local manaSpent = trainingWeaponSys.manaSpent

		manaSpent =  manaSpent * (player:isPremium() and dummy.premium or dummy.free)

		manaSpent = (manaSpent * magicRate)

		if (testMode and testModeDisableAllBonuses) then 
			manaSpent = trainingWeaponSys.manaSpent 
		end

		player:addManaSpent(manaSpent)
	end 

	local newUses = trainingWeaponSys:getUses(player)
	newUses = newUses + 1

	if (newUses >= trainingWeaponSys.maxUses) then
		trainingWeaponSys:cancelEvent(player, eventId)
		return true
	end 

	trainingWeaponSys:setUses(player, newUses)

	trainingTable[eventId] = addEvent(trainingWeaponSysExecute, trainingWeaponSys.secondsBetweenTraining * 1000,  cid, weapon, eventId, startPos, dummyPos, itemId, dummyId)
end 

function trainingWeaponSys:startTraining(player, item, fromPos, toPos, dummyId)
	if (player) then 
		local weapon = self.weapons[item:getId()]
		if (not weapon) then 
			player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can't train with this item.")
			return false
		end 

		local distance = fromPos:getDistance(toPos)


		if (distance > weapon.distance) then 
			player:sendTextMessage(MESSAGE_STATUS_SMALL, string.format("You need to be at %d sqms from dummy to use this weapon.", weapon.distance))

			return false
		end 

		player:setTraining(true)
		trainingWeaponSys:setUses(player, 0)
		local eventId = #trainingTable + 1
		self:setEventId(player, eventId)

		trainingTable[eventId] = addEvent(trainingWeaponSysExecute, self.secondsBetweenTraining * 1000,  player:getId(), weapon, eventId, fromPos, toPos, item:getId(), dummyId)
	end
end