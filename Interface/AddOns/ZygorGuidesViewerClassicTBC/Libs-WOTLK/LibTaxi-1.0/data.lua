local name,addon = ...
local data={}
addon.LibTaxiData = data
data.taxipoints = {



--------------------
---   KALIMDOR   ---
--------------------
[1414]={
	
	["Ashenvale"] = {
		{name="Splintertree Post",faction="H",npc="Vhulgra",npcid=12616,x=73.18,y=61.59},
		{name="Zoram'gar Outpost",faction="H",npc="Andruk",npcid=11901,x=12.24,y=33.80},
		{name="Astranaar",faction="A",npc="Daelyshia",npcid=4267,x=34.41,y=47.99},
		{name="Forest Song",faction="A",npc="Suralais Farwind",npcid=22935,x=85.09,y=43.45},
	},
	
	["Azshara"] = {
		{name="Talrendis Point",faction="A",npc="Jarrodenus",npcid=12577,x=11.90,y=77.59},
		{name="Valormok",faction="H",npc="Kroum",npcid=8610,x=21.96,y=49.62},
	},
	
	["Bloodmyst Isle"] = {
		{name="Blood Watch",faction="A",npc="Laando",npcid=17554,x=57.68,y=53.87},
	},
	
	["Darkshore"] = {
		{name="Auberdine",faction="A",npc="Caylais Moonfeather",npcid=3841,x=36.34,y=45.58},
	},
	
	["Desolace"] = {
		{name="Shadowprey Village",faction="H",npc="Thalon",npcid=6726,x=21.60,y=74.13},
		{name="Nijel's Point",faction="A",npc="Baritanas Skyriver",npcid=6706,x=64.66,y=10.54},
	},
	
	["Dustwallow Marsh"] = {
		{name="Brackenwall Village",faction="H",npc="Shardi",npcid=11899,x=35.56,y=31.88},
		{name="Theramore",faction="A",npc="Baldruc",npcid=4321,x=67.48,y=51.30},
		{name="Mudsprocket",faction="B",npc="Dyslix Silvergrub",npcid=23612,x=42.82,y=72.43},
	},
	
	["Felwood"] = {
		{name="Bloodvenom Post",faction="H",npc="Brakkar",npcid=11900,x=34.44,y=53.96},
		{name="Talonbranch Glade",faction="A",npc="Mishellena",npcid=12578,x=62.49,y=24.24},
		{name="Emerald Sanctuary",faction="B",npc="Gorrim",npcid=22931,x=51.53,y=82.22},
	},
	
	["Feralas"] = {
		{name="Camp Mojache",faction="H",npc="Shyn",npcid=8020,x=75.45,y=44.36},
		{name="Thalanaar",faction="A",npc="Thyssiana",npcid=4319,x=89.50,y=45.85},
		{name="Feathermoon",faction="A",npc="Fyldren Moonfeather",npcid=8019,x=30.24,y=43.25},
	},
	
	["Moonglade"] = {
		{name="Moonglade",faction="H",npc="Faustron",npcid=12740,x=32.09,y=66.61},
		{name="Moonglade",faction="A",npc="Sindrayl",npcid=10897,x=48.10,y=67.34},
		--{name="Nighthaven",faction="A",class="DRUID",npc="Silva Fil'naveth",npcid=11800,x=44.15,y=45.22,forceknown=true},
		--{name="Nighthaven",faction="H",class="DRUID",npc="Bunthen Plainswind",npcid=11798,x=44.29,y=45.87,forceknown=true},
	},
	
	["Orgrimmar"] = {
		{name="Orgrimmar",faction="H",npc="Doras",npcid=3310,x=45.12,y=63.89},
	},
	
	["Silithus"] = {
		{name="Cenarion Hold",faction="H",npc="Runk Windtamer",npcid=15178,x=48.68,y=36.67},
		{name="Cenarion Hold",faction="A",npc="Cloud Skydancer",npcid=15177,x=50.58,y=34.45},
	},
	
	["Stonetalon Mountains"] = {
		{name="Stonetalon Peak",faction="A",npc="Teloren",npcid=4407,x=36.44,y=7.18},
		{name="Sun Rock Retreat",faction="H",npc="Tharm",npcid=4312,x=45.12,y=59.84},
	},
	
	["Tanaris"] = {
		{name="Gadgetzan",faction="H",npc="Bulkrek Ragefist",npcid=7824,x=51.60,y=25.44},
		{name="Gadgetzan",faction="A",npc="Bera Stonehammer",npcid=7823,x=51.01,y=29.35},
	},
	
	["Teldrassil"] = {
		{name="Rut'theran Village",faction="A",npc="Vesprystus",npcid=3838,x=58.40,y=94.02,region="ruttheran"},
	},
	
	["The Barrens"] = {
		{name="Crossroads",faction="H",npc="Devrak",npcid=3615,x=51.51,y=30.36},
		{name="Camp Taurajo",faction="H",npc="Omusa Thunderhorn",npcid=10378,x=44.45,y=59.15},
		{name="Ratchet",faction="B",npc="Bragok",npcid=16227,x=63.08,y=37.16},
	},
	
	["The Exodar"] = {
		{name="The Exodar",faction="A",npc="Stephanos",npcid=17555,x=68.34,y=63.50},
	},
	
	["Thousand Needles"] = {
		{name="Freewind Post",faction="H",npc="Nyse",npcid=4317,x=45.14,y=49.11},
	},
	
	["Thunder Bluff"] = {
		{name="Thunder Bluff",faction="H",npc="Tal",npcid=2995,x=46.99,y=49.83},
	},
	
	["Un'Goro Crater"] = {
		{name="Marshal's Refuge",faction="B",npc="Gryfe",npcid=10583,x=45.23,y=5.83},
	},
	
	["Winterspring"] = {
		{name="Everlook",faction="A",npc="Maethrya",npcid=11138,x=62.33,y=36.61},
		{name="Everlook",faction="H",npc="Yugrek",npcid=11139,x=60.47,y=36.30},
	},
},



----------------------------
---   EASTERN KINGDOMS   ---
----------------------------
[1415]={
	
	["Arathi Highlands"] = {
		{name="Refuge Pointe",faction="A",npc="Cedrik Prose",npcid=2835,x=45.76,y=46.11},
		{name="Hammerfall",faction="H",npc="Urda",npcid=2851,x=73.06,y=32.68},
	},
	
	["Badlands"] = {
		{name="Kargath",faction="H",npc="Gorrik",npcid=2861,x=3.99,y=44.78},
	},
	
	["Blasted Lands"] = {
		{name="Nethergarde Keep",faction="A",npc="Alexandra Constantine",npcid=8609,x=65.54,y=24.34},
	},
	
	["Burning Steppes"] = {
		{name="Flame Crest",faction="H",npc="Vahgruk",npcid=13177,x=65.69,y=24.22},
		{name="Morgan's Vigil",faction="A",npc="Borgus Stoutarm",npcid=2299,x=84.33,y=68.33},
	},
	
	["Duskwood"] = {
		{name="Darkshire",faction="A",npc="Felicia Maline",npcid=2409,x=77.49,y=44.29},
	},
	
	["Eastern Plaguelands"] = {
		{name="Light's Hope Chapel",faction="A",npc="Khaelyn Steelwing",npcid=12617,x=81.64,y=59.28},
		{name="Light's Hope Chapel",faction="H",npc="Georgia",npcid=12636,x=80.22,y=57.01},
		--{name="Plaguewood Tower",faction="B",npc="William Kielar",npcid=17209,x=22.33,y=31.40},
	},

	["Eversong Woods"] = {
		{name="Silvermoon City",faction="H",npc="Skymistress Gloaming",npcid=16192,x=54.36,y=50.72},
	},

	["Ghostlands"] = {
		{name="Tranquillien",faction="H",npc="Skymaster Sunwing",npcid=16189,x=45.42,y=30.52},
		{name="Zul'Aman",faction="B",npc="Kiz Coilspanner",npcid=24851,x=74.77,y=67.15},
	},
	
	["Hillsbrad Foothills"] = {
		{name="Southshore",faction="A",npc="Darla Harris",npcid=2432,x=49.34,y=52.27},
		{name="Tarren Mill",faction="H",npc="Zarise",npcid=2389,x=60.14,y=18.62},
	},
	
	["Ironforge"] = {
		{name="Ironforge",faction="A",npc="Gryth Thurden",npcid=1573,x=55.50,y=47.74},
	},
	
	["Loch Modan"] = {
		{name="Thelsamar",faction="A",npc="Thorgrum Borrelson",npcid=1572,x=33.94,y=50.95},
	},
	
	["Redridge Mountains"] = {
		{name="Lakeshire",faction="A",npc="Ariena Stormfeather",npcid=931,x=30.59,y=59.41},
	},
	
	["Searing Gorge"] = {
		{name="Thorium Point",faction="H",npc="Grisha",npcid=3305,x=34.84,y=30.87},
		{name="Thorium Point",faction="A",npc="Lanie Reed",npcid=2941,x=37.94,y=30.86},
	},
	
	["Silverpine Forest"] = {
		{name="The Sepulcher",faction="H",npc="Karos Razok",npcid=2226,x=45.62,y=42.60},
	},
	
	["Stranglethorn Vale"] = {
		{name="Grom'gol",faction="H",npc="Thysta",npcid=1387,x=32.54,y=29.35},
		{name="Booty Bay",faction="H",npc="Gringer",npcid=2858,x=26.87,y=77.10},
		{name="Booty Bay",faction="A",npc="Gyll",npcid=2859,x=27.53,y=77.79},
		{name="Rebel Camp",faction="A",npc="Nizzle",npcid=24366,x=38.23,y=4.04},	
	},
	
	["Swamp of Sorrows"] = {
		{name="Stonard",faction="H",npc="Breyk",npcid=6026,x=46.07,y=54.83},
	},
	
	["Stormwind City"] = {
		{name="Stormwind",faction="A",npc="Dungar Longdrink",npcid=352,x=66.27,y=62.13},
	},
	
	["The Hinterlands"] = {
		{name="Revantusk Village",faction="H",npc="Gorkas",npcid=4314,x=81.70,y=81.76},
		{name="Aerie Peak",faction="A",npc="Guthrum Thunderfist",npcid=8018,x=11.07,y=46.15},
	},
	
	["Undercity"] = {
		{name="Undercity",faction="H",npc="Michael Garrett",npcid=4551,x=63.25,y=48.56},
	},
	
	["Western Plaguelands"] = {
		{name="Chillwind Camp",faction="A",npc="Bibilfaz Featherwhistle",npcid=12596,x=42.92,y=85.06},
	},
	
	["Westfall"] = {
		{name="Sentinel Hill",faction="A",npc="Thor",npcid=523,x=56.55,y=52.64},
	},
	
	["Wetlands"] = {
		{name="Menethil Harbor",faction="A",npc="Shellei Brondir",npcid=1571,x=9.49,y=59.69},
	},
	
	["Isle of Quel'Danas"] = {
		{name="Shattered Sun Staging Area",faction="B",npc="Ohura",npcid=26560,x=48.36,y=25.08},
	},
},



-------------------
---   OUTLAND   ---
-------------------
[1945]={
	["Blade\'s Edge Mountains"]={
		{name="Sylvanaar",faction="A",npc="Amerun Leafshade",npcid=18937,x=37.82,y=61.39},
		{name="Toshley's Station",faction="A",npc="Rip Pedalslam",npcid=21107,x=61.15,y=70.44},
		{name="Thunderlord Stronghold",faction="H",npc="Unoke Tenderhoof",npcid=18953,x=52.05,y=54.13},
		{name="Mok'Nathal Village",faction="H",npc="Sky-Master Maxxor",npcid=22455,x=76.37,y=65.93},
		{name="Evergrove",faction="B",npc="Fhyn Leafshadow",npcid=22216,x=61.68,y=39.61},
		{name="Skyguard Outpost",faction="B",factionid=1031,factionstanding=6,npc="Skyguard Handler Irena",npcid=23413,x=28.28,y=52.10,taxioperator="skyguard"},
	},

	["Hellfire Peninsula"]={
		{name="Honor Hold",faction="A",npc="Flightmaster Krill Bitterhue",npcid=16822,x=54.68,y=62.35},
		{name="Shatter Point",faction="A",npc="Runetog Wildhammer",npcid=20234,x=78.42,y=34.90},
		{name="Temple of Telhamat",faction="A",npc="Kuma",npcid=18785,x=25.19,y=37.23},
		{name="Hellfire Peninsula",faction="A",npc="Amish Wildhammer",npcid=18931,x=87.36,y=52.42},
		{name="Falcon Watch",faction="H",npc="Innalia",npcid=18942,x=27.79,y=59.98},
		{name="Spinebreaker Ridge",faction="H",npc="Amilya Airheart",npcid=19558,x=61.65,y=81.19},
		{name="Hellfire Peninsula",faction="H",npc="Vlagga Freyfeather",npcid=18930,x=87.35,y=48.14},
		{name="Thrallmar",faction="H",npc="Barley",npcid=16587,x=56.29,y=36.25},
	},

	["Nagrand"]={
		{name="Telaar",faction="A",npc="Furgu",npcid=18789,x=54.17,y=75.06},
		{name="Garadar",faction="H",npc="Gursha",npcid=18808,x=57.19,y=35.25},
	},

	["Netherstorm"]={
		{name="Area 52",faction="B",npc="Krexcil",npcid=18938,x=33.74,y=63.99},
		{name="Cosmowrench",faction="B",npc="Harpax",npcid=20515,x=65.20,y=66.81},
		{name="The Stormspire",faction="B",npc="Grennik",npcid=19583,x=45.31,y=34.87},
	},

	["Shadowmoon Valley"]={
		{name="Wildhammer Stronghold",faction="A",npc="Brubeck Stormfoot",npcid=18939,x=37.61,y=55.45},
		{name="Shadowmoon Village",faction="H",npc="Drek'Gol",npcid=19317,x=30.34,y=29.19},
		{name="Altar of Sha'tar",faction="B",factionid=932,factionstanding=3,npc="Maddix",npcid=19581,x=63.33,y=30.40,quest=10551},
		{name="Sanctum of the Stars",faction="B",factionid=934,factionstanding=3,npc="Alieshor",npcid=21766,x=56.32,y=57.80,quest=10552},
	},

	["Shattrath City"]={
		{name="Shattrath",faction="B",npc="Nutral",npcid=18940,x=64.07,y=41.12},
	},

	["Terokkar Forest"]={
		{name="Allerian Stronghold",faction="A",npc="Furnan Skysoar",npcid=18809,x=59.45,y=55.43},
		{name="Stonebreaker Hold",faction="H",npc="Kerna",npcid=18807,x=49.19,y=43.42},
		{name="Blackwing Landing",faction="B",factionid=1031,factionstanding=6,npc="Skyguard Handler Deesak",npcid=23415,x=63.50,y=65.81,taxioperator="skyguard"},
	},

	["Zangarmarsh"]={
		{name="Orebor Harborage",faction="A",npc="Halu",npcid=22485,x=41.28,y=29.00},
		{name="Telredor",faction="A",npc="Munci",npcid=18788,x=67.83,y=51.46},
		{name="Swamprat Post",faction="H",npc="Gur'zil",npcid=20762,x=84.76,y=55.11},
		{name="Zabra'jin",faction="H",npc="Du'ga",npcid=18791,x=33.07,y=51.07},
	},
},

[113]={
	['Borean Tundra']={
		{name="Valiance Keep",faction="A",npc="Tomas Riverwell",npcid=26879,x=59.0,y=68.3},
		{name="Warsong Hold",faction="H",npc="Turida Coldwind",npcid=25288,x=40.4,y=51.4},
		{name="Transitus Shield",faction="B",npc="Warmage Adami",npcid=27046,x=33.1,y=34.5},
		{name="Amber Ledge",faction="B",npc="Surristrasz",npcid=24795,x=45.3,y=34.5},
		{name="Bor'gorok Outpost",faction="H",npc="Kimbiza",npcid=26848,x=49.6,y=11.1},
		{name="Fizzcrank Airstrip",faction="A",npc="Kara Thricestar",npcid=26602,x=56.6,y=20.1},
		{name="Unu'pe",faction="B",npc="Bilko Driftspark",npcid=28195,x=78.5,y=51.5},
		{name="Taunka'le Village",faction="H",npc="Omu Spiritbreeze",npcid=26847,x=77.8,y=37.8},
	},
	['Crystalsong Forest']={
		{name="Windrunner's Overlook",faction="A",npc="Galendror Whitewing",npcid=30271,x=72.2,y=81.0},
		{name="Sunreaver's Command",faction="H",npc="Skymaster Baeric",npcid=30269,x=78.5,y=50.5},
	},
	['Dalaran']={
		{name="Dalaran",faction="B",npc="Aludane Whitecloud",npcid=28674,x=72.8,y=45.6},
	},
	['Dragonblight']={
		{name="Stars' Rest",faction="A",npc="Palena Silvercloud",npcid=26881,x=29.2,y=55.3},
		{name="Agmar's Hammer",faction="H",npc="Narzun Skybreaker",npcid=26566,x=37.5,y=45.8},
		{name="Fordragon Hold",faction="A",npc="Derek Rammel",npcid=26877,x=39.5,y=25.9},
		{name="Kor'kron Vanguard",faction="H",npc="Numo Spiritbreeze",npcid=26850,x=43.8,y=17.0},
		{name="Wyrmrest Temple",faction="B",npc="Nethestrasz",npcid=26851,x=60.3,y=51.6},
		{name="Wintergarde Keep",faction="A",npc="Rodney Wells",npcid=26878,x=77.0,y=49.8},
		{name="Venomspite",faction="H",npc="Junter Weiss",npcid=26845,x=76.5,y=62.2},
		{name="Moa'ki",faction="B",npc="Cid Flounderfix",npcid=28196,x=48.51,y=74.39},
	},
	['Grizzly Hills']={
		{name="Amberpine Lodge",faction="A",npc="Vana Grey",npcid=26880,x=31.3,y=59.1},
		{name="Conquest Hold",faction="H",npc="Kragh",npcid=26852,x=22.0,y=64.4},
		{name="Camp Oneqwah",faction="H",npc="Makki Wintergale",npcid=26853,x=65.0,y=46.9},
		{name="Westfall Brigade",faction="A",npc="Samuel Clearbook",npcid=26876,x=59.9,y=26.7},
	},
	['Howling Fjord']={
		{name="Camp Winterhoof",faction="H",npc="Celea Frozenmane",npcid=24032,x=49.6,y=11.6},
		{name="Fort Wildervar",faction="A",npc="James Ormsby",npcid=24061,x=60.1,y=16.1},
		{name="Vengeance Landing",faction="H",npc="Adeline Chambers",npcid=27344,x=79.0,y=29.7},
		{name="Valgarde Port",faction="A",npc="Pricilla Winterwind",npcid=23736,x=59.8,y=63.2},
		{name="New Agamand",faction="H",npc="Tobias Sarkhoff",npcid=24155,x=52.0,y=67.4},
		{name="Kamagua",faction="B",npc="Kip Trawlskip",npcid=28197,x=24.7,y=57.8},
		{name="Westguard Keep",faction="A",npc="Greer Orehammer",npcid=23859,x=31.3,y=44.0},
		{name="Apothecary Camp",faction="H",npc="Lilleth Radescu",npcid=26844,x=26.0,y=25.1},
	},
	['Icecrown']={
		{name="Argent Tournament Grounds",faction="B",npc="Helidan Lightwing",npcid=33849,x=72.6,y=22.6},
		{name="The Shadow Vault",faction="A",quest=12896,npc="Morlia Doomwing",npcid=30314,x=43.7,y=24.4},
		{name="The Shadow Vault",faction="H",quest=12897,npc="Morlia Doomwing",npcid=30314,x=43.7,y=24.4},
		{name="Death's Rise",faction="B",npc="Dreadwind",npcid=31078,x=19.3,y=47.8},
		{name="Crusaders' Pinnacle",faction="B",quest=13141,npc="Penumbrius",npcid=31069,x=79.4,y=72.4},
		{name="The Argent Vanguard",faction="B",npc="Aedan Moran",npcid=30433,x=87.8,y=78.1},
	},
	['Sholazar Basin']={
		{name="River's Heart",faction="B",npc="Marvin Wobblesprocket",npcid=28574,x=50.1,y=61.4},
		{name="Nesingwary Base Camp",faction="B",quest=12523,npc="The Spirit of Gnomeregan",npcid=28037,x=25.3,y=58.4},
	},
	['The Storm Peaks']={
		{name="K3",faction="B",npc="Skizzle Slickslide",npcid=29721,x=40.8,y=84.5},
		{name="Frosthold",faction="A",npc="Faldorf Bitterchill",npcid=29750,x=29.5,y=74.3},
		{name="Grom'arsh Crash-Site",faction="H",npc="Kabarg Windtamer",npcid=29757,x=36.2,y=49.4},
		{name="Dun Niffelem",faction="B",quest=12956,npc="Halvdan",npcid=32571,x=62.6,y=60.9},
		{name="Camp Tunka'lo",faction="H",npc="Hyeyoung Parka",npcid=29762,x=65.4,y=50.6},
		{name="Ulduar",faction="B",npc="Shavalius the Fancy",npcid=29951,x=44.5,y=28.2},
		{name="Bouldercrag's Refuge",faction="B",npc="Breck Rockbrow",npcid=29950,x=30.6,y=36.3},
	},
	['Wintergrasp']={
		{name="Wintergrasp",faction="A",npc="Arzo Safeflight",npcid=30869,x=72.0,y=30.9},
		{name="Warsong Camp",faction="H",npc="Herzo Safeflight",npcid=30870,x=21.6,y=35.0},
		{name="Valiance Landing Camp",faction="A",npc="Arzo Safeflight",npcid=30869,x=72.0,y=31.0},
	},
	['Zul\'Drak']={
		{name="Light's Breach",faction="B",npc="Danica Saint",npcid=28618,x=32.2,y=74.4},
		{name="Ebon Watch",faction="B",npc="Baneflight",npcid=28615,x=14.0,y=73.6},
		{name="The Argent Stand",faction="B",npc=" Gurric",npcid=28623,x=41.5,y=64.4},
		{name="Zim'Torga",faction="B",npc="Maaka",npcid=28624,x=60.0,y=56.7},
		{name="Gundrak",faction="B",npc="Rafae",npcid=30569,x=70.5,y=23.3},
	},
},
}





