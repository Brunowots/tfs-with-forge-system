local forja = Action()
function forja.onUse(player, item, ...)
    local playerGuid = player:getGuid()
    sendItemClasses(playerGuid)

    sendForgeUI(player:getId(), false)
    return true
end

for i=41950, 41977 do
	forja:id(i)
end

forja:register()