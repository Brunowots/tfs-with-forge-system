local rewards = {
    { id = 22418, name = "Umbral Master bow" },
    { id = 22409, name = "Umbral Master Chopper" },
    { id = 22412, name = "Umbral Master Mace" },
    { id = 22403, name = "Umbral Master Slayer" },
    { id = 22421, name = "Umbral Master Crossbow" },
    { id = 22400, name = "Umbral Masterblade" },
    { id = 22406, name = "Umbral Master Axe" },
    { id = 22415, name = "Umbral Master Hammer" },
    { id = 30884, name = "Gnome Legs" },
    { id = 35232, name = "Cobra Hood" },
    { id = 35233, name = "Cobra Sword" },
    { id = 35234, name = "Cobra Wand" },
    { id = 35235, name = "Cobra Rod" },
    { id = 35230, name = "Cobra Club" },
    { id = 35231, name = "Cobra Axe" },
    { id = 35229, name = "Cobra Boots" },
    { id = 30882, name = "Gnome Helmet" },
    { id = 30885, name = "Gnome Shield" },
    { id = 30883, name = "Gnome Armor" },
    { id = 30886, name = "Gnome Sword" },
    { id = 22424, name = "Umbral Master Spellbook" }
}

local baggcu = Action()

function baggcu.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local randId = math.random(1, #rewards)
    local rewardItem = rewards[randId]

    player:addItem(rewardItem.id, 1)
    item:remove(1)

    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received a ' .. rewardItem.name .. '.')
    return true
end

baggcu:id(41662)
baggcu:register()