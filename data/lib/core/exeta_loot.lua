if not DIRECT_GOLD_MESSAGES then
	DIRECT_GOLD_MESSAGES = {}
end

DIRECT_GOLD_WARN_DELAY = 5 -- seconds

function Player.lootAllArea(self, area)
	local centerPos = self:getPosition()
	local colMiddle = math.floor(#area[1] / 2) + 1
	local lineMiddle = math.floor(#area / 2) + 1
	local posAjusted = Position(centerPos.x - colMiddle, centerPos.y - lineMiddle, centerPos.z)
	for i = 1, #area do
		local line = area[i]
		for o = 1, #line do
			if area[i][o] == 1 then
				local pos = Position(posAjusted.x + o, posAjusted.y + i, posAjusted.z)
				local tile = Tile(pos)
				if tile then
					self:lootAllTile(tile)
					pos:sendMagicEffect(15)
				end
			end
		end
	end
end

function Player.lootCorpse(self, corpse)
	if not self or not corpse then return false end
	if corpse:getItemHoldingCount() <= 0 then
		return false
	end
	local ownerId = corpse:getCorpseOwner()
	if not ownerId then
		return false
	end
	if ownerId == 0 then
		self:quickLoot(corpse)
		return true
	end
	if ownerId == self:getId() then
		self:quickLoot(corpse)
		return true
	end
	local owner = Player(ownerId)
	if not owner then
		return false
	end
	local selfParty, ownerParty = self:getParty(), owner:getParty()
	if not selfParty or not ownerParty then
		return false
	end
	if selfParty == ownerParty then
		self:quickLoot(corpse)
		return true
	end
	return false
end

function Player.lootAllTile(self, tile)
	if not self or not tile then return false end
	local thingCount = tile:getThingCount()
	if thingCount then
		for i = 0, thingCount do
			local thing = tile:getThing(i)
			if thing then
				if thing:isItem() then
					if ItemType(thing:getId()):isContainer() then
						self:lootCorpse(thing)
					end
				end
			end
		end
	end
end

-- function Player.DirectGoldMessagesStore(self, value)
	-- if not self or not value then return false end
	-- if not DIRECT_GOLD_MESSAGES[self:getId()] then
		-- DIRECT_GOLD_MESSAGES[self:getId()] = {}
		-- DIRECT_GOLD_MESSAGES[self:getId()].value = 0
		-- DIRECT_GOLD_MESSAGES[self:getId()].time = 0
	-- end
	-- DIRECT_GOLD_MESSAGES[self:getId()].value = DIRECT_GOLD_MESSAGES[self:getId()].value + value
	-- if DIRECT_GOLD_MESSAGES[self:getId()].value > 0 then
		-- if DIRECT_GOLD_MESSAGES[self:getId()].time < os.time() then
			-- self:sendTextMessage(MESSAGE_LOOT, "[DIRECT GOLD] " .. DIRECT_GOLD_MESSAGES[self:getId()].value .. " gold depositado no seu BANK.")
			-- DIRECT_GOLD_MESSAGES[self:getId()].time = os.time() + DIRECT_GOLD_WARN_DELAY
			-- DIRECT_GOLD_MESSAGES[self:getId()].value = 0
			-- return false
		-- end
	-- end
	-- return true
-- end