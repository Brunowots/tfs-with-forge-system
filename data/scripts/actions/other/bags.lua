local rewards = {
    { id = 32423, name = "Falcon Longsword" },
    { id = 32424, name = "Falcon Battleaxe" },
    { id = 32416, name = "Falcon Rod" },
    { id = 32418, name = "Falcon Bow" },
    { id = 32420, name = "Falcon Greaves" },
    { id = 32422, name = "Falcon Escutcheon" },
    { id = 32425, name = "Falcon Mace" },
    { id = 32417, name = "Falcon Wand" },
    { id = 32415, name = "Falcon Coif" },
    { id = 32414, name = "Falcon Ciclet" },
    { id = 32419, name = "Falcon Plate" },
    { id = 38986, name = "Lion Rod" },
    { id = 38991, name = "Lion Spangenhelm" },
    { id = 38988, name = "Lion Spellbook" },
    { id = 38989, name = "Lion Shield" },
    { id = 38992, name = "Lion Plate" },
    { id = 39089, name = "Lion Hammer" },
    { id = 39088, name = "Lion Axe" },
    { id = 38987, name = "Lion Wand" },
    { id = 38990, name = "Lion Longsword" },
    { id = 38985, name = "Lion Longbow" }
}

local baglf = Action()

function baglf.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local randId = math.random(1, #rewards)
    local rewardItem = rewards[randId]

    player:addItem(rewardItem.id, 1)
    item:remove(1)

    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received a ' .. rewardItem.name .. '.')
    return true
end

baglf:id(36468)
baglf:register()