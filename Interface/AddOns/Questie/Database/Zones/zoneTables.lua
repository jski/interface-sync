---@type ZoneDB
local ZoneDB = QuestieLoader:ImportModule("ZoneDB")


--- This table maps the areaId (used in the DB for example) to
--- the UiMapId of each zone.
--- The UiMapId identifies a map which can be displayed ingame on the worldmap.
--- Dungeons don't have a UiMapId!
--- https://wow.gamepedia.com/UiMapID/Classic
local areaIdToUiMapId = {
    [1] = 1426, -- Dun Morogh
    [3] = 1418, -- Badlands
    [4] = 1419, -- Blasted Lands
    [8] = 1435, -- Swamp of Sorrows
    [10] = 1431, -- Duskwood
    [11] = 1437, -- Wetlands
    [12] = 1429, -- Elwynn Forest
    [14] = 1411, -- Durotar
    [15] = 1445, -- Dustwallow Marsh
    [16] = 1447, -- Azshara
    [17] = 1413, -- The Barrens
    [28] = 1422, -- Western Plaguelands
    [33] = 1434, -- Stranglethorn Vale
    [36] = 1416, -- Alterac Mountains
    [38] = 1432, -- Loch Modan
    [40] = 1436, -- Westfall
    [41] = 1430, -- Deadwind Pass
    [44] = 1433, -- Redridge Mountains
    [45] = 1417, -- Arathi Highlands
    [46] = 1428, -- Burning Steppes
    [47] = 1425, -- The Hinterlands
    [51] = 1427, -- Searing Gorge
    [65] = 115, -- Dragonblight
    [66] = 121, -- Zul'Drak
    [67] = 120, -- The Storm Peaks
    [85] = 1420, -- Tirisfal Glades
    [130] = 1421, -- Silverpine Forest
    [139] = 1423, -- Eastern Plaguelands
    [141] = 1438, -- Teldrassil
    [148] = 1439, -- Darkshore
    [206] = 133, -- Utgarde Keep - Dungeon
    [209] = 310, -- Shadowfang Keep - Dungeon
    [210] = 118, -- Icecrown
    [215] = 1412, -- Mulgore
    [267] = 1424, -- Hillsbrad Foothills
    [331] = 1440, -- Ashenvale
    [357] = 1444, -- Feralas
    [361] = 1448, -- Felwood
    [394] = 116, -- Grizzly Hills
    [400] = 1441, -- Thousand Needles
    [405] = 1443, -- Desolace
    [406] = 1442, -- Stonetalon Mountains
    [440] = 1446, -- Tanaris
    [490] = 1449, -- Un'Goro Crater
    [491] = 301, -- Razorfen Kraul - Dungeon
    [493] = 1450, -- Moonglade
    [495] = 117, -- Howling Fjord
    [618] = 1452, -- Winterspring
    [717] = 225, -- The Stockade - Dungeon
    [718] = 279, -- Wailing Caverns - Dungeon
    [719] = 221, -- Blackfathom Deeps - Dungeon
    [721] = 226, -- Gnomeregan - Dungeon
    [722] = 300, -- Razorfen Downs - Dungeon
    [796] = 302, -- Scarlet Monastery - Dungeon
    [1176] = 219, -- Zul'Farrak - Dungeon
    [1196] = 136, -- Utgarde Pinnacle - Dungeon
    [1337] = 230, -- Uldaman - Dungeon
    [1377] = 1451, -- Silithus
    [1477] = 220, -- The Temple of Atal'Hakkar - Dungeon
    [1497] = 1458, -- Undercity
    [1519] = 1453, -- Stormwind City
    [1537] = 1455, -- Ironforge
    [1581] = 291, -- The Deadmines - Dungeon
    [1583] = 250, -- Blackrock Spire - Dungeon
    [1584] = 242, -- Blackrock Depths - Dungeon
    [1637] = 1454, -- Orgrimmar
    [1638] = 1456, -- Thunder Bluff
    [1657] = 1457, -- Darnassus
    [1977] = 233, -- Zul'Gurub - Raid
    [2017] = 317, -- Stratholme - Dungeon
    [2100] = 280, -- Maraudon - Dungeon
    [2159] = 248, -- Onyxia's Lair - Dungeon?
    [2366] = 273, -- The Black Morass - Dungeon
    [2367] = 274, -- Old Hillsbrad Foothills - Dungeon
    [2437] = 213, -- Ragefire Chasm - Dungeon
    [2557] = 234, -- Dire Maul - Dungeon
    [2597] = 1459, -- Alterac Valley - Battleground
    [2677] = 287, -- Blackwing Lair - Raid
    [2717] = 232, -- Molten Core - Raid
    [2817] = 127, -- Crystalsong Forest
    [3277] = 1460, -- Warsong Gulch - Battleground
    [3358] = 1461, -- Arathi Basin - Battleground
    [3428] = 319, -- Ahn'Qiraj - Raid
    [3429] = 247, -- Ruins of Ahn'Qiraj - Raid
    [3430] = 1941, -- Eversong Woods
    [3433] = 1942, -- Ghostlands
    [3456] = 162, -- Naxxramas - Raid
    [3457] = 350, -- Karazhan - Raid
    [3477] = 157, -- Azjol-Nerub - Dungeon?
    [3483] = 1944, -- Hellfire Peninsula
    [3487] = 1954, -- Silvermoon City
    [3518] = 1951, -- Nagrand
    [3519] = 1952, -- Terokkar Forest
    [3520] = 1948, -- Shadowmoon Valley
    [3521] = 1946, -- Zangarmarsh
    [3522] = 1949, -- Blade's Edge Mountains
    [3523] = 1953, -- Netherstorm
    [3524] = 1943, -- Azuremyst Isle
    [3525] = 1950, -- Bloodmyst Isle
    [3535] = 1950, -- The Shattered Halls - Dungeon
    [3537] = 114, -- Borean Tundra
    [3557] = 1947, -- The Exodar
    [3562] = 347, -- Hellfire Ramparts - Dungeon
    [3606] = 329, -- Hyjal Summit - Raid
    [3607] = 332, -- Serpentshrine Cavern - Raid
    [3703] = 1955, -- Shattrath City
    [3711] = 119, -- Sholazar Basin
    [3713] = 261, -- The Blood Furnace - Dungeon
    [3714] = 246, -- The Shattered Halls - Dungeon
    [3715] = 263, -- The Steamvault - Dungeon
    [3716] = 262, -- The Underbog - Dungeon
    [3717] = 265, -- The Slave Pens - Dungeon
    [3789] = 260, -- Shadow Labyrinth - Dungeon
    [3790] = 256, -- Auchenai Crypts - Dungeon
    [3791] = 258, -- Sethekk Halls - Dungeon
    [3792] = 272, -- Mana-Tombs - Dungeon
    [3805] = 333, -- Zul'Aman - Raid
    [3820] = 1956, -- Eye of the Storm - Battleground
    [3836] = 331, -- Magtheridon's Lair - Raid
    [3845] = 334, -- Tempest Keep - Raid
    [3847] = 266, -- The Botanica - Dungeon
    [3848] = 269, -- The Arcatraz - Dungeon
    [3849] = 267, -- The Mechanar - Dungeon
    [3923] = 330, -- Gruul's Lair - Raid
    [3959] = 339, -- Black Temple - Raid
    [4075] = 335, -- Sunwell Plateau - Raid
    [4080] = 1957, -- Isle of Quel'Danas
    [4100] = 130, -- The Culling of Stratholme - Dungeon
    [4196] = 160, -- Drak'Tharon Keep - Dungeon
    [4197] = 123, -- Wintergrasp
    [4228] = 142, -- The Oculus - Dungeon
    [4264] = 140, -- Halls of Stone - Dungeon
    [4265] = 129, -- The Nexus - Dungeon
    [4272] = 138, -- Halls of Lightning - Dungeon
    [4273] = 147, -- Ulduar - Raid
    [4277] = 157, -- Azjol-Nerub - Dungeon
    [4298] = 124, -- Plaguelands: The Scarlet Enclave
    [4384] = 128, -- Strand of the Ancients - Battleground
    [4395] = 125, -- Dalaran - Dungeon?
    [4415] = 168, -- The Violet Hold - Dungeon
    [4416] = 153, -- Gundrak - Dungeon
    [4493] = 155, -- The Obsidian Sanctum - Raid
    [4494] = 132, -- Ahn'kahet: The Old Kingdom - Dungeon
    [4500] = 141, -- The Eye of Eternity - Raid
    [4603] = 156, -- Vault of Archavon - Raid
    [4710] = 169, -- Isle of Conquest - Battleground
    [4722] = 172, -- Trial of the Crusader - Raid
    [4723] = 171, -- Trial of the Champion - Dungeon
    [4742] = 170, -- Hrothgar's Landing
    [4809] = 183, -- The Forge of Souls - Dungeon
    [4812] = 186, -- Icecrown Citadel - Raid
    [4813] = 184, -- Pit of Saron - Dungeon
    [4820] = 185, -- Halls of Reflection - Dungeon
    [4987] = 200, -- The Ruby Sanctum - Raid
    [14284] = 114, -- Borean Tundra - Battleground
    [14285] = 118, -- Icecrown - Battleground
    [14286] = 119, -- Sholazar Basin - Battleground
    [14287] = 115, -- Dragonblight - Battleground
    [14288] = 123, -- Wintergrasp - Battleground
}