-- NOTE: If two taxis have the same name but different factions then a factions field must be added in here. See Serpent's Spine.
-- If not then one of the taxis will be marked with the wrong faction so will not properly get neighbors that it should.
-- This data is regenerated when performing a Taxi Connections Dump. Any weird data edits may be lost. 





data.flightcost = {

--------------------
---   KALIMDOR   ---
--------------------
	[1414]={
		{
			tag = "005:005",
			nodeID = -5,
			name = "Bashal'Aran",
			taxioperator = "blackcat",
			neighbors = {
				[-2] = 53, -- Lor'danel
			},
		},
		{
			tag = "004:004",
			nodeID = -4,
			name = "Shatterspear Vale",
			taxioperator = "blackcat",
			neighbors = {
				[-1] = 115, -- Lor'danel
			},
		},
		{
			tag = "003:003",
			nodeID = -3,
			name = "Ruins of Mathystra",
			taxioperator = "blackcat",
			neighbors = {
				[-4] = 75, -- Shatterspear Vale
				[-1] = 50, -- Lor'danel
			},
		},
		{
			tag = "002:002",
			nodeID = -2,
			name = "Lor'danel",
			taxioperator = "blackcat",
			neighbors = {
				[-5] = 53, -- Bashal'Aran
			},
		},
		{
			tag = "001:001",
			nodeID = -1,
			name = "Lor'danel",
			taxioperator = "blackcat",
			comment = "black cat ride",
			neighbors = {
				[-3] = 50, -- Ruins of Mathystra
			},
		},
		{
			tag = "462:570",
			nodeID = 22,
			name = "Thunder Bluff",
			faction = "H",
			neighbors = {
				[23] = 208, -- Orgrimmar
				[25] = 103, -- Crossroads
				[29] = 183, -- Sun Rock Retreat
				[30] = 205, -- Freewind Post
				[38] = 179, -- Shadowprey Village
				[40] = 305, -- Gadgetzan
				[42] = 253, -- Camp Mojache
				[44] = 251, -- Valormok
				[55] = 225, -- Brackenwall Village
				[58] = 247, -- Zoram'gar Outpost
				[77] = 87, -- Camp Taurajo
			},
		},
		{
			tag = "581:453",
			nodeID = 23,
			name = "Orgrimmar",
			faction = "H",
			neighbors = {
				[22] = 208, -- Thunder Bluff
				[25] = 117, -- Crossroads
				[40] = 418, -- Gadgetzan
				[44] = 96, -- Valormok
				[48] = 253, -- Bloodvenom Post
				[53] = 244, -- Everlook
				[55] = 218, -- Brackenwall Village
				[61] = 90, -- Splintertree Post
				[80] = 108, -- Ratchet
			},
		},
		{
			tag = "534:539",
			nodeID = 25,
			name = "Crossroads",
			faction = "H",
			neighbors = {
				[22] = 107, -- Thunder Bluff
				[23] = 117, -- Orgrimmar
				[29] = 151, -- Sun Rock Retreat
				[30] = 186, -- Freewind Post
				[40] = 304, -- Gadgetzan
				[42] = 265, -- Camp Mojache
				[44] = 165, -- Valormok
				[48] = 242, -- Bloodvenom Post
				[55] = 163, -- Brackenwall Village
				[58] = 232, -- Zoram'gar Outpost
				[61] = 161, -- Splintertree Post
				[77] = 79, -- Camp Taurajo
				[80] = 69, -- Ratchet
			},
		},
		{
			tag = "448:263",
			nodeID = 26,
			name = "Auberdine",
			faction = "A",
			neighbors = {
				[27] = 85, -- Rut'theran Village
				[28] = 149, -- Astranaar
				[32] = 440, -- Theramore
				[33] = 182, -- Stonetalon Peak
				[37] = 292, -- Nijel's Point
				[41] = 473, -- Feathermoon
				[49] = 152, -- Moonglade
				[64] = 302, -- Talrendis Point
				[65] = 191, -- Talonbranch Glade
			},
		},
		{
			tag = "440:169",
			nodeID = 27,
			name = "Rut'theran Village",
			faction = "A",
			neighbors = {
				[26] = 86, -- Auberdine
			},
		},
		{
			tag = "471:406",
			nodeID = 28,
			name = "Astranaar",
			faction = "A",
			neighbors = {
				[26] = 150, -- Auberdine
				[32] = 389, -- Theramore
				[33] = 155, -- Stonetalon Peak
				[64] = 149, -- Talrendis Point
				[80] = 194, -- Ratchet
				[166] = 79, -- Emerald Sanctuary
				[167] = 142, -- Forest Song
			},
		},
		{
			tag = "435:482",
			nodeID = 29,
			name = "Sun Rock Retreat",
			faction = "H",
			neighbors = {
				[22] = 183, -- Thunder Bluff
				[25] = 151, -- Crossroads
				[38] = 144, -- Shadowprey Village
				[58] = 122, -- Zoram'gar Outpost
			},
		},
		{
			tag = "529:742",
			nodeID = 30,
			name = "Freewind Post",
			faction = "H",
			neighbors = {
				[22] = 205, -- Thunder Bluff
				[25] = 186, -- Crossroads
				[40] = 87, -- Gadgetzan
				[42] = 124, -- Camp Mojache
				[55] = 96, -- Brackenwall Village
				[77] = 126, -- Camp Taurajo
				[179] = 70, -- Mudsprocket
			},
		},
		{
			tag = "484:704",
			nodeID = 31,
			name = "Thalanaar",
			faction = "A",
			neighbors = {
				[32] = 161, -- Theramore
				[39] = 178, -- Gadgetzan
				[41] = 179, -- Feathermoon
				[179] = 87, -- Mudsprocket
			},
		},
		{
			tag = "586:677",
			nodeID = 32,
			name = "Theramore",
			faction = "A",
			neighbors = {
				[26] = 440, -- Auberdine
				[28] = 370, -- Astranaar
				[31] = 164, -- Thalanaar
				[37] = 308, -- Nijel's Point
				[39] = 157, -- Gadgetzan
				[64] = 234, -- Talrendis Point
				[80] = 116, -- Ratchet
				[179] = 53, -- Mudsprocket
			},
		},
		{
			tag = "424:412",
			nodeID = 33,
			name = "Stonetalon Peak",
			faction = "A",
			neighbors = {
				[26] = 182, -- Auberdine
				[28] = 155, -- Astranaar
				[37] = 120, -- Nijel's Point
			},
		},
		{
			tag = "427:516",
			nodeID = 37,
			name = "Nijel's Point",
			faction = "A",
			neighbors = {
				[26] = 292, -- Auberdine
				[32] = 308, -- Theramore
				[33] = 120, -- Stonetalon Peak
				[41] = 228, -- Feathermoon
			},
		},
		{
			tag = "375:593",
			nodeID = 38,
			name = "Shadowprey Village",
			faction = "H",
			neighbors = {
				[22] = 179, -- Thunder Bluff
				[29] = 144, -- Sun Rock Retreat
				[42] = 197, -- Camp Mojache
			},
		},
		{
			tag = "565:816",
			nodeID = 39,
			name = "Gadgetzan",
			faction = "A",
			neighbors = {
				[31] = 178, -- Thalanaar
				[32] = 157, -- Theramore
				[73] = 198, -- Cenarion Hold
				[79] = 104, -- Marshal's Refuge
				[80] = 246, -- Ratchet
			},
		},
		{
			tag = "566:809",
			nodeID = 40,
			name = "Gadgetzan",
			faction = "H",
			neighbors = {
				[22] = 305, -- Thunder Bluff
				[23] = 418, -- Orgrimmar
				[25] = 304, -- Crossroads
				[30] = 87, -- Freewind Post
				[42] = 202, -- Camp Mojache
				[55] = 194, -- Brackenwall Village
				[72] = 242, -- Cenarion Hold
				[79] = 108, -- Marshal's Refuge
				[80] = 244, -- Ratchet
			},
		},
		{
			tag = "373:700",
			nodeID = 41,
			name = "Feathermoon",
			faction = "A",
			neighbors = {
				[26] = 473, -- Auberdine
				[31] = 179, -- Thalanaar
				[37] = 228, -- Nijel's Point
				[73] = 154, -- Cenarion Hold
			},
		},
		{
			tag = "458:701",
			nodeID = 42,
			name = "Camp Mojache",
			faction = "H",
			neighbors = {
				[22] = 253, -- Thunder Bluff
				[25] = 265, -- Crossroads
				[30] = 124, -- Freewind Post
				[38] = 201, -- Shadowprey Village
				[40] = 202, -- Gadgetzan
				[72] = 131, -- Cenarion Hold
			},
		},
		{
			tag = "583:372",
			nodeID = 44,
			name = "Valormok",
			faction = "H",
			neighbors = {
				[22] = 251, -- Thunder Bluff
				[23] = 96, -- Orgrimmar
				[25] = 165, -- Crossroads
				[48] = 235, -- Bloodvenom Post
				[53] = 131, -- Everlook
				[61] = 94, -- Splintertree Post
			},
		},
		{
			tag = "472:315",
			nodeID = 48,
			name = "Bloodvenom Post",
			faction = "H",
			neighbors = {
				[23] = 253, -- Orgrimmar
				[25] = 242, -- Crossroads
				[44] = 235, -- Valormok
				[53] = 196, -- Everlook
				[58] = 138, -- Zoram'gar Outpost
				[69] = 166, -- Moonglade
				[166] = 80, -- Emerald Sanctuary
			},
		},
		{
			tag = "531:217",
			nodeID = 49,
			name = "Moonglade",
			faction = "A",
			neighbors = {
				[26] = 143, -- Auberdine
				[52] = 120, -- Everlook
				[65] = 68, -- Talonbranch Glade
			},
		},
		{
			tag = "592:244",
			nodeID = 52,
			name = "Everlook",
			faction = "A",
			neighbors = {
				[49] = 120, -- Moonglade
				[64] = 168, -- Talrendis Point
				[65] = 108, -- Talonbranch Glade
			},
		},
		{
			tag = "589:244",
			nodeID = 53,
			name = "Everlook",
			faction = "H",
			neighbors = {
				[23] = 244, -- Orgrimmar
				[44] = 131, -- Valormok
				[48] = 196, -- Bloodvenom Post
				[69] = 142, -- Moonglade
			},
		},
		{
			tag = "541:650",
			nodeID = 55,
			name = "Brackenwall Village",
			faction = "H",
			neighbors = {
				[22] = 225, -- Thunder Bluff
				[23] = 218, -- Orgrimmar
				[25] = 163, -- Crossroads
				[30] = 96, -- Freewind Post
				[40] = 206, -- Gadgetzan
				[77] = 50, -- Camp Taurajo
				[80] = 90, -- Ratchet
				[179] = 64, -- Mudsprocket
			},
		},
		{
			tag = "436:384",
			nodeID = 58,
			name = "Zoram'gar Outpost",
			faction = "H",
			neighbors = {
				[22] = 247, -- Thunder Bluff
				[25] = 232, -- Crossroads
				[29] = 122, -- Sun Rock Retreat
				[48] = 138, -- Bloodvenom Post
				[61] = 167, -- Splintertree Post
				[166] = 123, -- Emerald Sanctuary
			},
		},
		{
			tag = "532:427",
			nodeID = 61,
			name = "Splintertree Post",
			faction = "H",
			neighbors = {
				[23] = 90, -- Orgrimmar
				[25] = 161, -- Crossroads
				[44] = 95, -- Valormok
				[58] = 167, -- Zoram'gar Outpost
				[166] = 85, -- Emerald Sanctuary
			},
		},
		{
			nodeID = 62,
			name = "Nighthaven",
			faction = "A",
			neighbors = {
				[27] = 154, -- Rut'theran Village
			},
		},
		{
			nodeID = 63,
			name = "Nighthaven",
			faction = "H",
			neighbors = {
				[22] = 401, -- Thunder Bluff
			},
		},
		{
			tag = "569:410",
			nodeID = 64,
			name = "Talrendis Point",
			faction = "A",
			neighbors = {
				[26] = 302, -- Auberdine
				[28] = 149, -- Astranaar
				[32] = 234, -- Theramore
				[52] = 168, -- Everlook
				[65] = 284, -- Talonbranch Glade
				[80] = 137, -- Ratchet
				[167] = 27, -- Forest Song
			},
		},
		{
			tag = "516:268",
			nodeID = 65,
			name = "Talonbranch Glade",
			faction = "A",
			neighbors = {
				[26] = 191, -- Auberdine
				[49] = 68, -- Moonglade
				[52] = 108, -- Everlook
				[64] = 284, -- Talrendis Point
				[166] = 129, -- Emerald Sanctuary
			},
		},
		{
			tag = "521:217",
			nodeID = 69,
			name = "Moonglade",
			faction = "H",
			neighbors = {
				[48] = 166, -- Bloodvenom Post
				[53] = 142, -- Everlook
			},
		},
		{
			tag = "441:799",
			nodeID = 72,
			name = "Cenarion Hold",
			faction = "H",
			neighbors = {
				[40] = 242, -- Gadgetzan
				[42] = 131, -- Camp Mojache
				[79] = 101, -- Marshal's Refuge
			},
		},
		{
			tag = "442:797",
			nodeID = 73,
			name = "Cenarion Hold",
			faction = "A",
			neighbors = {
				[39] = 198, -- Gadgetzan
				[41] = 154, -- Feathermoon
				[79] = 93, -- Marshal's Refuge
			},
		},
		{
			tag = "514:618",
			nodeID = 77,
			name = "Camp Taurajo",
			faction = "H",
			neighbors = {
				[22] = 87, -- Thunder Bluff
				[25] = 79, -- Crossroads
				[30] = 126, -- Freewind Post
				[55] = 61, -- Brackenwall Village
			},
		},
		{
			tag = "494:770",
			nodeID = 79,
			name = "Marshal's Refuge",
			neighbors = {
				[39] = 104, -- Gadgetzan
				[40] = 108, -- Gadgetzan
				[72] = 101, -- Cenarion Hold
				[73] = 93, -- Cenarion Hold
			},
		},
		{
			tag = "566:558",
			nodeID = 80,
			name = "Ratchet",
			neighbors = {
				[23] = 108, -- Orgrimmar
				[25] = 69, -- Crossroads
				[28] = 198, -- Astranaar
				[32] = 106, -- Theramore
				[39] = 246, -- Gadgetzan
				[40] = 242, -- Gadgetzan
				[55] = 90, -- Brackenwall Village
				[64] = 137, -- Talrendis Point
			},
		},
		{
			tag = "310:182",
			nodeID = 93,
			name = "Blood Watch",
			faction = "A",
			neighbors = {
				[94] = 78, -- The Exodar
			},
		},
		{
			tag = "305:270",
			nodeID = 94,
			name = "The Exodar",
			faction = "A",
			neighbors = {
				[93] = 78, -- Blood Watch
			},
		},
		{
			tag = "499:359",
			nodeID = 166,
			name = "Emerald Sanctuary",
			neighbors = {
				[28] = 81, -- Astranaar
				[48] = 80, -- Bloodvenom Post
				[58] = 115, -- Zoram'gar Outpost
				[61] = 84, -- Splintertree Post
				[65] = 129, -- Talonbranch Glade
				[167] = 104, -- Forest Song
			},
		},
		{
			tag = "550:399",
			nodeID = 167,
			name = "Forest Song",
			faction = "A",
			neighbors = {
				[28] = 142, -- Astranaar
				[64] = 29, -- Talrendis Point
				[166] = 111, -- Emerald Sanctuary
			},
		},
		{
			tag = "551:707",
			nodeID = 179,
			name = "Mudsprocket",
			neighbors = {
				[30] = 70, -- Freewind Post
				[31] = 106, -- Thalanaar
				[32] = 53, -- Theramore
				[55] = 64, -- Brackenwall Village
			},
		},
	},

----------------------------
---   EASTERN KINGDOMS   ---
----------------------------
	[1415]={
		{
			tag = "434:737",
			nodeID = 2,
			name = "Stormwind",
			faction = "A",
			neighbors = {
				[4] = 79, -- Sentinel Hill
				[5] = 113, -- Lakeshire
				[6] = 216, -- Ironforge
				[12] = 117, -- Darkshire
				[19] = 200, -- Booty Bay
				[45] = 177, -- Nethergarde Keep
				[71] = 154, -- Morgan's Vigil
				[74] = 126, -- Thorium Point
				[195] = 93, -- Rebel Camp
			},
		},
		{
			tag = "420:803",
			nodeID = 4,
			name = "Sentinel Hill",
			faction = "A",
			neighbors = {
				[2] = 79, -- Stormwind
				[5] = 131, -- Lakeshire
				[12] = 97, -- Darkshire
				[19] = 149, -- Booty Bay
				[195] = 67, -- Rebel Camp
			},
		},
		{
			tag = "500:758",
			nodeID = 5,
			name = "Lakeshire",
			faction = "A",
			neighbors = {
				[2] = 113, -- Stormwind
				[4] = 131, -- Sentinel Hill
				[12] = 61, -- Darkshire
				[71] = 64, -- Morgan's Vigil
			},
		},
		{
			tag = "474:589",
			nodeID = 6,
			name = "Ironforge",
			faction = "A",
			neighbors = {
				[2] = 211, -- Stormwind
				[7] = 115, -- Menethil Harbor
				[8] = 102, -- Thelsamar
				[14] = 217, -- Southshore
				[16] = 204, -- Refuge Pointe
				[43] = 256, -- Aerie Peak
				[66] = 260, -- Chillwind Camp
				[67] = 107, -- Light's Hope Chapel
				[74] = 86, -- Thorium Point
				[213] = 99, -- Shattered Sun Staging Area
			},
		},
		{
			tag = "465:551",
			nodeID = 7,
			name = "Menethil Harbor",
			faction = "A",
			neighbors = {
				[6] = 90, -- Ironforge
				[8] = 153, -- Thelsamar
				[14] = 108, -- Southshore
				[16] = 127, -- Refuge Pointe
			},
		},
		{
			tag = "517:611",
			nodeID = 8,
			name = "Thelsamar",
			faction = "A",
			neighbors = {
				[6] = 102, -- Ironforge
				[7] = 153, -- Menethil Harbor
				[16] = 172, -- Refuge Pointe
				[74] = 83, -- Thorium Point
			},
		},
		{
			tag = "408:394",
			nodeID = 10,
			name = "The Sepulcher",
			faction = "H",
			neighbors = {
				[11] = 113, -- Undercity
				[13] = 96, -- Tarren Mill
			},
		},
		{
			tag = "439:353",
			nodeID = 11,
			name = "Undercity",
			faction = "H",
			neighbors = {
				[10] = 107, -- The Sepulcher
				[13] = 140, -- Tarren Mill
				[17] = 301, -- Hammerfall
				[21] = 489, -- Kargath
				[68] = 262, -- Light's Hope Chapel
				[76] = 285, -- Revantusk Village
			},
		},
		{
			tag = "477:798",
			nodeID = 12,
			name = "Darkshire",
			faction = "A",
			neighbors = {
				[2] = 117, -- Stormwind
				[4] = 97, -- Sentinel Hill
				[5] = 61, -- Lakeshire
				[19] = 173, -- Booty Bay
				[45] = 98, -- Nethergarde Keep
				[195] = 49, -- Rebel Camp
			},
		},
		{
			tag = "467:411",
			nodeID = 13,
			name = "Tarren Mill",
			faction = "H",
			neighbors = {
				[10] = 96, -- The Sepulcher
				[11] = 140, -- Undercity
				[17] = 119, -- Hammerfall
				[76] = 160, -- Revantusk Village
			},
		},
		{
			tag = "458:437",
			nodeID = 14,
			name = "Southshore",
			faction = "A",
			neighbors = {
				[6] = 217, -- Ironforge
				[7] = 108, -- Menethil Harbor
				[16] = 74, -- Refuge Pointe
				[43] = 72, -- Aerie Peak
				[66] = 82, -- Chillwind Camp
			},
		},
		{
			tag = "507:457",
			nodeID = 16,
			name = "Refuge Pointe",
			faction = "A",
			neighbors = {
				[6] = 204, -- Ironforge
				[7] = 127, -- Menethil Harbor
				[8] = 172, -- Thelsamar
				[14] = 88, -- Southshore
				[43] = 77, -- Aerie Peak
			},
		},
		{
			tag = "531:445",
			nodeID = 17,
			name = "Hammerfall",
			faction = "H",
			neighbors = {
				[11] = 301, -- Undercity
				[13] = 119, -- Tarren Mill
				[21] = 259, -- Kargath
				[76] = 91, -- Revantusk Village
			},
		},
		{
			tag = "433:943",
			nodeID = 18,
			name = "Booty Bay",
			faction = "H",
			neighbors = {
				[20] = 79, -- Grom'gol
				[21] = 315, -- Kargath
				[56] = 231, -- Stonard
			},
		},
		{
			tag = "434:944",
			nodeID = 19,
			name = "Booty Bay",
			faction = "A",
			neighbors = {
				[2] = 200, -- Stormwind
				[4] = 149, -- Sentinel Hill
				[12] = 173, -- Darkshire
				[195] = 117, -- Rebel Camp
			},
		},
		{
			tag = "442:868",
			nodeID = 20,
			name = "Grom'gol",
			faction = "H",
			neighbors = {
				[18] = 79, -- Booty Bay
				[21] = 239, -- Kargath
				[56] = 174, -- Stonard
				[70] = 207, -- Flame Crest
			},
		},
		{
			tag = "499:656",
			nodeID = 21,
			name = "Kargath",
			faction = "H",
			neighbors = {
				[11] = 498, -- Undercity
				[17] = 259, -- Hammerfall
				[18] = 315, -- Booty Bay
				[20] = 239, -- Grom'gol
				[56] = 232, -- Stonard
				[70] = 69, -- Flame Crest
				[75] = 57, -- Thorium Point
			},
		},
		{
			tag = "495:401",
			nodeID = 43,
			name = "Aerie Peak",
			faction = "A",
			neighbors = {
				[6] = 256, -- Ironforge
				[14] = 72, -- Southshore
				[16] = 77, -- Refuge Pointe
				[66] = 54, -- Chillwind Camp
				[67] = 163, -- Light's Hope Chapel
			},
		},
		{
			tag = "530:820",
			nodeID = 45,
			name = "Nethergarde Keep",
			faction = "A",
			neighbors = {
				[2] = 177, -- Stormwind
				[12] = 98, -- Darkshire
				[71] = 209, -- Morgan's Vigil
			},
		},
		{
			tag = "526:796",
			nodeID = 56,
			name = "Stonard",
			faction = "H",
			neighbors = {
				[18] = 231, -- Booty Bay
				[20] = 174, -- Grom'gol
				[21] = 232, -- Kargath
				[70] = 192, -- Flame Crest
			},
		},
		{
			tag = "481:377",
			nodeID = 66,
			name = "Chillwind Camp",
			faction = "A",
			neighbors = {
				[6] = 260, -- Ironforge
				[14] = 82, -- Southshore
				[43] = 54, -- Aerie Peak
				[67] = 147, -- Light's Hope Chapel
			},
		},
		{
			tag = "577:328",
			nodeID = 67,
			name = "Light's Hope Chapel",
			faction = "A",
			neighbors = {
				[6] = 349, -- Ironforge
				[43] = 164, -- Aerie Peak
				[66] = 147, -- Chillwind Camp
				[205] = 107, -- Zul'Aman
				[213] = 339, -- Shattered Sun Staging Area
			},
		},
		{
			tag = "575:325",
			nodeID = 68,
			name = "Light's Hope Chapel",
			faction = "H",
			neighbors = {
				[11] = 262, -- Undercity
				[76] = 140, -- Revantusk Village
				[83] = 119, -- Tranquillien
				[205] = 97, -- Zul'Aman
			},
		},
		{
			tag = "499:688",
			nodeID = 70,
			name = "Flame Crest",
			faction = "H",
			neighbors = {
				[20] = 207, -- Grom'gol
				[21] = 69, -- Kargath
				[56] = 193, -- Stonard
				[75] = 61, -- Thorium Point
			},
		},
		{
			tag = "513:719",
			nodeID = 71,
			name = "Morgan's Vigil",
			faction = "A",
			neighbors = {
				[2] = 154, -- Stormwind
				[5] = 64, -- Lakeshire
				[45] = 209, -- Nethergarde Keep
				[74] = 91, -- Thorium Point
			},
		},
		{
			tag = "474:653",
			nodeID = 74,
			name = "Thorium Point",
			faction = "A",
			neighbors = {
				[2] = 126, -- Stormwind
				[6] = 86, -- Ironforge
				[8] = 83, -- Thelsamar
				[71] = 91, -- Morgan's Vigil
			},
		},
		{
			tag = "473:653",
			nodeID = 75,
			name = "Thorium Point",
			faction = "H",
			neighbors = {
				[21] = 57, -- Kargath
				[70] = 61, -- Flame Crest
			},
		},
		{
			tag = "561:435",
			nodeID = 76,
			name = "Revantusk Village",
			faction = "H",
			neighbors = {
				[11] = 285, -- Undercity
				[13] = 160, -- Tarren Mill
				[17] = 91, -- Hammerfall
				[68] = 140, -- Light's Hope Chapel
			},
		},
		{
			tag = "564:154",
			nodeID = 82,
			name = "Silvermoon City",
			faction = "H",
			neighbors = {
				[83] = 66, -- Tranquillien
				[213] = 167, -- Shattered Sun Staging Area
			},
		},
		{
			tag = "555:220",
			nodeID = 83,
			name = "Tranquillien",
			faction = "H",
			neighbors = {
				[68] = 116, -- Light's Hope Chapel
				[82] = 66, -- Silvermoon City
				[205] = 52, -- Zul'Aman
			},
		},
		{
			tag = "451:829",
			nodeID = 195,
			name = "Rebel Camp",
			faction = "A",
			neighbors = {
				[2] = 93, -- Stormwind
				[4] = 67, -- Sentinel Hill
				[12] = 49, -- Darkshire
				[19] = 116, -- Booty Bay
			},
		},
		{
			tag = "579:249",
			nodeID = 205,
			name = "Zul'Aman",
			neighbors = {
				[67] = 107, -- Light's Hope Chapel
				[68] = 97, -- Light's Hope Chapel
				[83] = 52, -- Tranquillien
				[213] = 233, -- Shattered Sun Staging Area
			},
		},
		{
			tag = "558:020",
			nodeID = 213,
			name = "Shattered Sun Staging Area",
			neighbors = {
				[6] = 99, -- Ironforge
				[67] = 339, -- Light's Hope Chapel
				[82] = 167, -- Silvermoon City
				[205] = 233, -- Zul'Aman
			},
		},
	},

-------------------
---   OUTLAND   ---
-------------------
	[1945]={
		{
			tag = "002:002",
			nodeID = -7,
			name = "Blackwing Landing, Terokkar Forest",
			taxioperator = "skyguard",
			neighbors = {
				[-6] = 245, -- Skyguard Outpost, Blade's Edge Mountains
			},
		},
		{
			tag = "001:001",
			nodeID = -6,
			name = "Skyguard Outpost, Blade's Edge Mountains",
			taxioperator = "skyguard",
			neighbors = {
				[-7] = 245, -- Blackwing Landing, Terokkar Forest
			},
		},
		{
			tag = "593:480",
			nodeID = 99,
			name = "Thrallmar",
			faction = "H",
			neighbors = {
				[102] = 68, -- Falcon Watch
				[127] = 126, -- Stonebreaker Hold
				[130] = 71, -- Hellfire Peninsula
				[141] = 63, -- Spinebreaker Ridge
			},
		},
		{
			tag = "588:557",
			nodeID = 100,
			name = "Honor Hold",
			faction = "A",
			neighbors = {
				[101] = 77, -- Temple of Telhamat
				[121] = 97, -- Allerian Stronghold
				[128] = 58, -- Shattrath
				[129] = 66, -- Hellfire Peninsula
				[149] = 57, -- Shatter Point
			},
		},
		{
			tag = "501:482",
			nodeID = 101,
			name = "Temple of Telhamat",
			faction = "A",
			neighbors = {
				[100] = 88, -- Honor Hold
				[117] = 82, -- Telredor
				[129] = 116, -- Hellfire Peninsula
			},
		},
		{
			tag = "509:550",
			nodeID = 102,
			name = "Falcon Watch",
			faction = "H",
			neighbors = {
				[99] = 68, -- Thrallmar
				[118] = 148, -- Zabra'jin
				[120] = 133, -- Garadar
				[128] = 73, -- Shattrath
				[130] = 123, -- Hellfire Peninsula
				[151] = 69, -- Swamprat Post
			},
		},
		{
			tag = "396:481",
			nodeID = 117,
			name = "Telredor",
			faction = "A",
			neighbors = {
				[101] = 82, -- Temple of Telhamat
				[119] = 125, -- Telaar
				[125] = 92, -- Sylvanaar
				[128] = 85, -- Shattrath
				[156] = 70, -- Toshley's Station
				[164] = 54, -- Orebor Harborage
			},
		},
		{
			tag = "296:481",
			nodeID = 118,
			name = "Zabra'jin",
			faction = "H",
			neighbors = {
				[102] = 148, -- Falcon Watch
				[120] = 82, -- Garadar
				[126] = 149, -- Thunderlord Stronghold
				[128] = 137, -- Shattrath
				[151] = 113, -- Swamprat Post
			},
		},
		{
			tag = "325:734",
			nodeID = 119,
			name = "Telaar",
			faction = "A",
			neighbors = {
				[117] = 125, -- Telredor
				[121] = 123, -- Allerian Stronghold
				[128] = 89, -- Shattrath
			},
		},
		{
			tag = "335:608",
			nodeID = 120,
			name = "Garadar",
			faction = "H",
			neighbors = {
				[102] = 133, -- Falcon Watch
				[118] = 68, -- Zabra'jin
				[128] = 77, -- Shattrath
			},
		},
		{
			tag = "522:756",
			nodeID = 121,
			name = "Allerian Stronghold",
			faction = "A",
			neighbors = {
				[100] = 97, -- Honor Hold
				[119] = 123, -- Telaar
				[124] = 102, -- Wildhammer Stronghold
				[128] = 75, -- Shattrath
			},
		},
		{
			tag = "538:235",
			nodeID = 122,
			name = "Area 52",
			neighbors = {
				[125] = 120, -- Sylvanaar
				[126] = 97, -- Thunderlord Stronghold
				[139] = 48, -- The Stormspire
				[150] = 65, -- Cosmowrench
				[156] = 94, -- Toshley's Station
				[160] = 82, -- Evergrove
				[163] = 65, -- Mok'Nathal Village
			},
		},
		{
			tag = "597:759",
			nodeID = 123,
			name = "Shadowmoon Village",
			faction = "H",
			neighbors = {
				[127] = 74, -- Stonebreaker Hold
				[140] = 84, -- Altar of Sha'tar, Shadowmoon Valley
				[159] = 62, -- Sanctum of the Stars
			},
		},
		{
			tag = "620:842",
			nodeID = 124,
			name = "Wildhammer Stronghold",
			faction = "A",
			neighbors = {
				[121] = 102, -- Allerian Stronghold
				[140] = 84, -- Altar of Sha'tar, Shadowmoon Valley
				[159] = 43, -- Sanctum of the Stars
			},
		},
		{
			tag = "355:312",
			nodeID = 125,
			name = "Sylvanaar",
			faction = "A",
			neighbors = {
				[117] = 92, -- Telredor
				[122] = 120, -- Area 52
				[139] = 155, -- The Stormspire
				[156] = 60, -- Toshley's Station
				[160] = 52, -- Evergrove
				[164] = 76, -- Orebor Harborage
			},
		},
		{
			tag = "399:289",
			nodeID = 126,
			name = "Thunderlord Stronghold",
			faction = "H",
			neighbors = {
				[118] = 149, -- Zabra'jin
				[122] = 97, -- Area 52
				[139] = 159, -- The Stormspire
				[151] = 107, -- Swamprat Post
				[160] = 27, -- Evergrove
				[163] = 56, -- Mok'Nathal Village
			},
		},
		{
			tag = "490:720",
			nodeID = 127,
			name = "Stonebreaker Hold",
			faction = "H",
			neighbors = {
				[99] = 126, -- Thrallmar
				[123] = 69, -- Shadowmoon Village
				[128] = 70, -- Shattrath
			},
		},
		{
			tag = "440:657",
			nodeID = 128,
			name = "Shattrath",
			neighbors = {
				[100] = 58, -- Honor Hold
				[102] = 78, -- Falcon Watch
				[117] = 85, -- Telredor
				[118] = 137, -- Zabra'jin
				[119] = 89, -- Telaar
				[120] = 77, -- Garadar
				[121] = 75, -- Allerian Stronghold
				[127] = 69, -- Stonebreaker Hold
				[151] = 87, -- Swamprat Post
			},
		},
		{
			tag = "685:528",
			nodeID = 129,
			name = "Hellfire Peninsula",
			faction = "A",
			neighbors = {
				[100] = 66, -- Honor Hold
				[101] = 116, -- Temple of Telhamat
				[149] = 33, -- Shatter Point
			},
		},
		{
			tag = "685:515",
			nodeID = 130,
			name = "Hellfire Peninsula",
			faction = "H",
			neighbors = {
				[99] = 71, -- Thrallmar
				[102] = 123, -- Falcon Watch
			},
		},
		{
			tag = "574:142",
			nodeID = 139,
			name = "The Stormspire",
			neighbors = {
				[122] = 48, -- Area 52
				[125] = 155, -- Sylvanaar
				[126] = 159, -- Thunderlord Stronghold
				[150] = 70, -- Cosmowrench
			},
		},
		{
			tag = "000:000",
			nodeID = 140,
			name = "Altar of Sha'tar, Shadowmoon Valley",
			neighbors = {
				[123] = 68, -- Shadowmoon Village
				[124] = 81, -- Wildhammer Stronghold
			},
		},
		{
			tag = "609:613",
			nodeID = 141,
			name = "Spinebreaker Ridge",
			faction = "H",
			neighbors = {
				[99] = 63, -- Thrallmar
			},
		},
		{
			tag = "659:476",
			nodeID = 149,
			name = "Shatter Point",
			neighbors = {
				[100] = 57, -- Honor Hold
				[129] = 33, -- Hellfire Peninsula
			},
		},
		{
			tag = "638:244",
			nodeID = 150,
			name = "Cosmowrench",
			neighbors = {
				[122] = 65, -- Area 52
				[139] = 70, -- The Stormspire
			},
		},
		{
			tag = "445:492",
			nodeID = 151,
			name = "Swamprat Post",
			faction = "H",
			neighbors = {
				[102] = 70, -- Falcon Watch
				[118] = 113, -- Zabra'jin
				[126] = 107, -- Thunderlord Stronghold
				[128] = 87, -- Shattrath
				[163] = 72, -- Mok'Nathal Village
			},
		},
		{
			tag = "427:340",
			nodeID = 156,
			name = "Toshley's Station",
			faction = "A",
			neighbors = {
				[117] = 73, -- Telredor
				[122] = 84, -- Area 52
				[125] = 60, -- Sylvanaar
				[160] = 45, -- Evergrove
			},
		},
		{
			tag = "000:000",
			nodeID = 159,
			name = "Sanctum of the Stars",
			neighbors = {
				[123] = 62, -- Shadowmoon Village
				[124] = 43, -- Wildhammer Stronghold
			},
		},
		{
			tag = "429:244",
			nodeID = 160,
			name = "Evergrove",
			neighbors = {
				[122] = 82, -- Area 52
				[125] = 52, -- Sylvanaar
				[126] = 37, -- Thunderlord Stronghold
				[156] = 45, -- Toshley's Station
			},
		},
		{
			tag = "474:325",
			nodeID = 163,
			name = "Mok'Nathal Village",
			faction = "H",
			neighbors = {
				[122] = 65, -- Area 52
				[126] = 63, -- Thunderlord Stronghold
				[151] = 72, -- Swamprat Post
			},
		},
		{
			tag = "320:416",
			nodeID = 164,
			name = "Orebor Harborage",
			faction = "A",
			neighbors = {
				[117] = 54, -- Telredor
				[125] = 76, -- Sylvanaar
			},
		},
	},

---------------------
---   NORTHREND   ---
---------------------
	[113] = {
		{
			nodeID = 226,
			name = "Transitus Shield, Coldarra",
			neighbors = {
				[289] = 45, -- Amber Ledge, Borean Tundra
			},
		},
		{
			nodeID = 257,
			name = "Warsong Hold, Borean Tundra",
			neighbors = {
				[258] = 87, -- Taunka'le Village, Borean Tundra
				[259] = 68, -- Bor'gorok Outpost, Borean Tundra
				[296] = 92, -- Unu'pe, Borean Tundra
				[289] = 35, -- Amber Ledge, Borean Tundra
			},
		},
		{
			nodeID = 289,
			name = "Amber Ledge, Borean Tundra",
			neighbors = {
				[245] = 66, -- Valiance Keep, Borean Tundra
				[258] = 71, -- Taunka'le Village, Borean Tundra
				[226] = 37, -- Transitus Shield, Coldarra
				[246] = 35, -- Fizzcrank Airstrip, Borean Tundra
				[257] = 41, -- Warsong Hold, Borean Tundra
				[259] = 34, -- Bor'gorok Outpost, Borean Tundra
			},
		},
		{
			nodeID = 309,
			name = "Nesingwary Base Camp, Sholazar Basin",
			neighbors = {
				[259] = 60, -- Bor'gorok Outpost, Borean Tundra
				[246] = 77, -- Fizzcrank Airstrip, Borean Tundra
				[325] = 91, -- Death's Rise, Icecrown
				[308] = 51, -- River's Heart, Sholazar Basin
			},
		},
		{
			nodeID = 259,
			name = "Bor'gorok Outpost, Borean Tundra",
			neighbors = {
				[309] = 47, -- Nesingwary Base Camp, Sholazar Basin
				[258] = 77, -- Taunka'le Village, Borean Tundra
				[289] = 58, -- Amber Ledge, Borean Tundra
				[257] = 72, -- Warsong Hold, Borean Tundra
				[308] = 56, -- River's Heart, Sholazar Basin
			},
		},
		{
			nodeID = 246,
			name = "Fizzcrank Airstrip, Borean Tundra",
			neighbors = {
				[308] = 63, -- River's Heart, Sholazar Basin
				[247] = 133, -- Stars' Rest, Dragonblight
				[289] = 44, -- Amber Ledge, Borean Tundra
				[245] = 70, -- Valiance Keep, Borean Tundra
				[309] = 76, -- Nesingwary Base Camp, Sholazar Basin
				[296] = 64, -- Unu'pe, Borean Tundra
			},
		},
		{
			nodeID = 245,
			name = "Valiance Keep, Borean Tundra",
			neighbors = {
				[247] = 145, -- Stars' Rest, Dragonblight
				[296] = 63, -- Unu'pe, Borean Tundra
				[289] = 63, -- Amber Ledge, Borean Tundra
				[246] = 75, -- Fizzcrank Airstrip, Borean Tundra
				[310] = 262, -- Dalaran
			},
		},
		{
			nodeID = 308,
			name = "River's Heart, Sholazar Basin",
			neighbors = {
				[259] = 61, -- Bor'gorok Outpost, Borean Tundra
				[309] = 42, -- Nesingwary Base Camp, Sholazar Basin
				[246] = 69, -- Fizzcrank Airstrip, Borean Tundra
				[325] = 93, -- Death's Rise, Icecrown
				[332] = 86, -- Warsong Camp, Wintergrasp
				[310] = 301, -- Dalaran
				[303] = 150, -- Valiance Landing Camp, Wintergrasp
			},
		},
		{
			nodeID = 325,
			name = "Death's Rise, Icecrown",
			neighbors = {
				[309] = 117, -- Nesingwary Base Camp, Sholazar Basin
				[333] = 93, -- The Shadow Vault, Icecrown
				[308] = 116, -- River's Heart, Sholazar Basin
				[303] = 173, -- Valiance Landing Camp, Wintergrasp
				[332] = 114, -- Warsong Camp, Wintergrasp
				[335] = 175, -- Crusaders' Pinnacle, Icecrown
			},
		},
		{
			nodeID = 258,
			name = "Taunka'le Village, Borean Tundra",
			neighbors = {
				[259] = 72, -- Bor'gorok Outpost, Borean Tundra
				[256] = 91, -- Agmar's Hammer, Dragonblight
				[257] = 84, -- Warsong Hold, Borean Tundra
				[296] = 30, -- Unu'pe, Borean Tundra
				[289] = 76, -- Amber Ledge, Borean Tundra
				[332] = 80, -- Warsong Camp, Wintergrasp
			},
		},
		{
			nodeID = 296,
			name = "Unu'pe, Borean Tundra",
			neighbors = {
				[257] = 87, -- Warsong Hold, Borean Tundra
				[246] = 79, -- Fizzcrank Airstrip, Borean Tundra
				[258] = 21, -- Taunka'le Village, Borean Tundra
				[294] = 118, -- Moa'ki, Dragonblight
				[247] = 97, -- Stars' Rest, Dragonblight
				[245] = 59, -- Valiance Keep, Borean Tundra
			},
		},
		{
			nodeID = 332,
			name = "Warsong Camp, Wintergrasp",
			neighbors = {
				[310] = 141, -- Dalaran
				[308] = 76, -- River's Heart, Sholazar Basin
				[256] = 100, -- Agmar's Hammer, Dragonblight
				[335] = 159, -- Crusaders' Pinnacle, Icecrown
				[258] = 79, -- Taunka'le Village, Borean Tundra
				[325] = 113, -- Death's Rise, Icecrown
				[333] = 164, -- The Shadow Vault, Icecrown
			},
		},
		{
			nodeID = 333,
			name = "The Shadow Vault, Icecrown",
			neighbors = {
				[325] = 77, -- Death's Rise, Icecrown
				[335] = 120, -- Crusaders' Pinnacle, Icecrown
				[334] = 134, -- The Argent Vanguard, Icecrown
				[327] = 121, -- Bouldercrag's Refuge, The Storm Peaks
				[303] = 141, -- Valiance Landing Camp, Wintergrasp
				[340] = 78, -- Argent Tournament Grounds, Icecrown
				[332] = 138, -- Warsong Camp, Wintergrasp
			},
		},
		{
			nodeID = 303,
			name = "Valiance Landing Camp, Wintergrasp",
			neighbors = {
				[335] = 109, -- Crusaders' Pinnacle, Icecrown
				[308] = 136, -- River's Heart, Sholazar Basin
				[310] = 91, -- Dalaran
				[247] = 80, -- Stars' Rest, Dragonblight
				[251] = 49, -- Fordragon Hold, Dragonblight
				[333] = 162, -- The Shadow Vault, Icecrown
				[325] = 166, -- Death's Rise, Icecrown
			},
		},
		{
			nodeID = 247,
			name = "Stars' Rest, Dragonblight",
			neighbors = {
				[251] = 80, -- Fordragon Hold, Dragonblight
				[244] = 123, -- Wintergarde Keep, Dragonblight
				[294] = 70, -- Moa'ki, Dragonblight
				[245] = 132, -- Valiance Keep, Borean Tundra
				[246] = 129, -- Fizzcrank Airstrip, Borean Tundra
				[252] = 89, -- Wyrmrest Temple, Dragonblight
				[296] = 100, -- Unu'pe, Borean Tundra
				[303] = 67, -- Valiance Landing Camp, Wintergrasp
			},
		},
		{
			nodeID = 256,
			name = "Agmar's Hammer, Dragonblight",
			neighbors = {
				[294] = 63, -- Moa'ki, Dragonblight
				[254] = 88, -- Venomspite, Dragonblight
				[260] = 65, -- Kor'kron Vanguard, Dragonblight
				[252] = 51, -- Wyrmrest Temple, Dragonblight
				[258] = 113, -- Taunka'le Village, Borean Tundra
				[332] = 117, -- Warsong Camp, Wintergrasp
			},
		},
		{
			nodeID = 251,
			name = "Fordragon Hold, Dragonblight",
			neighbors = {
				[305] = 118, -- Ebon Watch, Zul'Drak
				[247] = 73, -- Stars' Rest, Dragonblight
				[310] = 65, -- Dalaran
				[252] = 65, -- Wyrmrest Temple, Dragonblight
				[244] = 86, -- Wintergarde Keep, Dragonblight
				[303] = 60, -- Valiance Landing Camp, Wintergrasp
			},
		},
		{
			nodeID = 260,
			name = "Kor'kron Vanguard, Dragonblight",
			neighbors = {
				[305] = 106, -- Ebon Watch, Zul'Drak
				[252] = 67, -- Wyrmrest Temple, Dragonblight
				[310] = 56, -- Dalaran
				[254] = 90, -- Venomspite, Dragonblight
				[256] = 52, -- Agmar's Hammer, Dragonblight
			},
		},
		{
			nodeID = 294,
			name = "Moa'ki, Dragonblight",
			neighbors = {
				[252] = 48, -- Wyrmrest Temple, Dragonblight
				[254] = 61, -- Venomspite, Dragonblight
				[296] = 132, -- Unu'pe, Borean Tundra
				[244] = 85, -- Wintergarde Keep, Dragonblight
				[256] = 64, -- Agmar's Hammer, Dragonblight
				[310] = 122, -- Dalaran
				[295] = 184, -- Kamagua, Howling Fjord
				[247] = 54, -- Stars' Rest, Dragonblight
			},
		},
		{
			nodeID = 335,
			name = "Crusaders' Pinnacle, Icecrown",
			neighbors = {
				[333] = 123, -- The Shadow Vault, Icecrown
				[310] = 70, -- Dalaran
				[334] = 32, -- The Argent Vanguard, Icecrown
				[325] = 168, -- Death's Rise, Icecrown
				[332] = 159, -- Warsong Camp, Wintergrasp
				[340] = 97, -- Argent Tournament Grounds, Icecrown
			},
		},
		{
			nodeID = 310,
			name = "Dalaran",
			neighbors = {
				[335] = 39, -- Crusaders' Pinnacle, Icecrown
				[337] = 57, -- Sunreaver's Command, Crystalsong Forest
				[252] = 122, -- Wyrmrest Temple, Dragonblight
				[334] = 32, -- The Argent Vanguard, Icecrown
				[294] = 159, -- Moa'ki, Dragonblight
				[251] = 100, -- Fordragon Hold, Dragonblight
				[260] = 73, -- Kor'kron Vanguard, Dragonblight
				[320] = 54, -- K3, The Storm Peaks
				[336] = 52, -- Windrunner's Overlook, Crystalsong Forest
				[305] = 81, -- Ebon Watch, Zul'Drak
				[303] = 116, -- Valiance Landing Camp, Wintergrasp
				[308] = 212, -- River's Heart, Sholazar Basin
				[245] = 261, -- Valiance Keep, Borean Tundra
				[340] = 123, -- Argent Tournament Grounds, Icecrown
				[183] = 281, -- Valgarde Port, Howling Fjord
				[332] = 161, -- Warsong Camp, Wintergrasp
			},
		},
		{
			nodeID = 252,
			name = "Wyrmrest Temple, Dragonblight",
			neighbors = {
				[310] = 65, -- Dalaran
				[305] = 105, -- Ebon Watch, Zul'Drak
				[256] = 69, -- Agmar's Hammer, Dragonblight
				[247] = 66, -- Stars' Rest, Dragonblight
				[244] = 50, -- Wintergarde Keep, Dragonblight
				[254] = 50, -- Venomspite, Dragonblight
				[260] = 66, -- Kor'kron Vanguard, Dragonblight
				[294] = 53, -- Moa'ki, Dragonblight
				[251] = 58, -- Fordragon Hold, Dragonblight
			},
		},
		{
			nodeID = 334,
			name = "The Argent Vanguard, Icecrown",
			neighbors = {
				[335] = 27, -- Crusaders' Pinnacle, Icecrown
				[321] = 40, -- Frosthold, The Storm Peaks
				[333] = 147, -- The Shadow Vault, Icecrown
				[310] = 31, -- Dalaran
				[323] = 103, -- Grom'arsh Crash-Site, The Storm Peaks
			},
		},
		{
			nodeID = 340,
			name = "Argent Tournament Grounds, Icecrown",
			neighbors = {
				[333] = 89, -- The Shadow Vault, Icecrown
				[327] = 52, -- Bouldercrag's Refuge, The Storm Peaks
				[310] = 140, -- Dalaran
				[335] = 73, -- Crusaders' Pinnacle, Icecrown
			},
		},
		{
			nodeID = 321,
			name = "Frosthold, The Storm Peaks",
			neighbors = {
				[326] = 97, -- Ulduar, The Storm Peaks
				[334] = 33, -- The Argent Vanguard, Icecrown
				[327] = 65, -- Bouldercrag's Refuge, The Storm Peaks
				[320] = 48, -- K3, The Storm Peaks
			},
		},
		{
			nodeID = 327,
			name = "Bouldercrag's Refuge, The Storm Peaks",
			neighbors = {
				[333] = 112, -- The Shadow Vault, Icecrown
				[323] = 40, -- Grom'arsh Crash-Site, The Storm Peaks
				[326] = 44, -- Ulduar, The Storm Peaks
				[321] = 78, -- Frosthold, The Storm Peaks
				[340] = 61, -- Argent Tournament Grounds, Icecrown
			},
		},
		{
			nodeID = 336,
			name = "Windrunner's Overlook, Crystalsong Forest",
			neighbors = {
				[320] = 46, -- K3, The Storm Peaks
				[310] = 47, -- Dalaran
				[305] = 46, -- Ebon Watch, Zul'Drak
				[244] = 75, -- Wintergarde Keep, Dragonblight
			},
		},
		{
			nodeID = 254,
			name = "Venomspite, Dragonblight",
			neighbors = {
				[305] = 83, -- Ebon Watch, Zul'Drak
				[250] = 59, -- Conquest Hold, Grizzly Hills
				[260] = 120, -- Kor'kron Vanguard, Dragonblight
				[248] = 98, -- Apothecary Camp, Howling Fjord
				[252] = 52, -- Wyrmrest Temple, Dragonblight
				[294] = 82, -- Moa'ki, Dragonblight
				[306] = 106, -- Light's Breach, Zul'Drak
				[256] = 133, -- Agmar's Hammer, Dragonblight
				[190] = 186, -- New Agamand, Howling Fjord
			},
		},
		{
			nodeID = 244,
			name = "Wintergarde Keep, Dragonblight",
			neighbors = {
				[252] = 54, -- Wyrmrest Temple, Dragonblight
				[251] = 96, -- Fordragon Hold, Dragonblight
				[185] = 125, -- Westguard Keep, Howling Fjord
				[336] = 71, -- Windrunner's Overlook, Crystalsong Forest
				[294] = 98, -- Moa'ki, Dragonblight
				[306] = 88, -- Light's Breach, Zul'Drak
				[253] = 77, -- Amberpine Lodge, Grizzly Hills
				[247] = 114, -- Stars' Rest, Dragonblight
				[305] = 64, -- Ebon Watch, Zul'Drak
			},
		},
		{
			nodeID = 337,
			name = "Sunreaver's Command, Crystalsong Forest",
			neighbors = {
				[305] = 37, -- Ebon Watch, Zul'Drak
				[310] = 55, -- Dalaran
				[320] = 33, -- K3, The Storm Peaks
			},
		},
		{
			nodeID = 323,
			name = "Grom'arsh Crash-Site, The Storm Peaks",
			neighbors = {
				[326] = 51, -- Ulduar, The Storm Peaks
				[320] = 87, -- K3, The Storm Peaks
				[327] = 37, -- Bouldercrag's Refuge, The Storm Peaks
				[334] = 79, -- The Argent Vanguard, Icecrown
				[324] = 96, -- Camp Tunka'lo, The Storm Peaks
			},
		},
		{
			nodeID = 320,
			name = "K3, The Storm Peaks",
			neighbors = {
				[337] = 37, -- Sunreaver's Command, Crystalsong Forest
				[324] = 90, -- Camp Tunka'lo, The Storm Peaks
				[321] = 43, -- Frosthold, The Storm Peaks
				[322] = 100, -- Dun Niffelem, The Storm Peaks
				[305] = 43, -- Ebon Watch, Zul'Drak
				[323] = 75, -- Grom'arsh Crash-Site, The Storm Peaks
				[336] = 53, -- Windrunner's Overlook, Crystalsong Forest
				[310] = 72, -- Dalaran
			},
		},
		{
			nodeID = 305,
			name = "Ebon Watch, Zul'Drak",
			neighbors = {
				[310] = 67, -- Dalaran
				[336] = 33, -- Windrunner's Overlook, Crystalsong Forest
				[260] = 108, -- Kor'kron Vanguard, Dragonblight
				[252] = 91, -- Wyrmrest Temple, Dragonblight
				[306] = 44, -- Light's Breach, Zul'Drak
				[251] = 111, -- Fordragon Hold, Dragonblight
				[320] = 40, -- K3, The Storm Peaks
				[244] = 61, -- Wintergarde Keep, Dragonblight
				[304] = 63, -- The Argent Stand, Zul'Drak
				[337] = 26, -- Sunreaver's Command, Crystalsong Forest
				[254] = 98, -- Venomspite, Dragonblight
			},
		},
		{
			nodeID = 326,
			name = "Ulduar, The Storm Peaks",
			neighbors = {
				[307] = 153, -- Zim'Torga, Zul'Drak
				[321] = 102, -- Frosthold, The Storm Peaks
				[327] = 48, -- Bouldercrag's Refuge, The Storm Peaks
				[322] = 103, -- Dun Niffelem, The Storm Peaks
				[323] = 43, -- Grom'arsh Crash-Site, The Storm Peaks
				[324] = 87, -- Camp Tunka'lo, The Storm Peaks
			},
		},
		{
			nodeID = 306,
			name = "Light's Breach, Zul'Drak",
			neighbors = {
				[304] = 43, -- The Argent Stand, Zul'Drak
				[254] = 121, -- Venomspite, Dragonblight
				[253] = 83, -- Amberpine Lodge, Grizzly Hills
				[244] = 83, -- Wintergarde Keep, Dragonblight
				[305] = 39, -- Ebon Watch, Zul'Drak
				[250] = 74, -- Conquest Hold, Grizzly Hills
				[249] = 105, -- Camp Oneqwah, Grizzly Hills
			},
		},
		{
			nodeID = 250,
			name = "Conquest Hold, Grizzly Hills",
			neighbors = {
				[306] = 79, -- Light's Breach, Zul'Drak
				[248] = 57, -- Apothecary Camp, Howling Fjord
				[192] = 85, -- Camp Winterhoof, Howling Fjord
				[254] = 87, -- Venomspite, Dragonblight
				[249] = 102, -- Camp Oneqwah, Grizzly Hills
			},
		},
		{
			nodeID = 322,
			name = "Dun Niffelem, The Storm Peaks",
			neighbors = {
				[307] = 88, -- Zim'Torga, Zul'Drak
				[326] = 84, -- Ulduar, The Storm Peaks
				[320] = 87, -- K3, The Storm Peaks
				[324] = 32, -- Camp Tunka'lo, The Storm Peaks
			},
		},
		{
			nodeID = 304,
			name = "The Argent Stand, Zul'Drak",
			neighbors = {
				[307] = 41, -- Zim'Torga, Zul'Drak
				[249] = 99, -- Camp Oneqwah, Grizzly Hills
				[306] = 24, -- Light's Breach, Zul'Drak
				[305] = 52, -- Ebon Watch, Zul'Drak
				[255] = 71, -- Westfall Brigade, Grizzly Hills
			},
		},
		{
			nodeID = 253,
			name = "Amberpine Lodge, Grizzly Hills",
			neighbors = {
				[306] = 66, -- Light's Breach, Zul'Drak
				[255] = 83, -- Westfall Brigade, Grizzly Hills
				[184] = 116, -- Fort Wildervar, Howling Fjord
				[185] = 83, -- Westguard Keep, Howling Fjord
				[244] = 81, -- Wintergarde Keep, Dragonblight
			},
		},
		{
			nodeID = 324,
			name = "Camp Tunka'lo, The Storm Peaks",
			neighbors = {
				[307] = 98, -- Zim'Torga, Zul'Drak
				[323] = 101, -- Grom'arsh Crash-Site, The Storm Peaks
				[326] = 73, -- Ulduar, The Storm Peaks
				[320] = 114, -- K3, The Storm Peaks
				[322] = 45, -- Dun Niffelem, The Storm Peaks
			},
		},
		{
			nodeID = 295,
			name = "Kamagua, Howling Fjord",
			neighbors = {
				[183] = 80, -- Valgarde Port, Howling Fjord
				[185] = 36, -- Westguard Keep, Howling Fjord
				[190] = 63, -- New Agamand, Howling Fjord
				[294] = 194, -- Moa'ki, Dragonblight
				[248] = 55, -- Apothecary Camp, Howling Fjord
			},
		},
		{
			nodeID = 248,
			name = "Apothecary Camp, Howling Fjord",
			neighbors = {
				[190] = 92, -- New Agamand, Howling Fjord
				[192] = 60, -- Camp Winterhoof, Howling Fjord
				[250] = 47, -- Conquest Hold, Grizzly Hills
				[254] = 117, -- Venomspite, Dragonblight
				[295] = 54, -- Kamagua, Howling Fjord
			},
		},
		{
			nodeID = 185,
			name = "Westguard Keep, Howling Fjord",
			neighbors = {
				[183] = 69, -- Valgarde Port, Howling Fjord
				[295] = 51, -- Kamagua, Howling Fjord
				[184] = 85, -- Fort Wildervar, Howling Fjord
				[244] = 151, -- Wintergarde Keep, Dragonblight
				[253] = 76, -- Amberpine Lodge, Grizzly Hills
			},
		},
		{
			nodeID = 307,
			name = "Zim'Torga, Zul'Drak",
			neighbors = {
				[326] = 154, -- Ulduar, The Storm Peaks
				[255] = 56, -- Westfall Brigade, Grizzly Hills
				[304] = 52, -- The Argent Stand, Zul'Drak
				[331] = 53, -- Gundrak, Zul'Drak
				[324] = 86, -- Camp Tunka'lo, The Storm Peaks
				[249] = 82, -- Camp Oneqwah, Grizzly Hills
				[322] = 85, -- Dun Niffelem, The Storm Peaks
			},
		},
		{
			nodeID = 331,
			name = "Gundrak, Zul'Drak",
			neighbors = {
				[307] = 55, -- Zim'Torga, Zul'Drak
			},
		},
		{
			nodeID = 255,
			name = "Westfall Brigade, Grizzly Hills",
			neighbors = {
				[253] = 78, -- Amberpine Lodge, Grizzly Hills
				[307] = 72, -- Zim'Torga, Zul'Drak
				[304] = 81, -- The Argent Stand, Zul'Drak
				[184] = 85, -- Fort Wildervar, Howling Fjord
			},
		},
		{
			nodeID = 192,
			name = "Camp Winterhoof, Howling Fjord",
			neighbors = {
				[248] = 57, -- Apothecary Camp, Howling Fjord
				[249] = 58, -- Camp Oneqwah, Grizzly Hills
				[190] = 79, -- New Agamand, Howling Fjord
				[303] = 73, -- Vengeance Landing, Howling Fjord
				[250] = 93, -- Conquest Hold, Grizzly Hills
			},
		},
		{
			nodeID = 249,
			name = "Camp Oneqwah, Grizzly Hills",
			neighbors = {
				[306] = 92, -- Light's Breach, Zul'Drak
				[307] = 92, -- Zim'Torga, Zul'Drak
				[303] = 105, -- Vengeance Landing, Howling Fjord
				[304] = 99, -- The Argent Stand, Zul'Drak
				[250] = 97, -- Conquest Hold, Grizzly Hills
				[192] = 49, -- Camp Winterhoof, Howling Fjord
			},
		},
		{
			nodeID = 190,
			name = "New Agamand, Howling Fjord",
			neighbors = {
				[303] = 80, -- Vengeance Landing, Howling Fjord
				[192] = 80, -- Camp Winterhoof, Howling Fjord
				[248] = 103, -- Apothecary Camp, Howling Fjord
				[295] = 76, -- Kamagua, Howling Fjord
				[254] = 191, -- Venomspite, Dragonblight
			},
		},
		{
			nodeID = 183,
			name = "Valgarde Port, Howling Fjord",
			neighbors = {
				[184] = 70, -- Fort Wildervar, Howling Fjord
				[295] = 95, -- Kamagua, Howling Fjord
				[185] = 69, -- Westguard Keep, Howling Fjord
				[310] = 281, -- Dalaran
			},
		},
		{
			nodeID = 184,
			name = "Fort Wildervar, Howling Fjord",
			neighbors = {
				[255] = 97, -- Westfall Brigade, Grizzly Hills
				[185] = 80, -- Westguard Keep, Howling Fjord
				[183] = 73, -- Valgarde Port, Howling Fjord
				[253] = 96, -- Amberpine Lodge, Grizzly Hills
			},
		},
		{
			nodeID = 303,
			name = "Vengeance Landing, Howling Fjord",
			neighbors = {
				[190] = 88, -- New Agamand, Howling Fjord
				[192] = 73, -- Camp Winterhoof, Howling Fjord
				[249] = 104, -- Camp Oneqwah, Grizzly Hills
				[310] = 303, -- Dalaran
			},
		},
	},
}
