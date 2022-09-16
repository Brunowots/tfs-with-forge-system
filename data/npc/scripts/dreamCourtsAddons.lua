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
	
	local lookType = (player:getSex() == 0) and 1147 or 1146
	
	if msgcontains(msg:lower(), "addon") then
		if not player:hasOutfit(lookType) then
			npcHandler:say("you don't have the outfit", cid)
			return false
		end
		
		npcHandler:say("Are you interested in one or two addons to your dream warrior outfit?", cid)
		npcHandler:say("I provide two addons. For the first one I need you to bring me five pomegranates. For the second addon you need an ice shield. Do you want one of these addons?", cid)
		npcHandler:say("What do you have for me: the {pomegranates} or the {ice shield}?", cid)
		return false
	elseif msgcontains(msg:lower(), "pomegranates") then
		if not player:hasOutfit(lookType) then
			npcHandler:say("you don't have the outfit", cid)
			return false
		end
		if player:hasOutfit(lookType, 1) then
			npcHandler:say("you already have the first addon, you want the second? {ice shield}?", cid)
			return false
		end
		
		if player:getItemCount(34807) < 5 then
			npcHandler:say("you dont have 5 {pomegranates}!", cid)
			return false
		end
		
		if player:removeItem(34807, 5) then
			player:addOutfitAddon(lookType, 1)
			npcHandler:say("Very good! You gained the first addon to the dream warrior outfit.", cid)
			return false
		end
		
		return false
	elseif msgcontains(msg:lower(), "ice shield") then
		if not player:hasOutfit(lookType) then
			npcHandler:say("you don't have the outfit", cid)
			return false
		end
		if player:hasOutfit(lookType, 2) then
			npcHandler:say("you already have the second addon!", cid)
			return false
		end
		if player:getItemCount(34806) < 1 then
			npcHandler:say("you dont have a {ice shield}!", cid)
			return false
		end
		if player:removeItem(34806, 1) then
			player:addOutfitAddon(lookType, 2)
			npcHandler:say("Very good! You gained the second addon to the dream warrior outfit.", cid)
			return false
		end
		
		return false
	end
	
	
	
	return false
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Greetings hero. I guess you came to talk.")

npcHandler:addModule(FocusModule:new())