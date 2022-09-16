local pix = TalkAction("!serverinfo")

function pix.onSay(player, words, param)
    player:popupFYI('                       SERVER INFO \n\n EXP= stages\n LOOT= 3X \n SKILLS= stages \n MAGIC= stages \n STAMINA= in pz or offiline training \n SITE= mexServer.com')
    return false
end

pix:separator(" ")
pix:register()