-- [areaId] = {"name", alternative areaId (a sub zone), parentId}
local dungeons = {
    [206] = {"Utgarde Keep",nil,495},
    [209] = {"Shadowfang Keep", 236, 130},
    [491] = {"Razorfen Kraul", 1717, 17},
    [717] = {"The Stockade", nil, 1519},
    [718] = {"Wailing Caverns", nil, 17},
    [719] = {"Blackfathom Deeps", 2797, 331},
    [721] = {"Gnomeregan", 133, 1},
    [722] = {"Razorfen Downs", 1316, 17},
    [796] = {"Scarlet Monastery", nil, 85},
    [1176] = {"Zul'Farrak", 978, 440},
    [1196] = {"Utgarde Pinnacle",nil,495},
    [1337] = {"Uldaman", 1517, 3},
    [1477] = {"The Temple of Atal'Hakkar", 1417, 8},
    [1581] = {"The Deadmines", nil, 40},
    [1583] = {"Blackrock Spire", nil, 51},
    [1584] = {"Blackrock Depths", nil, 51},
    [1585] = {"Blackrock Depths", nil, 51},
    [2017] = {"Stratholme", 2279, 139},
    [2057] = {"Scholomance", nil, 28},
    [2100] = {"Maraudon", nil, 405},
    [2366] = {"The Black Morass", nil, 440},
    [2367] = {"Old Hillsbrad Foothills", nil, 440},
    [2437] = {"Ragefire Chasm", nil, 1637},
    [2557] = {"Dire Maul", 2577, 357},
    [3456] = {"Naxxramas",nil,65},
    [3457] = {"Kharazan", nil, 41},
    [3562] = {"Hellfire Ramparts",nil,3483},
    [3606] = {"Hyjal Summit", nil, 440},
    [3713] = {"The Blood Furnace",nil,3483},
    [3714] = {"The Shattered Halls",3535,3483},
    [3715] = {"The Steamvault",nil,3521},
    [3716] = {"The Underbog",nil,3521},
    [3717] = {"The Slave Pens",nil,3521},
    [3789] = {"Shadow Labyrinth",nil,3519},
    [3790] = {"Auchenai Crypts",nil,3519},
    [3791] = {"Sethekk Halls",nil,3519},
    [3792] = {"Mana-Tombs",nil,3519},
    [3805] = {"Zul'Aman",nil,3433},
    [3847] = {"The Botanica",nil,3523},
    [3848] = {"The Arcatraz",nil,3523},
    [3849] = {"The Mechanar",nil,3523},
    [3959] = {"Black Temple",nil,3520},
    [4075] = {"Sunwell Plateau",nil,4080},
    [4131] = {"Magisters' Terrace",nil,4080},
    [4196] = {"Drak'Tharon Keep",nil,66},
    [4265] = {"The Nexus",nil,3537},
    [4228] = {"The Oculus",nil,3537},
    [4264] = {"Halls of Stone",nil,67},
    [4272] = {"Halls of Lightning",nil,67},
    [4273] = {"Ulduar",nil,67},
    [4277] = {"Azjol-Nerub",nil,65},
    [4415] = {"The Violet Hold",nil,4395},
    [4416] = {"Gundrak",nil,66},
    [4493] = {"The Obsidian Sanctum",nil,65},
    [4494] = {"Ahn'kahet: The Old Kingdom",nil,65},
    [4500] = {"The Eye of Eternity",nil,3537},
    [4603] = {"Vault of Archavon",nil,4197},
    [4722] = {"Trial of the Crusader",nil,210},
    [4723] = {"Trial of the Champion",nil,210},
    [4809] = {"The Forge of Souls",nil,210},
    [4812] = {"Icecrown Citadel",nil,210},
    [4813] = {"Pit of Saron",nil,210},
    [4820] = {"Halls of Reflection",nil,210},
    [4987] = {"The Ruby Sanctum",nil,65},
}

