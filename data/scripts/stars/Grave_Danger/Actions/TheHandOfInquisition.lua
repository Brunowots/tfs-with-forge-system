local TheHandOfInquisition = Action()

function TheHandOfInquisition.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local lookType = (player:getSex() == 0) and 1244 or 1243
	if not player:hasOutfit(lookType) then
		player:say("You not have Hand of the Inquisition Outfit", TALKTYPE_MONSTER_SAY)
		return true
	end
	
	if item:getId() == 36573 then
		if player:hasOutfit(lookType, 1) then
			player:say("Do you already have the addon 1", TALKTYPE_MONSTER_SAY)
			return true
		end
		player:addOutfitAddon(lookType, 1)
		player:say("You are brave enought to bear the final judgement.", TALKTYPE_MONSTER_SAY)
		item:remove()
		return true
	end
	
	if item:getId() == 36572 then
		if not player:hasOutfit(lookType, 1) then
			player:say("You need the first addon", TALKTYPE_MONSTER_SAY)
			return true
		end
		if player:hasOutfit(lookType, 2) then
			player:say("Do you already have the addon 2", TALKTYPE_MONSTER_SAY)
			return true
		end
		player:addOutfitAddon(lookType, 2)
		player:say("You are brave enought wear the shadow cowl.", TALKTYPE_MONSTER_SAY)
		item:remove()
		return true
	end
	
	return true
end

TheHandOfInquisition:id(36572, 36573)
TheHandOfInquisition:register()