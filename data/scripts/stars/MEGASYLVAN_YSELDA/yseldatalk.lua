local Yselda = TalkAction("DEMIHBOULDR SOMMBHA WITHER", "demihbouldr sommbha wither")

local function dotalkEvent(bId, times)
	if times <= 0 then
		Game.setStorageValue(Storage.MegasylvanYselda.imortal, 1)
		return
	end
	local boss = Creature(bId)
	if boss then
		boss:say("GRRRRRRR..", TALKTYPE_MONSTER_SAY)
		addEvent(dotalkEvent, 4000, bId, times-1)
	end
end

function Yselda.onSay(player, words, param)
	local boss = Creature("Megasylvan Yselda")
	if not boss then
		return false
	end
	local bId = boss:getId()
	local yseldanpc = Creature("Yselda")
	if not yseldanpc then
		return false
	end
	if yseldanpc:getPosition():getDistance(player:getPosition()) > 5 then
		return false
	end
	
	if Game.getStorageValue(Storage.MegasylvanYselda.imortal) == 1 then
		Game.setStorageValue(Storage.MegasylvanYselda.imortal, 0)
		yseldanpc:say("AAAAAAAAAAAAAH!!!", TALKTYPE_MONSTER_SAY)
		addEvent(dotalkEvent,2000, bId, 4)
	end
	
	return false
end

Yselda:separator(" ")
Yselda:register()
