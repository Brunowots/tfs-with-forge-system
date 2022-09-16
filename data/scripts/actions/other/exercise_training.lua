local exerciseWeapon = Action()
function exerciseWeapon.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if (not itemEx or itemEx:isCreature()) then 
		return true
	end 

	if (not getTilePzInfo(player:getPosition()) or not getTilePzInfo(toPosition)) then 
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "Weapon can be used only on protection zone.")
		return true
	end 

	if (fromPosition.x ~= CONTAINER_POSITION or item:getTopParent() ~= player) then 
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "Weapon need to be in your equipment.")
		return true
	end 

	if (not trainingWeaponSys.dummies[itemEx:getId()]) then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You can use this only on dummies.")	 
		return true
	end

	if (trainingWeaponSys:isTraining(player)) then 
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are already training.")
		return true
	end

	if (trainingWeaponSys:hasExhausted(player)) then 
		 player:sendTextMessage(MESSAGE_STATUS_SMALL, string.format("You can't do that right now, please wait %d seconds.", trainingWeaponSys:getExhausted(player)))
		 return true
	 end 
	
	trainingWeaponSys:startTraining(player, item, player:getPosition(), toPosition, itemEx:getId())
	return true 
end 


for id = 32124, 32126 do
    exerciseWeapon:id(id)
end

for id = 32127, 32129 do
    exerciseWeapon:id(id)
    exerciseWeapon:allowFarUse(true)
end

for id = 32384, 32386 do
    exerciseWeapon:id(id)
end

for id = 32387, 32389 do
    exerciseWeapon:id(id)
    exerciseWeapon:allowFarUse(true)
end

for id = 40114, 40116 do
    exerciseWeapon:id(id)
end

for id = 40117, 40119 do
    exerciseWeapon:id(id)
    exerciseWeapon:allowFarUse(true)
end

for id = 40120, 40122 do
    exerciseWeapon:id(id)
end

for id = 40123, 40125 do
    exerciseWeapon:id(id)
    exerciseWeapon:allowFarUse(true)
end

exerciseWeapon:register()
