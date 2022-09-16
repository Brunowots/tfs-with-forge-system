local dolls = {
	[5080] = {"Hug me."},
	[5669] = {
		"It's not winning that matters, but winning in style.",
		"Today's your lucky day. Probably.",
		"Do not meddle in the affairs of dragons, for you are crunchy and taste good with ketchup.",
		"That is one stupid question.",
		"You'll need more rum for that.",
		"Do or do not. There is no try.",
		"You should do something you always wanted to.",
		"If you walk under a ladder and it falls down on you it probably means bad luck.",
		"Never say 'oops'. Always say 'Ah, interesting!'",
		"Five steps east, fourteen steps south, two steps north and seventeen steps west!"
	},
	[6566] = {
		"Fchhhhhh!",
		"Zchhhhhh!",
		"Grooaaaaar*cough*",
		"Aaa... CHOO!",
		"You... will.... burn!!"
	},
	[6388] = {"Merry Christmas |PLAYERNAME|."},
	[6512] = {
		"Ho ho ho",
		"Jingle bells, jingle bells...",
		"Have you been naughty?",
		"Have you been nice?",
		"Merry Christmas!",
		"Can you stop squeezing me now... I'm starting to feel a little sick."
	},
	[8974] = {"ARE YOU PREPARED TO FACE YOUR DESTINY?"},
	[8977] = {
		"Weirdo, you're a weirdo! Actually all of you are!",
		"Pie for breakfast, pie for lunch and pie for dinner!",
		"All hail the control panel!",
		"I own, Tibiacity owns, perfect match!",
		"Hug me! Feed me! Hail me!"
	},
	[8981] = {
		"It's news to me.",
		"News, updated as infrequently as possible!",
		"Extra! Extra! Read all about it!",
		"Fresh off the press!"
	},
	[8982] = {
		"Hail TibiaNordic!",
		"So cold..",
		"Run, mammoth!"
	},
	[23806] = {
		"I can hear their whisperings... Revenge!",
		"You shall feel pain and terror, |PLAYERNAME|",
		"I do not need a sword to slaughter you",
		"My sword is broken, but my spirit is not dead",
		"I can say 469 and more...",
		"My dark magic lies on mexico-global.com"
	},
	[42578] = {
		"Come on, |PLAYERNAME| ! Let's complete some bestiary entries!",
		"Don't even try to put this harness on me!",
		"GRRR",
		"Hail TibiaDraptor.com",
		"It will be a busy day, lots of adventures ahead",
		"Screeeeech!"
	},
	[42585] = {
		"|PLAYERNAME|, you have to... DIE!",
		"|PLAYERNAME|, you have to... KILL!!",
		"|PLAYERNAME|, you have to... LIVE!",
		"|PLAYERNAME|, you have to... LOSE!",
		"|PLAYERNAME|, you have to... WIN!!"
	},
	[41896] = {
		"Home, Sweet home..!",
		"I am this place's protector!",
		"LEAVE OR I WILL CURSE YOU!!!",
		"Please park all brooms at the door.",
		"Welcome Home |PLAYERNAME|"
	},
	[41889] = {
		"Another head for me!",
		"I will defend what's ours!",
		"LEAVE OR I WILL CURSE YOU!!!",
		"My memories will live forever in mexico-global.com"
	},
	[41887] = {
		"3478 67 90871 97664 3466 0 345!",
		"486486 holds the answers to some of your questions. But what have you done to justify the attention of our ancient race?",
		"Hail Mexico-global.com! They are very close to the truth...",
		"Oculi plus vident, quam oculus.",
		"Oh...It is you again, |PLAYERNAME|. Get out of my sight, two-eyed creature.",
		"The price for that knowledge is your mind, body and soul. Still want to proceed?"
	},
	[41831] = {
		"A horse with a shiny horn doesn't make a unicorn!",
		"Oh my! Is this |PLAYERNAME|?! I've read about you on TibiaGoals.com!",
		"I had a dream I was a queen! I woke up... still a QUEEN!",
		"So divine!",
		"There will never be another one after you, |PLAYERNAME|!",
		"They say the sky is the limit but there are my hoofprints on the moon!"
	},
	[41813] = {
		"BOOM!",
		"Confetti attack!",
		"I had a dream I was a queen! I woke up... still a QUEEN!",
		"Let's get this party started!",
		"Let me guess your vocation, |PLAYERNAME|!",
		"The night is still young, Jogador!",
		"Viva Tibia!"
	},
	[41946] = {
		"Alluring position detected: 32667,32137,7",
		"Captivating position detected: 32101,32085,7",
		"Enthralling position detected: 32318,31936,7",
		"Fascinating position detected: 32163,32302,7!",
		"Intriguing position detected: 32248,31588,7",
		"Mysterious position detected: 32640,31943,15!"
	},
	[41316] = {
		"I was the first human, I am the pinnacle of creation.",
		"I wield the power of my creators, I see their spark in you.",
		"The gods made it my mission to save this world.",
		"The might of the gods lies with mexico-global.com!",
		"We are to triumph over the forces of evil, the gods will do so."
	},
	[39103] = {
		"Hail mexico-global.com!",
		"I wanna be a big boss when I grow up!",
		"Meeeeep!",
		"Play with me,|PLAYERNAME|",
		"Stay on Rookgaard, we have cookies!"
	},
	[39102] = {
		"Hail mexico-global.com!",
		"I am the alpha and the omega, and everything in between!",
		"Need to repair a broken sword, or maybe find the meaning of life?",
		"One book to rule them all!",
		"The key to the bonelord language is <text obscured by an ink stain>."
	},
	[39162] = {
		"... A pinch of voodoo lily pollen, a drop of frozen tear and swirl to combine.",
		"Do you want to learn forbidden magic?",
		"Every scientist is mad, just like Kirok.",
		"Hail mexico-global.com!",
		"I've put a spell on you, |PLAYERNAME|",
		"Trouble, trouble, cauldron bubble!"
	},
	[24331] = {"Hail Tibia Mexico! (Mex Forever)"}
}

local doll = Action()

function doll.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local sounds = dolls[item.itemid]
	if not sounds then
		return false
	end

	if fromPosition.x == CONTAINER_POSITION then
		fromPosition = player:getPosition()
	end

	local random = math.random(#sounds)
	local sound = sounds[random]
	if item.itemid == 6566 then
		if random == 3 then
			fromPosition:sendMagicEffect(CONST_ME_POFF)
		elseif random == 4 then
			fromPosition:sendMagicEffect(CONST_ME_FIREAREA)
		elseif random == 5 then
			doTargetCombatHealth(0, player, COMBAT_PHYSICALDAMAGE, -1, -1, CONST_ME_EXPLOSIONHIT)
		end
	elseif item.itemid == 5669 then
		fromPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		item:transform(item.itemid + 1)
		item:decay()
	elseif item.itemid == 6388 then
		fromPosition:sendMagicEffect(CONST_ME_SOUND_YELLOW)
	end

	sound = sound:gsub('|PLAYERNAME|', player:getName())
	player:say(sound, TALKTYPE_MONSTER_SAY, false, 0, fromPosition)
	return true
end

for index, value in pairs(dolls) do
	doll:id(index)
end

doll:register()
