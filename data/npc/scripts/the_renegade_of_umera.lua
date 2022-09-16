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

local voices = {
	{text = "I can't believe I was forced to do this... Sell items to lazy idiots."},
	{text = "People could run after their own items..."},
	{text = "Don't waste my time."},
	{text = "Get on with it..."},
}
npcHandler:addModule(VoiceModule:new(voices))

npcHandler:setMessage(MESSAGE_GREET, "Who are you?, |PLAYERNAME|? get out of my face.")
npcHandler:setMessage(MESSAGE_FAREWELL, "hur.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "hur.")

npcHandler:addModule(FocusModule:new())
