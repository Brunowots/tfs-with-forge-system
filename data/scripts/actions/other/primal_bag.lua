local rewards = {
    { id = 45934, name = "Arboreal Crown" },
    { id = 45935, name = "Arboreal Tome" },
    { id = 45969, name = "Arboreal Ring" },
    { id = 45932, name = "Arcanomancer Regalia" },
    { id = 45933, name = "Arcanomancer Folio" },
    { id = 45966, name = "Arcanomancer Sigil" },
    { id = 45930, name = "Alicorn Headguard" },
    { id = 45931, name = "Alicorn Quiver" },
    { id = 45963, name = "Alicorn Ring" },
    { id = 45929, name = "Spiritthorn Helmet" },
    { id = 45928, name = "Spiritthorn Armor" },
    { id = 45960, name = "Spiritthorn Ring" }
}

local bagyouDesire = Action()

function bagyouDesire.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received a ' .. rewardItem.name .. '.')
	return true
end

bagyouDesire:id(46274)
bagyouDesire:register()