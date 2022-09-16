local bonBless = TalkAction("!bless")

function bonBless.onSay(cid)
    local player = Player(cid)
    local totalBlessPrice = 50000
    local hasBless = true

    for i = 1, 8 do
        if not player:hasBlessing(i) then
            hasBless = false
            break
        end
    end

    if not hasBless then
        if player:removeMoney(totalBlessPrice) then
            for i = 1, 8 do
                player:addBlessing(i, 1)
            end

            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have been blessed by all of eight gods!")
            player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
        else
            player:sendCancelMessage("You don't have enough money. You need " .. totalBlessPrice .. " to buy bless.", cid)
        end
    else
        player:sendCancelMessage("You already have been blessed!", cid)
    end
end

bonBless:register()