MARKET_IMBUI_ITEMS = {
	[12448] = {price = 1000, minCount = 500, maxCount = 1500},
	[22534] = {price = 7000, minCount = 500, maxCount = 1500},
	[25386] = {price = 15000, minCount = 500, maxCount = 1500},
	[10602] = {price = 6000, minCount = 500, maxCount = 1500},
	[10550] = {price = 3000, minCount = 500, maxCount = 1500},
	[10580] = {price = 10000, minCount = 500, maxCount = 1500},
	[12400] = {price = 1000, minCount = 500, maxCount = 1500},
	[11228] = {price = 3000, minCount = 500, maxCount = 1500},
	[25384] = {price = 20000, minCount = 500, maxCount = 1500},

	[24709] = {price = 5000, minCount = 500, maxCount = 1500},
	[26163] = {price = 4000, minCount = 500, maxCount = 1500},
	[19738] = {price = 3000, minCount = 500, maxCount = 1500},
	[11219] = {price = 1000, minCount = 500, maxCount = 1500},
	[15484] = {price = 2500, minCount = 500, maxCount = 1500},
	[28999] = {price = 500, minCount = 500, maxCount = 1500},
	[29007] = {price = 1000, minCount = 500, maxCount = 1500},
	[22539] = {price = 10000, minCount = 500, maxCount = 1500},
	[20103] = {price = 2000, minCount = 500, maxCount = 1500},
	[10611] = {price = 4000, minCount = 500, maxCount = 1500},
	[12658] = {price = 3000, minCount = 500, maxCount = 1500},
	[11212] = {price = 3000, minCount = 500, maxCount = 1500},
	[15425] = {price = 5000, minCount = 500, maxCount = 1500},
	[12422] = {price = 2000, minCount = 500, maxCount = 1500},
	[24663] = {price = 3000, minCount = 500, maxCount = 1500},
	[10577] = {price = 7000, minCount = 500, maxCount = 1500},
	[5877] = {price = 3000, minCount = 500, maxCount = 1500},
	[18425] = {price = 7000, minCount = 500, maxCount = 1500},
	[12614] = {price = 4000, minCount = 500, maxCount = 1500},
	[10556] = {price = 2000, minCount = 500, maxCount = 1500},
	[10555] = {price = 5000, minCount = 500, maxCount = 1500},
	[11221] = {price = 7000, minCount = 500, maxCount = 1500},
	[10561] = {price = 5000, minCount = 500, maxCount = 1500},
	[15482] = {price = 2500, minCount = 500, maxCount = 1500},
	[10582] = {price = 1500, minCount = 500, maxCount = 1500},
	[10603] = {price = 3000, minCount = 500, maxCount = 1500},
	[10557] = {price = 4000, minCount = 500, maxCount = 1500},
	[23565] = {price = 2500, minCount = 500, maxCount = 1500},
	[10553] = {price = 3000, minCount = 500, maxCount = 1500},
	[5920] = {price = 5000, minCount = 500, maxCount = 1500},
	[5954] = {price = 7000, minCount = 500, maxCount = 1500},
	[12440] = {price = 2500, minCount = 500, maxCount = 1500},
	[10564] = {price = 3000, minCount = 500, maxCount = 1500},
	[10564] = {price = 7000, minCount = 500, maxCount = 1500},
	[10578] = {price = 10000, minCount = 500, maxCount = 1500},
	[24170] = {price = 5000, minCount = 500, maxCount = 1500},
	[10567] = {price = 5000, minCount = 500, maxCount = 1500},
	[10568] = {price = 6000, minCount = 500, maxCount = 1500},
	[24631] = {price = 7000, minCount = 500, maxCount = 1500},
	[26164] = {price = 3000, minCount = 500, maxCount = 1500},
	[10608] = {price = 2000, minCount = 500, maxCount = 1500},
	[23573] = {price = 6000, minCount = 500, maxCount = 1500},
	[10571] = {price = 30000, minCount = 500, maxCount = 1500},
	[12420] = {price = 1000, minCount = 500, maxCount = 1500},
	[21311] = {price = 2000, minCount = 500, maxCount = 1500},
	[11215] = {price = 5000, minCount = 500, maxCount = 1500},
	[10552] = {price = 1000, minCount = 500, maxCount = 1500},
	[12408] = {price = 3000, minCount = 500, maxCount = 1500},
	[11226] = {price = 5500, minCount = 500, maxCount = 1500},
	[11113] = {price = 2500, minCount = 500, maxCount = 1500},
	[12403] = {price = 5000, minCount = 500, maxCount = 1500},
	[23571] = {price = 6000, minCount = 500, maxCount = 1500},
	[10558] = {price = 1500, minCount = 500, maxCount = 1500},
	[12659] = {price = 3300, minCount = 500, maxCount = 1500},
	[22533] = {price = 4000, minCount = 500, maxCount = 1500},
	[10574] = {price = 2000, minCount = 500, maxCount = 1500},
	[24845] = {price = 2000, minCount = 500, maxCount = 1500},
	[11322] = {price = 5000, minCount = 500, maxCount = 1500},
}

