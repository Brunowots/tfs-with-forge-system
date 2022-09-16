local ObujosTanjis = ((math.random(0,1) == 1) and "Obujos" or "Tanjis")

local deepling_bosses = {
	days = {
		["Monday"] = ObujosTanjis,
		["Tuesday"] = ObujosTanjis,
		["Wednesday"] = ObujosTanjis,
		["Thursday"] = ObujosTanjis,
		["Friday"] = ObujosTanjis,
		["Saturday"] = ObujosTanjis,
		["Sunday"] = "Jaul",
	},
	portals = {
		["Jaul"] = {pos = Position(33558, 31282, 11), actionId = 60001},
		["Obujos"] = {pos = Position(33434, 31248, 11), actionId = 60002},
		["Tanjis"] = {pos = Position(33647, 31262, 11), actionId = 60003},
	},
}

local deepling_rooms = {
	["Jaul"] = {
		spawnpos = Position(33546, 31274, 11),
		center = Position(33542, 31268, 11),
		range = {x = 13, y = 9},
		exitPos = Position(33560, 31286, 11),
	},
	["Obujos"] = {
		spawnpos = Position(33435, 31262, 11),
		center = Position(33429, 31263, 11),
		range = {x = 18, y = 13},
		exitPos = Position(33446, 31247, 11),
	},
	["Tanjis"] = {
		spawnpos = Position(33647, 31249, 11),
		center = Position(33644, 31241, 11),
		range = {x = 12, y = 13},
		exitPos = Position(33641, 31266, 11),
	},
}

function DeeplingBossesOnDisappear(creature)
	if not creature then return false end
	local dayBoss = creature:getName()
	addEvent(function()
		if not Creature(dayBoss) then
			Game.createMonster(dayBoss, deepling_rooms[dayBoss].spawnpos , true, true)
		end
	end, 300000)
end

if not DEEPLING_BOSSES_CONFIG then
	DEEPLING_BOSSES_CONFIG = {}
	DEEPLING_BOSSES_CONFIG.rooms = deepling_rooms
	DEEPLING_BOSSES_CONFIG.others = deepling_bosses
	DEEPLING_BOSSES_CONFIG.data = {}
	DEEPLING_BOSSES_CONFIG.data.portalIsCreated = 0
end

local function getDayDeeplingBoss()
	local day = os.date("%A")
	if not DEEPLING_BOSSES_CONFIG.data.dayBoss then
		local boss = deepling_bosses.days[day]
		if not boss then
			Spdlog.info("[DeeplingBosses] day boss init failed.")
		end
		Spdlog.info("[DeeplingBosses] Today boss is: ".. boss)
		addEvent(function() Webhook.specialSend("[DEEPLINGS]", "Today deepling boss is: " .. boss, WEBHOOK_COLOR_RAID, webhookChannels["deeplings"]) end, 10000)
		
		DEEPLING_BOSSES_CONFIG.data.dayBoss = boss
	end
	return DEEPLING_BOSSES_CONFIG.data.dayBoss
end

getDayDeeplingBoss()

local function checkPortals(dayBoss)
	local portal = deepling_bosses.portals[dayBoss]
	if not portal then
		return
	end
	local tile = Tile(portal.pos)
	if tile then
		if not tile:getItemById(1387) then
			local teleportItem = Game.createItem(1387, 1, portal.pos)
			if teleportItem then
				teleportItem:setUniqueId(portal.actionId)
				DEEPLING_BOSSES_CONFIG.data.portalIsCreated = 1
			end
		end
	end
end

local function deeplingBosses_init(dayBoss)
	if DEEPLING_BOSSES_CONFIG.data.portalIsCreated ~= 1 then
		checkPortals(dayBoss)
	end
	local boss = Game.createMonster(dayBoss, deepling_rooms[dayBoss].spawnpos , true, true)
	if not boss then
		Spdlog.info("[DeeplingBosses] Failed spawn boss, trie again in 5 minutes ")
		addEvent(deeplingBosses_init, 300000, dayBoss)
		return
	end
end

local deeplingBossDay = GlobalEvent("deeplingBossDay")
function deeplingBossDay.onStartup()
	local dayBoss = DEEPLING_BOSSES_CONFIG.data.dayBoss
	if not dayBoss then
		Spdlog.info("[DeeplingBosses] Failed to init ")
	end
	deeplingBosses_init(dayBoss)
	return true
end

deeplingBossDay:register()