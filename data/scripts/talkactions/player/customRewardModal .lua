local autoloot = TalkAction("!dailyreward")

CUSTOM_DAILY_REWARD_CONFIG = {
	MIN_LEVEL = 250,
	TIME_STORAGE = Storage.CUSTOM_DAILY_REWARD_TIME,
	REWARD_DELAY = 24, -- em horas
	["Knight"] = {
		{itemId = 7439, count = 100}, -- bezerk potion
		{itemId = 26031, count = 200}, -- supreme healt
		{itemId = 25172, count = 2}, --silver token
		{itemId = 25377, count = 2}, -- gold token
		{itemId = 32386, count = 250}, -- exercise club
		{itemId = 32384, count = 250},  -- exercise sword
		{itemId = 32385, count = 250}, -- exercise axe
		{itemId = 2160, count = 20}, -- 20 cryatal coin
	},
	["Paladin"] = {
		{itemId = 7443, count = 100},
		{itemId = 26030, count = 200},
        {itemId = 25172, count = 2}, --silver token
		{itemId = 25377, count = 2}, -- gold token
		{itemId = 32387, count = 250},
		{itemId = 2160, count = 20},

	},
	["Sorcerer"] = {
		{itemId = 7440, count = 100},
		{itemId = 26029, count = 200},
        {itemId = 25172, count = 2}, --silver token
		{itemId = 25377, count = 2}, -- gold token
		{itemId = 32389, count = 250},
		{itemId = 2160, count = 20},

	},
	["Druid"] = {
		{itemId = 7440, count = 100},
		{itemId = 26029, count = 200},
        {itemId = 25172, count = 2}, --silver token
		{itemId = 25377, count = 2}, -- gold token
		{itemId = 32388, count = 250},
		{itemId = 2160, count = 20},
	},
	
	["Elite Knight"] = {
		{itemId = 7439, count = 150}, -- bezerk potion
		{itemId = 26031, count = 250}, -- supreme healt
		{itemId = 25172, count = 4}, --silver token
		{itemId = 25377, count = 4}, -- gold token
		{itemId = 32386, count = 350}, -- exercise club
		{itemId = 32384, count = 350},  -- exercise sword
		{itemId = 32385, count = 350}, -- exercise axe
		{itemId = 2160, count = 40}, -- 20 cryatal coin
	},
	["Royal Paladin"] = {
		{itemId = 7443, count = 150},
		{itemId = 26030, count = 250},
        {itemId = 25172, count = 4}, --silver token
		{itemId = 25377, count = 4}, -- gold token
		{itemId = 32387, count = 350},
		{itemId = 2160, count = 40},
	},
	["Master Sorcerer"] = {
		{itemId = 7440, count = 150},
		{itemId = 26029, count = 250},
        {itemId = 25172, count = 4}, --silver token
		{itemId = 25377, count = 4}, -- gold token
		{itemId = 32389, count = 350},
		{itemId = 2160, count = 40},
	},
	["Elder Druid"] = {
		{itemId = 7440, count = 150},
		{itemId = 26029, count = 250},
        {itemId = 25172, count = 4}, --silver token
		{itemId = 25377, count = 4}, -- gold token
		{itemId = 32388, count = 350},
		{itemId = 2160, count = 40},
	},
}

local function convertTimeToText(segundos)
    local tempo_em_segundos = segundos
    local days, hours, minutes, seconds = 0, 0, 0, 0

    while tempo_em_segundos ~= 0 do
        if tempo_em_segundos >= 86400 then
            tempo_em_segundos = tempo_em_segundos - 86400
            days = days + 1
        elseif tempo_em_segundos >= 3600 then
            tempo_em_segundos = tempo_em_segundos - 3600
            hours = hours + 1
        elseif tempo_em_segundos >= 60 then
            tempo_em_segundos = tempo_em_segundos - 60
            minutes = minutes + 1
        else
            seconds = tempo_em_segundos
            tempo_em_segundos = 0
        end
    end

    local text = ""
    if days > 0 then
        text = text .. days .. (days == 1 and " day " or " days ") .. hours .. " hours " .. minutes .. " minutes and " .. seconds .. " seconds"
    elseif hours > 0 then
        text = text .. hours .. " hours " .. minutes .. " minutes and " .. seconds .. " seconds"
    elseif minutes > 0 then
        text = text .. minutes .. " minutes and " .. seconds .. " seconds"
    else
        text = text .. seconds .. " seconds"
    end
    return text
end

function Player.ShowTaskShopModal(self)
	if not self then return false end
	
	local window = ModalWindow {
		title = 'Daily Reward',
		message = 'Escolha sua recompensa de hoje.'
	}
	
	if self:getLevel() < CUSTOM_DAILY_REWARD_CONFIG.MIN_LEVEL then
		self:sendTextMessage(MESSAGE_LOOK, "Você deve ser level " .. CUSTOM_DAILY_REWARD_CONFIG.MIN_LEVEL .. " ou maior.") -- MESSAGE_ADMINISTRADOR
		return false
	end
	
	if self:getStorageValue(CUSTOM_DAILY_REWARD_CONFIG.TIME_STORAGE) == -1 then
		self:setStorageValue(CUSTOM_DAILY_REWARD_CONFIG.TIME_STORAGE, 0)
	end
	
	if self:getStorageValue(CUSTOM_DAILY_REWARD_CONFIG.TIME_STORAGE) > os.time() then
		local tempoRestante = self:getStorageValue(CUSTOM_DAILY_REWARD_CONFIG.TIME_STORAGE) - os.time()
		self:sendTextMessage(MESSAGE_ADMINISTRADOR, "Proximo reward disponivel em: " .. convertTimeToText(tempoRestante)) -- MESSAGE_ADMINISTRADOR
		return false
	end
	
	local vocName = self:getVocation():getName()
	local vocReward = CUSTOM_DAILY_REWARD_CONFIG[vocName]
	if not vocReward then
		self:sendTextMessage(MESSAGE_LOOK, "não existem rewards disponiveis para sua vocação") -- MESSAGE_ADMINISTRADOR
		return false
	end
	
	for index, reward in pairs(vocReward) do
		local itemName = ItemType(reward.itemId):getName()
		local choice = window:addChoice(reward.count .. " " .. itemName)
		choice.itemId = reward.itemId
		choice.count = reward.count
	end
	
	window:addButton('recolher',
        function(button, choice)
            -- choice.itemId, choice.count
            if not self:safeAddItem(choice.itemId, choice.count) then
                self:sendTextMessage(MESSAGE_LOOK, "Você está sem espaço na BAG/STORE INBOX.")
                return false
            end
            self:setStorageValue(CUSTOM_DAILY_REWARD_CONFIG.TIME_STORAGE, os.time() + (CUSTOM_DAILY_REWARD_CONFIG.REWARD_DELAY * 60 * 60))
        end
    )
	
	window:addButton('Fechar',
		function(button, choice)
		end
	)
	
	window:setDefaultEnterButton('recolher')
	window:setDefaultEscapeButton('Fechar')
	window:sendToPlayer(self)
end

function autoloot.onSay(player, words, param)
	player:ShowTaskShopModal()
	return false
end

autoloot:separator(" ")

autoloot:register()