local aspectOfPowerOnDeath = CreatureEvent("aspectOfPowerOnDeath")
function aspectOfPowerOnDeath.onDeath(creature)
	local aspectKillCount = Game.getStorageValue(GlobalStorage.SoulWar.aspectOfPowerKillCount)
	Game.setStorageValue(GlobalStorage.SoulWar.aspectOfPowerKillCount, aspectKillCount + 1)
	
	local aspectKillCount = Game.getStorageValue(GlobalStorage.SoulWar.aspectOfPowerKillCount)
	if aspectKillCount >= 4 then
		Game.setStorageValue(GlobalStorage.SoulWar.megalomaniaImortal, 0)
		addEvent(function() 
			Game.setStorageValue(GlobalStorage.SoulWar.megalomaniaImortal, 1)
			Game.setStorageValue(GlobalStorage.SoulWar.aspectOfPowerKillCount, 0)
		end, 30000)
	end
	return true
end

aspectOfPowerOnDeath:register()
