-- Revenant

local RevenantOutfitItems = Action()

function RevenantOutfitItems.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local lookType = (player:getSex() == 0) and 1323 or 1322
	if not player:hasOutfit(lookType) then
		player:say("You not have Hand of the Inquisition Outfit", TALKTYPE_MONSTER_SAY)
		return true
	end
	
	if item:getId() == 38911 then
		if player:hasOutfit(lookType, 1) then
			player:say("Do you already have the addon 1", TALKTYPE_MONSTER_SAY)
			return true
		end
		player:addOutfitAddon(lookType, 1)
		player:say("Received the first addon of Revenant Outfits!", TALKTYPE_MONSTER_SAY)
		item:remove()
		return true
	end
	
	if item:getId() == 38910 then
		if not player:hasOutfit(lookType, 1) then
			player:say("You need the first addon", TALKTYPE_MONSTER_SAY)
			return true
		end
		if player:hasOutfit(lookType, 2) then
			player:say("Do you already have the addon 2", TALKTYPE_MONSTER_SAY)
			return true
		end
		player:addOutfitAddon(lookType, 2)
		player:say("Received the seccond addon of Revenant Outfits!", TALKTYPE_MONSTER_SAY)
		item:remove()
		return true
	end
	
	return true
end

RevenantOutfitItems:id(38911, 38910)
RevenantOutfitItems:register()