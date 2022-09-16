local effects = {
	-- {position = Position(32369, 32239, 7), text = 'Sejam bem vindos ao BETA do ZEYROT!!! Aproveitem!'},
	-- {position = Position(32373, 32235, 7), text = 'NPCs Island'},
	-- {position = Position(32209, 32301, 6), text = 'Play Bomberman!'},
  }

local textoEvent = GlobalEvent("textoEvent")

function textoEvent.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end

textoEvent:interval(4500)
textoEvent:register()