function ZoneDB:GetDungeons()
    return dungeons
end

-- [areaId] = {{areaId, locationX, locationY}, ...}
local dungeonLocations = {
    [206] = {{495, 57.3, 46.8}},
    [209] = {{130, 45, 68.7}},
    [491] = {{17, 42.3, 89.9}},
    [717] = {{1519, 40.5, 55.9}},
    [718] = {{17, 46, 36.5}},
    [719] = {{331, 14.1, 14.4}},
    [721] = {{1, 24.4, 39.8}},
    [722] = {{17, 50.8, 92.8}},
    [796] = {{85, 83, 34}},
    [1176] = {{440, 38.7, 20.1}},
    [1196] = {{495, 57.3, 46.8}},
    [1337] = {{3, 44.4, 12.2}, {3, 65.2, 43.5}},
    [1417] = {{8, 69.4, 56.8}},
    [1477] = {{8, 69.4, 56.8}},
    [1581] = {{40, 42.5, 71.1}},
    [1583] = {{51, 34.8, 84.8}, {46, 29.5, 38.2}},
    [1584] = {{51, 34.8, 84.8}, {46, 29.5, 38.2}},
    [1585] = {{51, 34.8, 84.8}, {46, 29.5, 38.2}},
    [1977] = {{33, 50.6, 17.6}},
    [2017] = {{139, 30.9, 17}},
    [2057] = {{28, 69.8, 73.6}},
    [2100] = {{405, 29.5, 62.5}},
    [2159] = {{15, 52.4, 76.4}},
    [2257] = {{1519, 60.3, 12.5}, {1537, 72.8, 50.3}},
    [2366] = {{440, 57.4, 62.8}},
    [2367] = {{440, 55.6, 53.7}},
    [2437] = {{1637, 51.7, 49.8}},
    [2557] = {{357, 59.2, 45.1}},
    [3456] = {{65, 87.4, 51.1},{139, 39.9, 25.8}},
    [2597] = {{36, 66.6, 51.3},},
    [2677] = {{51, 34.8, 84.8}, {46, 29.5, 38.2}},
    [2717] = {{51, 34.8, 84.8}, {46, 29.5, 38.2}},
    [2917] = {{1637, 40.4, 68.3}},
    [2918] = {{1519, 72.7, 54}},
    [3428] = {{1377, 29, 95}},
    [3429] = {{1377, 29, 95}},
    [3457] = {{41, 46.71, 70.22}},
    [3562] = {{3483, 47.7, 53.6}},
    [3606] = {{440, 57.2, 49.9}},
    [3713] = {{3483, 46.0, 51.8}},
    [3714] = {{3483, 47.7, 52.0}},
    [3715] = {{3521, 50.4, 40.9}},
    [3716] = {{3521, 50.4, 40.9}},
    [3717] = {{3521, 50.4, 40.9}},
    [3789] = {{3519, 39.6, 71.0}},
    [3790] = {{3519, 36.1, 65.6}},
    [3791] = {{3519, 43.2, 65.6}},
    [3792] = {{3519, 39.7, 60.2}},
    [3805] = {{3433, 82.6, 64.3}},
    [3847] = {{3523, 71.7, 55.0}},
    [3848] = {{3523, 74.4, 57.7}},
    [3849] = {{3523, 70.6, 69.7}},
    [3959] = {{3520, 71.1, 46.3}},
    [4075] = {{4080, 44.5, 45.3}},
    [4131] = {{4080, 61.4, 31.0}},
    [4196] = {{66, 29.0, 83.9},{394, 17.5, 27.0}},
    [4265] = {{3537, 27.6, 26.6}},
    [4228] = {{3537, 27.6, 26.6}},
    [4264] = {{67, 39.6, 26.9}},
    [4272] = {{67, 45.4, 21.4}},
    [4273] = {{67, 41.6, 17.8}},
    [4277] = {{65, 26.2, 49.6}},
    [4415] = {{4395, 66.8, 68.2}},
    [4416] = {{66, 76.2, 21.1}},
    [4493] = {{65, 59.6, 51.1}},
    [4494] = {{65, 26.2, 49.6}},
    [4500] = {{3537, 27.6, 26.6}},
    [4603] = {{4197, 50.5, 16.4}},
    [4722] = {{210, 75.1, 21.8}},
    [4723] = {{210, 74.2, 20.5}},
    [4809] = {{210, 52.6, 89.4}},
    [4812] = {{210, 53.3, 85.5}},
    [4813] = {{210, 52.6, 89.4}},
    [4820] = {{210, 52.6, 89.4}},
    [4987] = {{65, 59.6, 51.1}},
    [7307] = {{51, 34.8, 84.8}, {46, 29.5, 38.2}},
}

