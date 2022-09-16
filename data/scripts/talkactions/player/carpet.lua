local tabelaADD = {
	25393, --rift carpet
	26192, --void carpet
	26087, --yalahahari carpet
	26088, --white fur carpet
	26089, --bamboo matr carpet
	26363, --crimson carpet
	26366, --azure carpet
	26367, --emerald carpet
	26368, --light parquet carpet
	26369, --dark parquet carpet
	26370, --marble floor
	27084, --flowery carpet
	27085, --Colourful Carpet
	27086, --striped carpet
	27087, --fur carpet
	27088, --diamond carpet
	27089, --patterned carpet
	27090, --night sky carpet
	27091, --star carpet
	29350, --verdant carpet
	29352, --shaggy carpet
	29354, --mystic carpet
	29356, --stone tile
	29359, --wooden plank
	29387, --wheat carpet
	29388, --crested carpet
	29390, --decorated carpet
	36301, --tournament carpet
	36302 --tournament carpet
}

local tabelaREMOVE = {
	25392, --rift carpet
	26193, --void carpet
	26109, --yalahahari carpet
	26110, --white fur carpet
	26111, --bamboo mat carpet
	26371, --crimson carpet
	26372, --azure carpet
	26373, --emerald carpet
	26374, --light parquet carpet
	26375, --dark parquet carpet
	26376, --mable floor
	27092, --flowery carpet
	27093, --Colourful Carpet
	27094, --striped carpet
	27095, --fur carpet
	27096, --diamond carpet
	27097, --patterned carpet
	27098, --night sky carpet
	27099, --star carpet
	29351, --verdant carpet
	29353, --shaggy carpet
	29355, --mystic carpet
	29357, --stone tile
	29358, --wooden plank
	29386, --wheat carpet
	29389, --crested carpet
	29391, --decorated carpet
	36303, --tournament carpet
	36304 --tournament carpet
}

local tabelaTODOS = {
	25392,
	25393, --rift carpet
	26192,
	26193, --void carpet
	26109, --yalahahari carpet
	26087, --yalahahari carpet
	26110, --white fur carpet
	26088, --white fur carpet
	26111, --bamboo mat carpet
	26089, --bamboo matr carpet
	26363, --crimson carpet
	26371, --crimson carpet
	26372, --azure carpet
	26366, --azure carpet
	26373, --emerald carpet
	26367, --emerald carpet
	26374, --light parquet carpet
	26368, --light parquet carpet
	26375, --dark parquet carpet
	26369, --dark parquet carpet
	26376, --mable floor
	26370, --marble floor
	27092, --flowery carpet
	27084, --flowery carpet
	27093, --Colourful Carpet
	27085, --Colourful Carpet
	27094, --striped carpet
	27086, --striped carpet
	27095, --fur carpet
	27087, --fur carpet
	27096, --diamond carpet
	27088, --diamond carpet
	27097, --patterned carpet
	27089, --patterned carpet
	27098, --night sky carpet
	27090, --night sky carpet
	27099, --star carpet
	27091, --star carpet
	29351, --verdant carpet
	29350, --verdant carpet
	29353, --shaggy carpet
	29352, --shaggy carpet
	29354, --mystic carpet
	29355, --mystic carpet
	29357, --stone tile
	29356, --stone tile
	29358, --wooden plank
	29359, --wooden plank
	29387, --wheat carpet
	29386, --wheat carpet
	29389, --crested carpet
	29388, --crested carpet
	29391, --decorated carpet
	29390, --decorated carpet
	36303, --tournament carpet
	36301, --tournament carpet
	36304, --tournament carpet
	36302 --tournament carpet
}

