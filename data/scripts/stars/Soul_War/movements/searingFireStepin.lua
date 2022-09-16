local searingFire = MoveEvent()
function searingFire.onStepIn(creature, item, position, fromPosition)
	local spite = Creature("Goshnar's Spite")
	if not spite then
		return true
	end
	
	item:getPosition():sendMagicEffect(2)
	spite:say("aahhh!", TALKTYPE_MONSTER_SAY)
	item:remove()
	return true
end

searingFire:type("stepin")
searingFire:aid(60025)
searingFire:register()