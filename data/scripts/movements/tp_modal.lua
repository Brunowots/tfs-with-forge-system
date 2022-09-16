local tp_modal_step = MoveEvent()

function tp_modal_step.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
	if not player then 
		creature:teleportTo(fromPosition)
		return false 
	end
	
	creature:teleportTo(fromPosition)
	
	TP_modal:show_main_modal(player:getId(), fromPosition)
    
    return true
end

tp_modal_step:type("stepin")

tp_modal_step:aid(65124)

tp_modal_step:register()