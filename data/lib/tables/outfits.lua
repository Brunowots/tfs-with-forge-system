local addonItemsBase = {
	["Citizen"] = {
		[1] = {{5878,20}},
		[2] = {{5890,50}, {5902,25}, {2480,1}},
	},
	["Hunter"] = {
		[1] = {{5876,50}, {5948,50}, {5891,5}, {5887,1}, {5889,1}, {5888,1}},
		[2] = {{5875,1}},
	},
	["Knight"] = {
		[1] = {{5880,50}, {5892,1}},
		[2] = {{5893,50}, {11422,1}, {5885,1}, {5887,1}},
	},
	-- ["Mage"] = {
		-- [1] = {{2182,1}, {2186,1}, {2185,1}, {8911,1}, {2181,1}, {2183,1}, {2190,1}, {2191,1}, {2188,1}, {8921,1}, {2189,1}, {2187,1}, {2392,30}, {5809,1}, {2193,20}},
		-- [2] = {{5903,1}},
	-- },
	["Summoner"] = {
		[1] = {{5878,20}},
		[2] = {{5894,35}, {5911,20}, {5883,40}, {5922,35}, {5879,10}, {5881,30}, {5882,40}, {2392,3}, {5905,30}},
	},
	["Barbarian"] = {
		[1] = {{5884,1}, {5885,1}, {5910,25}, {5911,25}, {5886,10}},
		[2] = {{5880,25}, {5892,1}, {5893,25}, {5876,25}},
	},
	["Druid"] = {
		[1] = {{5896,20}, {5897,20}},
		[2] = {{5906,100}},
	},
	["Oriental"] = {
		[1] = {{5945,1}},
		[2] = {{5883,30}, {5895,30}, {5891,2}, {5912,30}},
	},
	["Warrior"] = {
		[1] = {{5925,40}, {5899,40}, {5884,1}, {5919,1}},
		[2] = {{5880,40}, {5887,1}},
	},
	["Wizard"] = {
		[1] = {{2536,1}, {2492,1}, {2488,1}, {2123,1}},
		[2] = {{5922,40}, {2472,10}},
	},
	["Assassin"] = {
		[1] = {{5912,20}, {5910,20}, {5911,20}, {5913,20}, {5914,20}, {5909,20}, {5886,10}},
		[2] = {{5804,1}, {5930,10}},
	},
	["Baggar"] = {
		[1] = {{5878,30}, {5921,20}, {5913,10}, {5894,10}},
		[2] = {{5883,30}, {2160,2}},
	},
	["Pirate"] = {
		[1] = {{6098,30}, {6126,30}, {6097,30}},
		[2] = {{6101,1}, {6102,1}, {6100,1}, {6099,1}},
	},
	["Shaman"] = {
		[1] = {{5810,5}, {3955,5}, {5015,1}},
		[2] = {{3966,5}, {3967,5}},
	},
	["Norseman"] = {
		[1] = {{7290,5}},
		[2] = {{7290,10}},
	},
}

