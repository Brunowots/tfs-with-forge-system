local function generateWords()
	if GENERATED_LIST_STRING then
		return GENERATED_LIST_STRING
	end
	GENERATED_LIST_STRING = table.concat(getAvaliableOutfitAddonsList())
end

generateWords()

local function checkAddonItems(player, OutfitData, addon)
	if not player or not OutfitData or not addon then
		return false
	end
	local items = OutfitData.addonsItems[addon]
	if not items then
		return false
	end
	
	for _, item in pairs(items) do
		local id = item[1]
		local count = item[2]
		if player:getItemCount(id) < count then
			return false
		end
	end
	return true
end
local function removeAddonItemsAndMoney(player, OutfitData, addon)
	if not player or not OutfitData or not addon then
		return false
	end
	local items = OutfitData.addonsItems[addon]
	if not items then
		return false
	end
	
	for _, item in pairs(items) do
		local id = item[1]
		local count = item[2]
		if not player:removeItem(id, count) then
			return false
		end
	end
	
	local money = player:getMoney()
	local balance = player:getBankBalance()
	local cost = 50000
	if money >= cost then
		player:removeMoney(cost)
	else
		local left = cost - money
		player:removeMoney(money)
		player:setBankBalance(balance - left)
	end
	return true
end

local function addonerUpdate(player, lookType, addon)
	if not player then return false end
	local outfit = player:getOutfit()
	if not outfit then return false end
	outfit.lookAddons = lookType
	outfit.lookAddons = addon
	player:setOutfit(outfit)
	return true
end

function Player.buyOutfitAddon(self, outfit, addon)
	local OutfitData = OutfitBase:New({outfit, self:getSex()})
	if not OutfitData then
		sendAddonnerError(self:getId(), "Try later..") 
		return true
	end
	local lookType = OutfitData.looktype
	if not lookType then
		sendAddonnerError(self:getId(), "Try later..") 
		return false
	end
	if not self:hasOutfit(lookType) then
		sendAddonnerError(self:getId(), "You need have the outfit.")
		return false
	end
	if self:hasOutfit(lookType, addon) then
		sendAddonnerError(self:getId(), "You already have this addon")
		return false
	end
	if addon == 2 then
		if not self:hasOutfit(lookType, 1) then
			sendAddonnerError(self:getId(), "You need addon 1 before addon 2")
			return false
		end
	end
	if not checkAddonItems(self, OutfitData, addon) then
		sendAddonnerError(self:getId(), "You don't have all the items.")
		return false
	end
	if (self:getMoney() + self:getBankBalance()) < 50000 then
		sendAddonnerError(self:getId(), "You do not have enough money.")
		return false
	end
	if removeAddonItemsAndMoney(self, OutfitData, addon) then
		self:addOutfitAddon(lookType, addon)
		addonerUpdate(player, lookType, addon)
	else
		return false
	end
	sendAddonnerError(self:getId(), "Try later..") 
	return true
end

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
	npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
	npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
	npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
	npcHandler:onThink()
end

function sendAddonnerError(cid, text)
	npcHandler:say(text, cid)
end

AddonPlayerTalksHandler = {}

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if not player then
		return false
	end
	local choosedAddon, choosedOutfit, chooseConfirmation
	
	if not AddonPlayerTalksHandler[cid] then
		AddonPlayerTalksHandler[cid] = {}
		-- addEvent(function() AddonPlayerTalksHandler[cid] = nil end, 30 * 1000)
	end
	if AddonPlayerTalksHandler[cid].choosedOutfit then
		choosedOutfit = AddonPlayerTalksHandler[cid].choosedOutfit
	end
	if AddonPlayerTalksHandler[cid].choosedAddon then
		choosedAddon = AddonPlayerTalksHandler[cid].choosedAddon
	end
	if AddonPlayerTalksHandler[cid].chooseConfirmation then
		chooseConfirmation = AddonPlayerTalksHandler[cid].chooseConfirmation
	end
	
	if isValidOutfitName(msg) then
		local OutfitData = OutfitBase:New({msg, player:getSex()})
		if not OutfitData then
			npcHandler:say(GENERATED_LIST_STRING .. "\nYou need choose a outfit", cid)
			return true
		end
		AddonPlayerTalksHandler[cid].choosedOutfit = msg
		npcHandler:say("{first addon} or {second addon}?", cid)
	end
	
	if msgcontains(msg, 'first addon') or msgcontains(msg, 'second addon') then
		if choosedOutfit then
			if msgcontains(msg, 'first addon') then
				AddonPlayerTalksHandler[cid].choosedAddon = 1
			elseif msgcontains(msg, 'second addon') then
				AddonPlayerTalksHandler[cid].choosedAddon = 2
			end
			
			local OutfitData = OutfitBase:New({choosedOutfit, player:getSex()})
			if not OutfitData then
				npcHandler:say(GENERATED_LIST_STRING .. "\nYou need choose a outfit", cid)
				return true
			end
			
			if AddonPlayerTalksHandler[cid].choosedAddon then
				choosedAddon = AddonPlayerTalksHandler[cid].choosedAddon
			end
			if choosedAddon then
				local description = string.format("You want buy the addon %s of {%s} by:", choosedAddon, choosedOutfit)
				description = description .. string.format("\nRequired items: %s", OutfitData.addonsItemsStr[choosedAddon])
				description = description .. string.format("\n %s of money? {confirm}", 50000)
				npcHandler:say(description, cid)
				AddonPlayerTalksHandler[cid].chooseConfirmation = true
				return true
			end
		end
	end
	
	
	if msgcontains(msg, 'yes') or msgcontains(msg, 'confirm') or msgcontains(msg, 'ok') or msgcontains(msg, 'si') then
		if chooseConfirmation then
			if choosedOutfit and choosedAddon then
				if player:buyOutfitAddon(choosedOutfit, choosedAddon) then
					npcHandler:say(string.format("You Received the addon %s of %s", choosedAddon, choosedOutfit), cid)
				end
			end
		end
	end
	
	if msgcontains(msg, 'hi') then
		npcHandler:say(GENERATED_LIST_STRING, cid)
		return true
	end
	
	if msgcontains(msg, 'addons') then
		npcHandler:say(GENERATED_LIST_STRING, cid)
		return true
	end
	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())