local pix = TalkAction("!donate")

function pix.onSay(player, words, param)
    player:popupFYI('                       DONATE PIX \n\n To donate by pix, use the key\n [KEY PIX]: 15826167793 \n [EMAIL]: nxtgc.corp@gmail.com \n [BANK]: (PagSeguro) or (Nubank)\n [NAME]: Matheus Gomes De Rezende \n\n "after the donation send the proof to !" \n [WHATSAPP]: (+54) 11 71132387')
    return false
end

pix:separator(" ")
pix:register()