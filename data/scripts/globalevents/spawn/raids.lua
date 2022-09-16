local raids = {
	-- Weekly
	--Segunda-Feira
	['Monday'] = {
		['05:00'] = {raidName = 'RatsThais'},
		['08:00'] = {raidName = 'Cobra'},
		['10:00'] = {raidName = 'Dragons'},
		['12:00'] = {raidName = 'Nomad'},
		['14:00'] = {raidName = 'Yeti'},
		['16:00'] = {raidName = 'The Pale Count'},
		['18:00'] = {raidName = 'White Pale'},
		['20:00'] = {raidName = 'Draptor'},
		['22:00'] = {raidName = 'Undead Cavebear'},
		['02:00'] = {raidName = 'Crustacea Gigantica seacrest2'},
		['04:00'] = {raidName = 'Midnight Panther One'},
	},

	--Terça-Feira
	['Tuesday'] = {
		['05:00'] = {raidName = 'Mawhawk'},
		['08:00'] = {raidName = 'Cyclops'},
		['10:00'] = {raidName = 'Wild Horses'},
		['12:00'] = {raidName = 'Citizen'},
		['14:00'] = {raidName = 'Hunters'},
		['16:00'] = {raidName = 'The Old Widow'},
		['18:00'] = {raidName = 'Water Buffalo'},
		['20:00'] = {raidName = 'Draptor'},
		['22:00'] = {raidName = 'Undead Cavebear'},
		['02:00'] = {raidName = 'Crustacea Gigantica seacrest1'},
		['04:00'] = {raidName = 'Midnight Panther Three'},
	},

	--Quarta-Feira
	['Wednesday'] = {
		['05:00'] = {raidName = 'Tyrn'},
		['08:00'] = {raidName = 'Lions'},
		['10:00'] = {raidName = 'Minos'},
		['12:00'] = {raidName = 'Orshabaal'},
		['14:00'] = {raidName = 'Beetles'},
		['16:00'] = {raidName = 'Gnarlhounds'},
		['18:00'] = {raidName = 'Quaras'},
		['20:00'] = {raidName = 'Draptor'},
		['22:00'] = {raidName = 'Kongras'},
		['02:00'] = {raidName = 'Sspawn'},
		['04:00'] = {raidName = 'Midnight Panther One'},
	},

	--Quinta-Feira
	['Thursday'] = {
		['05:00'] = {raidName = 'The Welter'},
		['08:00'] = {raidName = 'Gaz'},
		['10:00'] = {raidName = 'BarbaBitter'},
		['12:00'] = {raidName = 'OrcsThais'},
		['14:00'] = {raidName = 'RatsThais'},
		['16:00'] = {raidName = 'Dharalion'},
		['18:00'] = {raidName = 'Citizen'},
		['20:00'] = {raidName = 'Draptor'},
		['22:00'] = {raidName = 'Orc Backpack'},
		['02:00'] = {raidName = 'Undead Army'},
		['04:00'] = {raidName = 'Midnight Panther Three'},
	},

	--Sexta-feira
	['Friday'] = {
		['05:00'] = {raidName = 'Pirates'},
		['08:00'] = {raidName = 'Minos'},
		['10:00'] = {raidName = 'Priestesses'},
		['12:00'] = {raidName = 'Mad Mage'},
		['14:00'] = {raidName = 'GoEdron'},
		['16:00'] = {raidName = 'Warlock'},
		['18:00'] = {raidName = 'Gnarlhounds'},
		['20:00'] = {raidName = 'Draptor'},
		['22:00'] = {raidName = 'Horned Fox'},
		['02:00'] = {raidName = 'Crustacea Gigantica treasure'},
		['04:00'] = {raidName = 'Midnight Panther One'},
	},

	--Sábado
	['Saturday'] = {
		['05:00'] = {raidName = 'Tortoise'},
		['08:00'] = {raidName = 'Lizards'},
		['10:00'] = {raidName = 'Terror'},
		['12:00'] = {raidName = 'Mawhawk'},
		['14:00'] = {raidName = 'Citizen'},
		['16:00'] = {raidName = 'WarWolf'},
		['18:00'] = {raidName = 'Dragons'},
		['20:00'] = {raidName = 'Draptor'},
		['22:00'] = {raidName = 'Gargoyle'},
		['02:00'] = {raidName = 'Yeti'},
		['04:00'] = {raidName = 'Midnight Panther One'},
	},

	--Domingo
	['Sunday'] = {
		['05:00'] = {raidName = 'Tigers'},
		['08:00'] = {raidName = 'Orshabaal'},
		['10:00'] = {raidName = 'Terror'},
		['12:00'] = {raidName = 'Warlock'},
		['14:00'] = {raidName = 'Citizen'},
		['16:00'] = {raidName = 'Horned Fox'},
		['18:00'] = {raidName = 'Morgaroth'},
		['20:00'] = {raidName = 'Draptor'},
		['22:00'] = {raidName = 'Omrafir'},
		['02:00'] = {raidName = 'The Welter'},
		['04:00'] = {raidName = 'Midnight Panther Three'},
	},

	-- By date (Day/Month)
	-- ['31/10'] = {
		-- ['16:00'] = {raidName = 'Halloween Hare'}
	-- }
	['25/06'] = {
		['16:00'] = {raidName = 'Ferumbras'}
	}
}

local spawnRaids = GlobalEvent("spawn raids")
function spawnRaids.onThink(interval, lastExecution, thinkInterval)
	local day, date = os.date('%A'), getRealDate()

	local raidDays = {}
	if raids[day] then
		raidDays[#raidDays + 1] = raids[day]
	end
	if raids[date] then
		raidDays[#raidDays + 1] = raids[date]
	end
	if #raidDays == 0 then
		return true
	end

	for i = 1, #raidDays do
		local settings = raidDays[i][getRealTime()]
		if settings and not settings.alreadyExecuted then
			Game.startRaid(settings.raidName)
			settings.alreadyExecuted = true
		end
	end
	return true
end

spawnRaids:interval(60000)
spawnRaids:register()