local FromXML = {
	{
	  type = "0",
	  looktype = "136",
	  name = "Citizen",
	  premium = "no",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "137",
	  name = "Hunter",
	  premium = "no",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "138",
	  name = "Mage",
	  premium = "no",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "139",
	  name = "Knight",
	  premium = "no",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "140",
	  name = "Noblewoman",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "141",
	  name = "Summoner",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "142",
	  name = "Warrior",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "147",
	  name = "Barbarian",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "148",
	  name = "Druid",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "149",
	  name = "Wizard",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "150",
	  name = "Oriental",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "155",
	  name = "Pirate",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "156",
	  name = "Assassin",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "157",
	  name = "Beggar",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "158",
	  name = "Shaman",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "252",
	  name = "Norsewoman",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "269",
	  name = "Nightmare",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "270",
	  name = "Jester",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "279",
	  name = "Brotherhood",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "288",
	  name = "Demon Hunter",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "324",
	  name = "Yalaharian",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "329",
	  name = "Newly Wed",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "336",
	  name = "Warmaster",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "366",
	  name = "Wayfarer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "431",
	  name = "Afflicted",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "433",
	  name = "Elementalist",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "464",
	  name = "Deepling",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "466",
	  name = "Insectoid",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "471",
	  name = "Entrepreneur",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "513",
	  name = "Crystal Warlord",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "514",
	  name = "Soil Guardian",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "542",
	  name = "Demon",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "575",
	  name = "Cave Explorer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "578",
	  name = "Dream Warden",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "618",
	  name = "Glooth Engineer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "620",
	  name = "Jersey",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "632",
	  name = "Champion",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "635",
	  name = "Conjurer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "636",
	  name = "Beastmaster",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "664",
	  name = "Chaos Acolyte",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "666",
	  name = "Death Herald",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "683",
	  name = "Ranger",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "694",
	  name = "Ceremonial Garb",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "696",
	  name = "Puppeteer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "698",
	  name = "Spirit Caller",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "724",
	  name = "Evoker",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "732",
	  name = "Seaweaver",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "745",
	  name = "Recruiter",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "749",
	  name = "Sea Dog",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "759",
	  name = "Royal Pumpkin",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "845",
	  name = "Rift Warrior",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "852",
	  name = "Winter Warden",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "874",
	  name = "Philosopher",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "885",
	  name = "Arena Champion",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "900",
	  name = "Lupine Warden",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "909",
	  name = "Grove Keeper",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "929",
	  name = "Festive",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "956",
	  name = "Pharaoh",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "958",
	  name = "Trophy Hunter",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "963",
	  name = "Retro Warrior",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "965",
	  name = "Retro Summoner",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "967",
	  name = "Retro Noblewoman",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "969",
	  name = "Retro Mage",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "971",
	  name = "Retro Knight",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "973",
	  name = "Retro Hunter",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "975",
	  name = "Retro Citizen",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1020",
	  name = "Herbalist",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1024",
	  name = "Sun Priest",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1043",
	  name = "Makeshift Warrior",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1050",
	  name = "Siege Master",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1057",
	  name = "Mercenary",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1070",
	  name = "Battle Mage",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1095",
	  name = "Discoverer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1103",
	  name = "Sinister Archer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1128",
	  name = "Pumpkin Mummy",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1147",
	  name = "Dream Warrior",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1162",
	  name = "Percht Raider",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1174",
	  name = "Owl Keeper",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1187",
	  name = "Guidon Bearer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1203",
	  name = "Void Master",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1205",
	  name = "Veteran Paladin",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1207",
	  name = "Lion of War",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1211",
	  name = "Golden",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1244",
	  name = "Hand of the Inquisition",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1246",
	  name = "Breezy Garb",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1252",
	  name = "Orcsoberfest Garb",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1271",
	  name = "Poltergeist",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1280",
	  name = "Herder",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1283",
	  name = "Falconer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1289",
	  name = "Dragon Slayer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1293",
	  name = "Trailblazer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1323",
	  name = "Revenant",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1332",
	  name = "Jouster",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1339",
	  name = "Moth Cape",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1372",
	  name = "Rascoohan",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1383",
	  name = "Merry Garb",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1385",
	  name = "Rune Master",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1387",
	  name = "Citizen of Issavi",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1416",
	  name = "Forest Warden",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1437",
	  name = "Royal Bounacean Advisor",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "0",
	  looktype = "1445",
	  name = "Dragon Knight",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1450",
	  name = "Arbalester",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "0",
	  looktype = "1456",
	  name = "Royal Costume",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "1461",
	  name = "Formal Dress",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "0",
	  looktype = "1490",
	  name = "Ghost Blade",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "128",
	  name = "Citizen",
	  premium = "no",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "129",
	  name = "Hunter",
	  premium = "no",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "130",
	  name = "Mage",
	  premium = "no",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "131",
	  name = "Knight",
	  premium = "no",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "132",
	  name = "Nobleman",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "133",
	  name = "Summoner",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "134",
	  name = "Warrior",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "143",
	  name = "Barbarian",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "144",
	  name = "Druid",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "145",
	  name = "Wizard",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "146",
	  name = "Oriental",
	  premium = "yes",
	  unlocked = "yes",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "151",
	  name = "Pirate",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "152",
	  name = "Assassin",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "153",
	  name = "Beggar",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "154",
	  name = "Shaman",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "251",
	  name = "Norseman",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "268",
	  name = "Nightmare",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "273",
	  name = "Jester",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "278",
	  name = "Brotherhood",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "289",
	  name = "Demon Hunter",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "325",
	  name = "Yalaharian",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "328",
	  name = "Newly Wed",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "335",
	  name = "Warmaster",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "367",
	  name = "Wayfarer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "430",
	  name = "Afflicted",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "432",
	  name = "Elementalist",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "463",
	  name = "Deepling",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "465",
	  name = "Insectoid",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "472",
	  name = "Entrepreneur",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "512",
	  name = "Crystal Warlord",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "516",
	  name = "Soil Guardian",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "541",
	  name = "Demon",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "574",
	  name = "Cave Explorer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "577",
	  name = "Dream Warden",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "610",
	  name = "Glooth Engineer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "619",
	  name = "Jersey",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "633",
	  name = "Champion",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "634",
	  name = "Conjurer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "637",
	  name = "Beastmaster",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "665",
	  name = "Chaos Acolyte",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "667",
	  name = "Death Herald",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "684",
	  name = "Ranger",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "695",
	  name = "Ceremonial Garb",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "697",
	  name = "Puppeteer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "699",
	  name = "Spirit Caller",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "725",
	  name = "Evoker",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "733",
	  name = "Seaweaver",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "746",
	  name = "Recruiter",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "750",
	  name = "Sea Dog",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "760",
	  name = "Royal Pumpkin",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "846",
	  name = "Rift Warrior",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "853",
	  name = "Winter Warden",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "873",
	  name = "Philosopher",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "884",
	  name = "Arena Champion",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "899",
	  name = "Lupine Warden",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "908",
	  name = "Grove Keeper",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "931",
	  name = "Festive",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "955",
	  name = "Pharaoh",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "957",
	  name = "Trophy Hunter",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "962",
	  name = "Retro Warrior",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "964",
	  name = "Retro Summoner",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "966",
	  name = "Retro Nobleman",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "968",
	  name = "Retro Mage",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "970",
	  name = "Retro Knight",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "972",
	  name = "Retro Hunter",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "974",
	  name = "Retro Citizen",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1021",
	  name = "Herbalist",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1023",
	  name = "Sun Priest",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1042",
	  name = "Makeshift Warrior",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1051",
	  name = "Siege Master",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1056",
	  name = "Mercenary",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1069",
	  name = "Battle Mage",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1094",
	  name = "Discoverer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1102",
	  name = "Sinister Archer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1127",
	  name = "Pumpkin Mummy",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1146",
	  name = "Dream Warrior",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1161",
	  name = "Percht Raider",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1173",
	  name = "Owl Keeper",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1186",
	  name = "Guidon Bearer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1202",
	  name = "Void Master",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1204",
	  name = "Veteran Paladin",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1206",
	  name = "Lion of War",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1210",
	  name = "Golden",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1243",
	  name = "Hand of the Inquisition",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1245",
	  name = "Breezy Garb",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1251",
	  name = "Orcsoberfest Garb",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1270",
	  name = "Poltergeist",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1279",
	  name = "Herder",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1282",
	  name = "Falconer",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1288",
	  name = "Dragon Slayer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1292",
	  name = "Trailblazer",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1322",
	  name = "Revenant",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1331",
	  name = "Jouster",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1338",
	  name = "Moth Cape",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1371",
	  name = "Rascoohan",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1382",
	  name = "Merry Garb",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1384",
	  name = "Rune Master",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1386",
	  name = "Citizen of Issavi",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1415",
	  name = "Forest Warden",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1436",
	  name = "Royal Bounacean Advisor",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes",
	  from = "quest"
	}, {
	  type = "1",
	  looktype = "1444",
	  name = "Dragon Knight",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1449",
	  name = "Arbalester",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes",
	  from = "store"
	}, {
	  type = "1",
	  looktype = "1457",
	  name = "Royal Costume",
	  premium = "no",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "1460",
	  name = "Formal Dress",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes"
	}, {
	  type = "1",
	  looktype = "1489",
	  name = "Ghost Blade",
	  premium = "yes",
	  unlocked = "no",
	  enabled = "yes"
	}
}

