local testTalk = TalkAction("/promocionalto")

-- Outfit aleatorio
-- Mount aleatoria
-- Infinit Food
-- Teleport Stone

--[[
grupo 1 (20 reais)
Outfit aleatorio
]]--

--[[
grupo 2 (50 reais)
Outfit aleatorio
Mount aleatoria
Infinit food
]]--

--[[
grupo 3 (100 reais)
Outfit aleatorio
Mount aleatoria
Infinit food
Teleport Stone
]]--

local groups = {
	[20] = {
		outfit = true,
		vipDays = 15,
	},
	[50] = {
		mount = true,
		outfit = true,
		food = true,
		vipDays = 30,
	},
	[100] = {
		mount = true,
		outfit = true,
		food = true,
		stone = true,
		vipDays = 60,
	},
}

local looktypes = {
	[0] = {
		136, 137, 139, 140, 141,142,147,148,149,150,155,156,157,158,252,269,270,279,288,324,329,336,366,
		431,433,464,466,471,513,514,542,575,578,618,620,632,635,636,664,666,683,694,696,698,724,732,745,749,
		759,845,852,874,885,900,909,929,956,958,963,965,967,969,971,973,975,1020,1024,1043,1050,1057,1070,1095,1103,
		1128,1147,1162,1174,1187,1244,1246,1252,1271,1280,1283,1289,1293,1323,1332,1339,1372,1383,1385,1387,
		1416,1437,1445,1450,1456,1461,1490
	},
	[1] = {
		128,129,131,132,133,134,143,144,145,146,151,152,153,154,251,268,273,278,289,325,328,335,367,430,432,463,
		465,472,512,516,541,574,577,610,619,633,634,637,665,667,684,695,697,699,725,733,746,750,760,846,853,873,
		884,899,908,931,955,957,962,964,966,968,970,972,974,1021,1023,1042,1051,1056,1069,1094,1102,1127,1146,1161,
		1173,1186,1243,1245,1251,1270,1279,1282,1288,1292,1322,1331,1338,1371,1382,1384,1386,1415,1436,
		1444,1449,1457,1460,1489
	},
}

local function doAddInfinityFood(player)
	if not player then return false end
	local inbox = player:getSlotItem(CONST_SLOT_STORE_INBOX)
	if inbox then
		if not inbox:addItem(35060, 1) then
			return false
		end
	end
	return true
end

local function doAddTeleportStone(player)
	if not player then return false end
	local inbox = player:getSlotItem(CONST_SLOT_STORE_INBOX)
	if inbox then
		if not inbox:addItem(40744, 1) then
			return false
		end
	end
	return true
end

-- player:addMount(mountId or mountName)
local function doAddRandomMount(player)
	if not player then return false end
	local randMount = math.random(1,194)
	while (randMount == 168 or randMount == 169 or randMount == 170) do
		randMount = math.random(1,194)
	end
	player:addMount(randMount)
	return true
end

local function doAddRandomOutfit(player)
	if not player then return false end
	
	local sex = player:getSex()
	local lookData = looktypes[sex]
	if not lookData then return false end
	
	local randomLook = lookData[math.random(#lookData)]
	
	player:addOutfit(randomLook)
	player:addOutfitAddon(randomLook, 1)
	player:addOutfitAddon(randomLook, 2)
	return true
end

function testTalk.onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end
	
	local howToUse = "/promocionalto nomeDoPlayer, groupId (20,50,100)"
	
	if param == "" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "missing parameter\n"..howToUse)
		return false
	end
	
	local split = param:split(",")
	if not split[1] or not split[2] then
		return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "missing command parameter\n"..howToUse)
	end
	
	local target = Player(split[1])
	if not target then
		return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "player n encontrado\n"..howToUse)
	end
	
	local groupId = tonumber(split[2])
	local groupData = groups[groupId]
	
	if not groupData then
		player:sendCancelMessage("Grupo inválido (20, 50 ,100).\n"..howToUse)
		return false
	end
	
	if groupData.outfit then
		if not doAddRandomOutfit(target) then
			player:sendCancelMessage("outfit não chegou para o player")
		end
	end
	if groupData.mount then
		if not doAddRandomMount(target) then
			player:sendCancelMessage("Montaria não chegou para o player")
		end
	end
	if groupData.food then
		if not doAddInfinityFood(target) then
			player:sendCancelMessage("infinit food não chegou para o player")
		end
	end
	if groupData.stone then
		if not doAddTeleportStone(target) then
			player:sendCancelMessage("teleport stone não chegou para o player")
		end
	end
	if groupData.vipDays then
		target:addVipDays(groupData.vipDays)
	end
	
	player:sendCancelMessage("Promocionais de ".. groupId .." reais adicionados para: ".. target:getName()..".")
	return false
end

testTalk:separator(" ")
testTalk:register()