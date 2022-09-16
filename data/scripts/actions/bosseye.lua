local boss_eye = Action()

-- Boss Time Observer

local BOSS_TIME_OBSERVER = {
	--==Grave Danger
	["Count Vlarkorth"] = Storage.Boos.CountVlarkorth,
	["Duke Krule"] = Storage.Boos.DukeKrule,
	["King Zelos"] = Storage.Boos.KingZelo,
	["Lord Azaram"] = Storage.Boos.LordAzaram,
	["Scarlett Etzel"] = Storage.GraveDanger.CobraBastion.ScarlettTimer,
	
	--== Dream courts
	["Alptramun"] = Storage.Boos.Alptramun,
	["Faceless Bane"] = Storage.Boos.FacelessBaneTime,
	["Izcandar the Banished"] = Storage.Boos.IzcandarTheBanished,
	["Maxxenius"] = Storage.Boos.Maxxenius,
	["Malofur Mangrinder"] = Storage.Boos.MalofurMangrinder,
	["Plagueroot"] = Storage.Boos.Plagueroot,
	["The Nightmare Beast"] = Storage.Boos.NightmareBeast,
	["Grand Master Oberon"] = Storage.TheSecretLibrary.TheOrderOfTheFalcon.OberonTimer,
	
	--==Ferumbras Ascension
	["Mazoran"] = Storage.FerumbrasAscension.MazoranTimer,
	["Plagirath"] = Storage.FerumbrasAscension.PlagirathTimer,
	["Ragiaz"] = Storage.FerumbrasAscension.RagiazTimer,
	["Razzagorn"] = Storage.FerumbrasAscension.RazzagornTimer,
	["Shulgrax"] = Storage.FerumbrasAscension.ShulgraxTimer,
	["Tarbaz"] = Storage.FerumbrasAscension.TarbazTimer,
	["Zamulosh"] = Storage.FerumbrasAscension.ZamuloshTimer,
	
	--==Kilmaresh
	["Urmahlullu"] = Storage.Kilmaresh.UrmahlulluTimer,
	
	--==Forgotten Knowledge
	["Dragonking Zyrtarch"] = Storage.ForgottenKnowledge.DragonkingTimer,
	["Lady Tenebris"] = Storage.ForgottenKnowledge.LadyTenebrisTimer,
	["Lloyd"] = Storage.ForgottenKnowledge.LloydTimer,
	["Frozen Horror"] = Storage.ForgottenKnowledge.HorrorTimer,
	["Thorn Knight"] = Storage.ForgottenKnowledge.ThornKnightTimer,
	["The Last Lore Keeper"] = Storage.ForgottenKnowledge.LastLoreTimer,
	["The Time Guardian"] = Storage.ForgottenKnowledge.TimeGuardianTimer,
	
	--==Heart Of Destruction
	["Anomaly"] = 14321,
	["Eradicator"] = 14329,
	["Outburst"] = 14331,
	["Rupture"] = 14323,
	["World Devourer"] = 14333,
	
	--==Feaster Of Souls
	["The Unwelcome"] = Storage.Boos.TheUnwelcome,
	["The Fear Feaster"] = Storage.Boos.TheFearFeaster,
	["The Pale Worm"] = Storage.Boos.ThePaleWorm,
	["The Dread Maiden"] = Storage.Boos.TheDreadMaiden,
	
	--==Soul War
	["Goshnar's Malice"] = Storage.Boos.GoshnarMalice,
	["Goshnar's Greed"] = Storage.Boos.goshnarGreed,
	["Goshnar's Cruelty"] = Storage.Boos.goshnarCruelty,
	["Goshnar's Spite"] = Storage.Boos.goshnarSpite,
	["Goshnar's Hatred"] = Storage.Boos.goshnarShatred,
	["Goshnar's Megalomania"] = Storage.Boos.GoshnarsMegalomania,
	
	--==The Order of the Lion
	["Drume"] = Storage.Boos.drume,
	
	--==Cults Of tibia
	-- ["Denominator"] = Storage.Boos.CountVlarkorth,
	-- ["Essence Of Malice"] = Storage.Boos.CountVlarkorth,
	-- ["Leiden"] = Storage.Boos.CountVlarkorth,
	-- ["The Armored Voidborn"] = Storage.Boos.CountVlarkorth,
	-- ["The Corruptor Of Souls"] = Storage.Boos.CountVlarkorth,
	-- ["The False God"] = Storage.Boos.CountVlarkorth,
	-- ["The Sandking"] = Storage.Boos.CountVlarkorth,
	-- ["The Sinister Hermit"] = Storage.Boos.CountVlarkorth,
	-- ["The Remorseless Corruptor"] = Storage.Boos.CountVlarkorth,
	-- ["The Source Of Corruption"] = Storage.Boos.CountVlarkorth,
}
-- BOSS_TIME_OBSERVER
-- Function para checar se tem algum boss em cooldown
function Player.getBossesInDelay(self)
	if not self then return false end
	local result = {}
	for boss, storage in pairs(BOSS_TIME_OBSERVER) do
		if self:getStorageValue(storage) > os.time() then
			result[boss] = storage
		end
	end
	return result
end

function Player.sendBossEyeMessage(self)
	if not self then return false end
	
	local delayed = self:getBossesInDelay()
	
	local delayedCount = 0

	local text = ""
	for boss, storage in pairs(delayed) do
		local timeLeft = self:getStorageValue(storage) - os.time()
		local timeText = convertTimeToText(timeLeft)
		text = text .. boss .. " - " .. timeText .. "\n"
		delayedCount = delayedCount + 1
	end
	
	if delayedCount == 0 then
		text = "You can make all bosses!"
	end
	
	self:popupFYI(text)
	return true
end

function boss_eye.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	player:sendBossEyeMessage()
	return true
end


boss_eye:id(18526)
boss_eye:register()