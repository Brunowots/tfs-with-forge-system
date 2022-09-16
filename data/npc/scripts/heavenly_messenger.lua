local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local function creatureSayCallback(cid, type, msg)
	local player = Player(cid)
	if not player then return false end

	local lookType = (player:getSex() == 0) and 845 or 846
	
	if msgcontains(msg:lower(), "rift") then
		if player:hasOutfit(lookType) then
			npcHandler:say("you already have the Rift Warrior outfit's", cid)
			return false
		end
		player:addOutfit(lookType)
		npcHandler:say("Very good! You received the Rift Warrior outfit's", cid)
		return false
	end
	
	return false
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Greetings, warrior of the rift! I am a messenger of the heavenly forces.")

npcHandler:addModule(FocusModule:new()) 