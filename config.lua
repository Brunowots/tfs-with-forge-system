-- Combat settings
-- NOTE: valid values for worldType are: "pvp", "no-pvp" and "pvp-enforced"
worldType = "pvp"
hotkeyAimbotEnabled = true
protectionLevel = 50
pzLocked = 13 * 1000
removeChargesFromRunes = true
removeChargesFromPotions = true
removeWeaponAmmunition = true
removeWeaponCharges = true
timeToDecreaseFrags = 1 * 24 * 60 * 60
whiteSkullTime = 10 * 60 * 1000
stairJumpExhaustion = 2 * 1000
experienceByKillingPlayers = false
expFromPlayersLevelRange = 75
dayKillsToRedSkull = 15
weekKillsToRedSkull = 25
monthKillsToRedSkull = 40
redSkullDuration = 1
blackSkullDuration = 1
orangeSkullDuration = 7

onlyInvitedCanMoveHouseItems = true
cleanProtectionZones = false

-- Reward bag duration in seconds
-- toda vez que o player dropa reward bag, desloga e loga, se a data da bag ultrapassa esse tempo, exclui ela.
rewardBagDuration = 86400

-- Connection Config
-- NOTE: maxPlayers set to 0 means no limit
-- NOTE: MaxPacketsPerSeconds if you change you will be subject to bugs by WPE, keep the default value of 25

ip = "104.237.2.229"
bindOnlyGlobalAddress = false
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = 1000
motd = "Welcome to Name Global"
onePlayerOnlinePerAccount = true
allowClones = false
serverName = "Name-Global"
statusTimeout = 5 * 1000
replaceKickOnLogin = true
maxPacketsPerSecond = 100
maxItem = 2000
maxContainer = 100

-- Version
clientVersion = 1287
clientVersionStr = "12.87"

-- Depot Limit
freeDepotLimit = 2000
premiumDepotLimit = 10000
depotBoxes = 18

-- Market Stash
marketActionsWithStash = false

-- Stamina in Trainers
staminaTrainer = true
staminaTrainerDelay = 2
staminaTrainerGain = 1

-- Stamina in PZ
staminaPz = true
staminaOrangeDelay = 2
staminaGreenDelay = 2
staminaPzGain = 1

-- GameStore
gamestoreByModules = true

-- NOTE: Access only for Premium Account
onlyPremiumAccount = false

-- Customs
weatherRain = true
thunderEffect = true
freeQuests = true
allConsoleLog = false

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
-- Periods: daily/weekly/monthly/yearly/never
housePriceEachSQM = 3500
houseRentPeriod = "weekly"
houseOwnedByAccount = false

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 1000

-- Push Delay
pushDelay = 1000
pushDistanceDelay = 1400

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
-- NOTE: unzip the map world.rar
mapName = "map"
mapAuthor = "OTServBR"

-- Party List limitations
-- max distance in which players in party list are visible
-- NOTE partyListMaxDistance set to 0 means no limit
partyListMaxDistance = 60

-- Custom Map
-- NOTE: mapCustomEnabled: true = activate the map, false = disable the map
mapCustomName = "otservbr-custom"
mapCustomFile = "data/world/custom/otservbr-custom.otbm"
mapCustomSpawn = "data/world/custom/otservbr-custom-spawn.xml"
mapCustomAuthor = "OTServBR"
mapCustomEnabled = true

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = true
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = ""
mysqlPass = ""
mysqlDatabase = ""
mysqlPort = 3306
mysqlSock = ""
-- passwordType = "sha1"

-- Misc.
allowChangeOutfit = true
freePremium = true
kickIdlePlayerAfterMinutes = 120
maxMessageBuffer = 4
emoteSpells = true
classicEquipmentSlots = false
allowWalkthrough = true
coinPacketSize = 5
coinImagesURL = "http://zeyrot.com.br/images/store/"
classicAttackSpeed = false
showScriptsLogInConsole = false

-- Server Save
-- NOTE: serverSaveNotifyDuration in minutes
serverSaveNotifyMessage = true
serverSaveNotifyDuration = 5
serverSaveCleanMap = true
serverSaveClose = true
serverSaveShutdown = true

-- Prey system
-- NOTE: preyRerollPricePerLevel: Price multiplier in gold coin for rerolling prey list.
-- NOTE: preySelectListPrice: Price to manually select creature on list and to lock prey slot.
-- NOTE: preyBonusRerollPrice: Price to manually reroll bonus type and to enable automatic reroll.
-- NOTE: preyBonusTime: Time in seconds that players will have of prey bonus.
-- NOTE: preyFreeRerollTime: Time in seconds that players will have to wait to get a new free prey list.
preySystemEnabled = true
preyFreeThirdSlot = false
preyRerollPricePerLevel = 200
preySelectListPrice = 1
preyBonusRerollPrice = 2
preyBonusPercentMin = 5
preyBonusPercentMax = 40
preyBonusTime = 2 * 60 * 60
preyFreeRerollTime = 20 * 60 * 60

-- Task hunting system
-- NOTE: taskHuntingLimitedTasksExhaust: Time to wait to select a new creature on the task hunting slot after claiming the reward.
-- NOTE: taskHuntingRerollPricePerLevel: Price multiplier in gold coin for rerolling task hunting list.
-- NOTE: taskHuntingFreeRerollTime: Time in seconds that players will have to wait to get a new free task hunting list.
taskHuntingSystemEnabled = true
taskHuntingFreeThirdSlot = false
taskHuntingLimitedTasksExhaust = 20 * 60 * 60
taskHuntingRerollPricePerLevel = 200
taskHuntingSelectListPrice = 1
taskHuntingBonusRerollPrice = 2
taskHuntingFreeRerollTime = 20 * 60 * 60

-- Rates
-- NOTE: rateExp, rateSkill and rateMagic is used as a fallback only
-- To configure rates see file data/stages.lua
rateExp = 1
rateSkill = 1
rateLoot = 100
rateMagic = 1
rateSpawn = 2

-- Monster rates
rateMonsterHealth = 1.0
rateMonsterAttack = 1.0
rateMonsterDefense = 1.0

-- Monsters
deSpawnRange = 2
deSpawnRadius = 50

-- Stamina
staminaSystem = true

-- Scripts
warnUnsafeScripts = true
convertUnsafeScripts = true

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process
-- priority, valid values are: "normal", "above-normal", "high"
defaultPriority = "high"
startupDatabaseOptimization = true

-- Status server information
ownerName = ""
ownerEmail = ""
url = ""
location = ""

-- Sends Discord webhook notifications on startup, raids and shutdown.
-- The URL layout is https://discord.com/api/webhooks/:id/:token
-- Leave empty if you wish to disable.
discordWebhookURL = ""