OutfitBase = {
	type = "0",
	looktype = "136",
	name = "Citizen",
	premium = "no",
	unlocked = "yes",
	enabled = "yes",
	addonsItems = nil,
	addonsItemsStr = nil,
}

local getByName = function(name, type)
	for _, data in pairs(FromXML) do
		if string.lower(data.name) == string.lower(name) and (data.type == type) then
			return data
		end
	end
	return nil
end

local getItemsStr = function(items)
	if not items then
		return false
	end
	local strItems = {}
	for _, item in pairs(items) do
		local id = item[1]
		local count = item[2]
		if ItemType(id) then
			local str = string.format("%s of %s,", count, ItemType(id):getName())
			table.insert(strItems, str)
		end
	end
	return table.concat(strItems)
end

local getAddonsItemsStr = function(data)
	if not data then
		return false
	end
	local result = {}
	for addon, items in pairs(data) do
		local addonStr = getItemsStr(items, addon)
		if addonStr then
			result[addon] = addonStr
		end
	end
	return result
end

local function getOutfitAddosItems(name)
	local data = addonItemsBase[name]
	if not data then
		return false
	end
	return data
end

local getByLookType = function(p) 
	for _, data in pairs(FromXML) do
		if data.looktype == p then
			return data
		end
	end
	return nil
end

function getAvaliableOutfitAddonsList()
	local result = {}
	for outfit, data in pairs(addonItemsBase) do
		local str = string.format("{%s}, ", outfit)
		table.insert(result, str)
	end
	return result
end

function isValidOutfitName(str)
	if not str then
		return false
	end
	if addonItemsBase[str] then
		return addonItemsBase[str]
	end
	return false
end

function OutfitBase:New(p)
	local mask = (type(p) == "table") and getByName(tostring(p[1]), tostring(p[2])) or getByLookType(tostring(p))
	if not mask then
		return nil
	end
	setmetatable(mask, self)
	mask.addonsItems = getOutfitAddosItems(mask.name)
	mask.addonsItemsStr = getAddonsItemsStr(mask.addonsItems)
	self.__index = self
	return mask
end