local foldedCarpet = {
	[25393] = 25392,
	[25392] = 25393, --rift carpet
	[26193] = 26192,
	[26192] = 26193, --void carpet
	[26087] = 26109, --yalahahari carpet
	[26109] = 26087, --yalahahari carpet
	[26088] = 26110, --white fur carpet
	[26110] = 26088, --white fur carpet
	[26089] = 26111, --bamboo mat carpet
	[26111] = 26089, --bamboo matr carpet
	[26371] = 26363, --crimson carpet
	[26363] = 26371, --crimson carpet
	[26366] = 26372, --azure carpet
	[26372] = 26366, --azure carpet
	[26367] = 26373, --emerald carpet
	[26373] = 26367, --emerald carpet
	[26368] = 26374, --light parquet carpet
	[26374] = 26368, --light parquet carpet
	[26369] = 26375, --dark parquet carpet
	[26375] = 26369, --dark parquet carpet
	[26370] = 26376, --mable floor
	[26376] = 26370, --marble floor
	[27084] = 27092, --flowery carpet
	[27092] = 27084, --flowery carpet
	[27085] = 27093, --Colourful Carpet
	[27093] = 27085, --Colourful Carpet
	[27086] = 27094, --striped carpet
	[27094] = 27086, --striped carpet
	[27087] = 27095, --fur carpet
	[27095] = 27087, --fur carpet
	[27088] = 27096, --diamond carpet
	[27096] = 27088, --diamond carpet
	[27089] = 27097, --patterned carpet
	[27097] = 27089, --patterned carpet
	[27090] = 27098, --night sky carpet
	[27098] = 27090, --night sky carpet
	[27091] = 27099, --star carpet
	[27099] = 27091, --star carpet
	[29350] = 29351, --verdant carpet
	[29351] = 29350, --verdant carpet
	[29352] = 29353, --shaggy carpet
	[29353] = 29352, --shaggy carpet
	[29355] = 29354, --mystic carpet
	[29354] = 29355, --mystic carpet
	[29356] = 29357, --stone tile
	[29357] = 29356, --stone tile
	[29359] = 29358, --wooden plank
	[29358] = 29359, --wooden plank
	[29386] = 29387, --wheat carpet
	[29387] = 29386, --wheat carpet
	[29388] = 29389, --crested carpet
	[29389] = 29388, --crested carpet
	[29390] = 29391, --decorated carpet
	[29391] = 29390, --decorated carpet
	[36301] = 36303, --tournament carpet
	[36303] = 36301, --tournament carpet
	[36302] = 36304, --tournament carpet
	[36304] = 36302 --tournament carpet

}

local carpetV = TalkAction("/carpet")

function carpetV.onSay(player, words, param)
	local house1 = player:getPosition()
	local house2 = Tile(house1)
	local house3 = house2 and house2:getHouse()
	if house3 == nil then
		player:sendCancelMessage("You are not inside a house.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	if param == "add" then
		local position = player:getPosition()
		position:getNextPosition(player:getDirection())
		local house2 = Tile(position)
		local house3 = house2 and house2:getHouse()
		if house3 == nil then
			player:sendCancelMessage("You are not inside a house.")
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		end
		
		local posp = player:getPosition()
		for i = 1, #tabelaADD do
			tapete = Tile(posp):getItemById(tabelaADD[i])
			if tapete then
				count = Tile(position):getItemCount()
				stacks = tapete:getCount()
				if count <= 2 and stacks == 1 then
					tapete:remove()
					Game.createItem(foldedCarpet[tabelaADD[i]], 1, position)
					position:sendMagicEffect(CONST_ME_MAGIC_GREEN)
					return true
				else
					player:sendCancelMessage("Many stacked items, remove some.")
					return false
				end
			end
		end
			player:sendCancelMessage("Carpet not found")
		return false
	end

	if param == "remove" then
		local position = player:getPosition()
		position:getNextPosition(player:getDirection())
		local house2 = Tile(position)
		local house3 = house2 and house2:getHouse()
		if house3 == nil then
			player:sendCancelMessage("You are not inside a house.")
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return false
		end
		
		local posp = player:getPosition()
		for i = 1, #tabelaREMOVE do
			tapete = Tile(position):getItemById(tabelaREMOVE[i])
			if tapete then
				count = Tile(posp):getItemCount()
				stacks = tapete:getCount()
				if count <= 2 and stacks == 1 then
					tapete:remove()
					Game.createItem(foldedCarpet[tabelaREMOVE[i]], 1, posp)
					position:sendMagicEffect(CONST_ME_MAGIC_GREEN)
					return true
				else
					player:sendCancelMessage("Many stacked items, remove some.")
					return false
				end
			end
		end
			player:sendCancelMessage("Carpet not found")
		return false
	end
	
	if param == "" then
	local position = player:getPosition()
		for i = 1, #tabelaTODOS do
		valor = Tile(position):getItemById(tabelaTODOS[i])
		if valor then
			count = Tile(position):getItemCount()
			stacks = valor:getCount()
			if count <= 2 and stacks == 1 then
				valor:transform(foldedCarpet[tabelaTODOS[i]])
				position:sendMagicEffect(CONST_ME_MAGIC_GREEN)
			else
				player:sendCancelMessage("Many stacked items, remove some.")
				return false
			end
		return true
		end
	end
	
		player:sendCancelMessage("Carpet not found")
	return false
	end
	return true
end

carpetV:separator(" ")
carpetV:register()