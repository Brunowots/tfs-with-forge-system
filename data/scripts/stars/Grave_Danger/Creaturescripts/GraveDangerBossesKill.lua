local GraveDangerBossesKill = CreatureEvent("GraveDangerBossesKill")

local storagesBosses = {
	["Count Vlarkorth"] = Storage.GraveDangerBossesKill.CountVlarkorth,
	["Lord Azaram"] = Storage.GraveDangerBossesKill.LordAzaram,
	["Earl Osam"] = Storage.GraveDangerBossesKill.EarlOsam,
	["Sir Baeloc"] = Storage.GraveDangerBossesKill.SirNictros,
	["Duke Krule"] = Storage.GraveDangerBossesKill.DukeKrule,
}

function GraveDangerBossesKill.onDeath(creature)
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
GraveDangerBossesKill:register()