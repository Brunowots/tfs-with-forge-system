local DreamCoutsBossesKill = CreatureEvent("DreamCoutsBossesKill")

local storagesBosses = {
	["Faceless Bane"] = Storage.DreamCoutsBossesKill.facelessBane,
	["Izcandar the Banished"] = Storage.DreamCoutsBossesKill.izcandarTheBanished,
	["Malofur Mangrinder"] = Storage.DreamCoutsBossesKill.malofurMangrinder,
	["Maxxenius"] = Storage.DreamCoutsBossesKill.maxxenius,
	["Plagueroot"] = Storage.DreamCoutsBossesKill.plagueroot,
}

function DreamCoutsBossesKill.onDeath(creature)
	if not creature or not creature:isMonster() then
		return true
	end
	
	
	local storage = storagesBosses[creature:getName()]
	if not storage then return true end

	for pid, info in pairs(creature:getDamageMap()) do
		local tempCreature = Creature(pid)
		if tempCreature then
			if tempCreature:isPlayer() then
				tempCreature:setStorageValue(storage, 1)
			end
		end
	end

	return true
end
DreamCoutsBossesKill:register()