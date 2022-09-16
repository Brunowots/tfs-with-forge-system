local cube_teleport = Action()

function cube_teleport.onUse(player, item, fromPos, target, toPos, isHotkey)
    CUBE_TELEPORT:SHOW_MODAL(player:getId())
    return true
end

cube_teleport:id(40744)
cube_teleport:register()