SELLER_GUID = 1347
ON_START_UP_DATA_OFFERS = {}

local function getDatabaseMarketOffersByItemId(itemId)
	local entries = {}
	local resultId = db.storeQuery("SELECT * FROM `market_offers` WHERE `itemtype` = " .. itemId .. ";")
	if resultId ~= false then
		repeat
			local entry = {
				id = result.getDataInt(resultId, "id"),
				player_id = result.getDataInt(resultId, "player_id"),
				itemtype = itemId,
				sale = result.getDataInt(resultId, "sale"),
				amount = result.getDataInt(resultId, "amount"),
				created = result.getDataInt(resultId, "created"),
				anonymous = result.getDataInt(resultId, "anonymous"),
				price = result.getDataInt(resultId, "price"),
			}
			table.insert(entries, entry)
		until not result.next(resultId)
		result.free(resultId)
	end
	return entries
end

function startUpStoreDataOffers()
	ON_START_UP_DATA_OFFERS = {}
	for itemId, prop in pairs(MARKET_IMBUI_ITEMS) do
		local consult = getDatabaseMarketOffersByItemId(itemId)
		for entries, entry in pairs(consult) do
			local temp_table = {}
			temp_table.id = entry.id
			temp_table.itemtype = entry.itemtype
			temp_table.sale = entry.sale
			temp_table.amount = entry.amount
			temp_table.created = entry.created
			temp_table.anonymous = entry.anonymous
			temp_table.price = entry.price
			table.insert(ON_START_UP_DATA_OFFERS, temp_table)
		end
	end
	addEvent(missingImbueMarketManager, 10000)
end

function getCountOfItemInMarket(targetId)
	local count = 0
	for offerId, offer in pairs(ON_START_UP_DATA_OFFERS) do
		if targetId == offer.itemtype then
			count = count + offer.amount
		end
	end
	return count
end

function marketManagerCreateOffer(itemId, count, price)
	db.query("INSERT INTO `market_offers` (`player_id`, `sale`, `itemtype`, `amount`, `created`, `anonymous`, `price`) VALUES (" .. SELLER_GUID .. ", 1, " .. itemId .. ", " .. count .. ", " .. os.time() .. ", 1, " .. price .. ")")
end

function missingImbueMarketManager()
	for itemId, prop in pairs(MARKET_IMBUI_ITEMS) do
		local countInMarket = getCountOfItemInMarket(itemId)
		if countInMarket < prop.minCount then
			local price = prop.price - (prop.price * 0.22)
			local count = math.random(prop.minCount, prop.maxCount)
			
			if count > 0 and price > 0 then
				marketManagerCreateOffer(itemId, count, price)
			end
		end
	end
end

local vipTime = TalkAction("/missingImbueMarketManager")

function vipTime.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end
	startUpStoreDataOffers()
	return false
end

vipTime:register()