-- [dungeonZone] = parentZone
local dungeonParentZones = {
    [236] = 209,
    [1717] = 491,
    [2797] = 719,
    [133] = 721,
    [1316] = 722,
    [978] = 1176,
    [1517] = 1337,
    [1417] = 1477,
    [2279] = 2017,
    [2577] = 2557,
}

-- [subZone] = parentZone
local subZoneToParentZone = {
    [2839] = 2597,
    [35] = 33,
    [1116] = 357,
    [702] = 141,
    [1769] = 361,
    [3917] = 3688,
    [3696] = 3522,
    [2300] = 1941,
    [3545] = 3535,
    [3563] = 3535,
    [3845] = 3842,
    -- starting zones
    [9] = 12,
    [132] = 1,
    [154] = 85,
    [188] = 141,
    [220] = 215,
    [363] = 14,
    [3431] = 3430,
    [3526] = 3524,
}

function ZoneDB:GetZoneTables()
    return areaIdToUiMapId, dungeons, dungeonLocations, dungeonParentZones, subZoneToParentZone
end

-- Different source of zoneIds
-- These are not in use anymore but are quite helpful when fixing the database
-- https://www.ownedcore.com/forums/world-of-warcraft/world-of-warcraft-emulator-servers/60411-zone-ids.html
ZoneDB.zoneIDs = {
    DUN_MOROGH = 1,
    BADLANDS = 3,
    BLASTED_LANDS = 4,
    SWAMP_OF_SORROWS = 8,
    DUSKWOOD = 10,
    WETLANDS = 11,
    ELWYNN_FOREST = 12,
    DUROTAR = 14,
    DUSTWALLOW_MARSH = 15,
    AZSHARA = 16,
    THE_BARRENS = 17,
    WESTERN_PLAGUELANDS = 28,
    STRANGLETHORN_VALE = 33,
    ALTERAC_MOUNTAINS = 36,
    LOCH_MODAN = 38,
    WESTFALL = 40,
    DEADWIND_PASS = 41,
    REDRIDGE_MOUNTAINS = 44,
    ARATHI_HIGHLANDS = 45,
    BURNING_STEPPES = 46,
    THE_HINTERLANDS = 47,
    SEARING_GORGE = 51,
    TIRISFAL_GLADES = 85,
    SILVERPINE_FOREST = 130,
    EASTERN_PLAGUELANDS = 139,
    TELDRASSIL = 141,
    DARKSHORE = 148,
    SHADOWFANG_KEEP = 209,
    MULGORE = 215,
    HILLSBRAD_FOOTHILLS = 267,
    ASHENVALE = 331,
    FERALAS = 357,
    FELWOOD = 361,
    THOUSAND_NEEDLES = 400,
    DESOLACE = 405,
    STONETALON_MOUNTAINS = 406,
    TANARIS = 440,
    UN_GORO_CRATER = 490,
    RAZORFEN_KRAUL = 491,
    MOONGLADE = 493,
    WINTERSPRING = 618,
    THE_STOCKADE = 717,
    WAILING_CAVERNS = 718,
    BLACKFATHOM_DEEPS = 719,
    GNOMEREGAN = 721,
    RAZORFEN_DOWNS = 722,
    SCARLET_MONASTERY = 796,
    ZUL_FARRAK = 1176,
    ULDAMAN = 1337,
    SILITHUS = 1377,
    THE_TEMPLE_OF_ATAL_HAKKAR = 1477,
    UNDERCITY = 1497,
    STORMWIND_CITY = 1519,
    IRONFORGE = 1537,
    THE_DEADMINES = 1581,
    LOWER_BLACKROCK_SPIRE = 1583,
    BLACKROCK_DEPTHS = 1585,
    ORGRIMMAR = 1637,
    THUNDER_BLUFF = 1638,
    DARNASSUS = 1657,
    ZUL_GURUB = 1977,
    STRATHOLME = 2017,
    SCHOLOMANCE = 2057,
    MARAUDON = 2100,
    ONYXIAS_LAIR = 2159,
    DEEPRUN_TRAM = 2257,
    SOUTH_SEAS = 2317,
    THE_BLACK_MORASS = 2366,
    OLD_HILLSBRAD_FOOTHILLS = 2367,
    RAGEFIRE_CHASM = 2437,
    DIRE_MAUL = 2557,
    ALTERAC_VALLEY = 2597,
    BLACKWING_LAIR = 2677,
    MOLTEN_CORE = 2717,
    HALL_OF_LEGENDS = 2917,
    CHAMPIONS_HALL = 2918,
    WARSONG_GULCH = 3277,
    ARATHI_BASIN = 3358,
    AHN_QIRAJ = 3428,
    RUINS_OF_AHN_QIRAJ = 3429,
    NAXXRAMAS = 3456,
    EVERSONG_WOODS = 3430,
    GHOSTLANDS = 3433,
    HELLFIRE_PENINSULA = 3483,
    SILVERMOON_CITY = 3487,
    NAGRAND = 3518,
    TEROKKAR_FOREST = 3519,
    SHADOWMOON_VALLEY = 3520,
    ZANGARMARSH = 3521,
    BLADES_EDGE_MOUNTAINS = 3522,
    NETHERSTORM = 3523,
    AZUREMYST_ISLE = 3524,
    BLOODMYST_ISLE = 3525,
    THE_EXODAR = 3557,
    HELLFIRE_RAMPARTS = 3562,
    HYJAL_SUMMIT = 3606,
    SHATTRATH_CITY = 3703,
    THE_BLOOD_FURNACE = 3713,
    THE_SHATTERED_HALLS = 3714,
    THE_STEAMVAULT = 3715,
    THE_UNDERBOG = 3716,
    THE_SLAVE_PENS = 3717,
    THE_BOTANICA = 3847,
    THE_ARCATRAZ = 3848,
    THE_MECHANAR = 3849,
    SHADOW_LABYRINTH = 3789,
    AUCHENAI_CRYPTS = 3790,
    SETHEKK_HALLS = 3791,
    MANA_TOMBS = 3792,
    ZUL_AMAN = 3805,
    BLACK_TEMPLE = 3959,
    SUNWELL_PLATEAU = 4075,
    ISLE_OF_QUEL_DANAS = 4080,
    MAGISTERS_TERRACE = 4131,
    UPPER_BLACKROCK_SPIRE = 7307,
    DRAGONBLIGHT = 65,
    ZUL_DRAK = 66,
    STORM_PEAKS = 67,
    ICECROWN = 210,
    GRIZZLY_HILLS = 394,
    HOWLING_FJORD = 495,
    CRYSTALSONG_FOREST = 2817,
    BOREAN_TUNDRA = 3537,
    SHOLAZAR_BASIN = 3711,
    WINTERGRASP = 4197,
    THE_NEXUS = 4265,
    DALARAN = 4395,
    PLAGUELANDS_THE_SCARLET_ENCLAVE = 4298,
}
