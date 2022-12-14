local ZGV = ZygorGuidesViewer

local ItemScore = {}
ZGV.ItemScore = ItemScore
local L = ZGV.L

-- Stat keywords:
-- Only stats defined in this table are valid. Use entry in blizz when filling rule sets

local locale=GetLocale()
if locale=="enGB" then locale="enUS" end  -- just in case.


ItemScore.Keywords = {
	{blizz="AGILITY", zgvdisplay="Agility",pattern="ITEM_MOD_AGILITY"},
	{blizz="INTELLECT", zgvdisplay="Intellect",pattern="ITEM_MOD_INTELLECT"},
	{blizz="SPIRIT", zgvdisplay="Spirit",pattern="ITEM_MOD_SPIRIT"},
	{blizz="STAMINA", zgvdisplay="Stamina",pattern="ITEM_MOD_STAMINA"},
	{blizz="STRENGTH", zgvdisplay="Strength",pattern="ITEM_MOD_STRENGTH"},
	{blizz="ARMOR", zgvdisplay="Armor",pattern="ARMOR_TEMPLATE"}, -- base armor on gear
	{blizz="ARMOR_PENETRATION", zgvdisplay="Armor Penetration",pattern="ITEM_MOD_ARMOR_PENETRATION_RATING"},
	{blizz="ATTACK_POWER", zgvdisplay="Attack Power",pattern="ITEM_MOD_ATTACK_POWER"},
	{blizz="BLOCK", zgvdisplay="Block",pattern="ITEM_MOD_BLOCK_RATING"}, -- incorrect, tooltip misses word shield
	{blizz="BLOCK_VALUE", zgvdisplay="Block Value",pattern="ITEM_MOD_BLOCK_VALUE"},
	{blizz="CRIT", zgvdisplay="Critical Strike %",pattern="ITEM_MOD_CRIT_RATING"},
	{blizz="CRIT_MELEE", zgvdisplay="Critical Strike Melee %",pattern="ITEM_MOD_CRIT_MELEE_RATING"},
	{blizz="CRIT_RANGED", zgvdisplay="Critical Strike Ranged %",pattern="ITEM_MOD_CRIT_RANGED_RATING"},
	--{blizz="CRIT_SPELL", zgvdisplay="Critical Strike Spell% ",pattern="ITEM_MOD_CRIT_SPELL_RATING"},
	{blizz="DAMAGE_PER_SECOND", zgvdisplay="Damage Per Second",pattern="DPS_TEMPLATE"},
	{blizz="DEFENSE_SKILL", zgvdisplay="Defense",pattern="ITEM_MOD_DEFENSE_SKILL_RATING"},
	{blizz="DODGE", zgvdisplay="Dodge",pattern="ITEM_MOD_DODGE_RATING"},
	{blizz="EXTRA_ARMOR", zgvdisplay="Extra Armor",pattern="ITEM_MOD_EXTRA_ARMOR"},
	{blizz="EXPERTISE", zgvdisplay="Expertise",pattern="ITEM_MOD_EXPERTISE_RATING"},
	{blizz="FERAL_ATTACK_POWER", zgvdisplay="Feral Attack Power",pattern="ITEM_MOD_FERAL_ATTACK_POWER"},
	{blizz="HASTE", zgvdisplay="Haste",pattern="ITEM_MOD_HASTE_RATING"},
	--{blizz="HASTE_SPELL", zgvdisplay="Haste Spell",pattern="ITEM_MOD_HASTE_MELEE_RATING"},
	{blizz="HASTE_MEELE", zgvdisplay="Haste Spell",pattern="ITEM_MOD_HASTE_SPELL_RATING"},
	{blizz="HASTE_RANGED", zgvdisplay="Haste Spell",pattern="ITEM_MOD_HASTE_RANGED_RATING"},
	{blizz="HEALTH_REGENERATION", zgvdisplay="Health Regeneration",pattern="ITEM_MOD_HEALTH_REGEN"},
	{blizz="HEALTH", zgvdisplay="Health",pattern="ITEM_MOD_HEALTH"},
	{blizz="HIT", zgvdisplay="Hit",pattern="ITEM_MOD_HIT_RATING"},
	{blizz="HIT_MELEE", zgvdisplay="Hit Melee %",pattern="ITEM_MOD_HIT_MELEE_RATING"},
	{blizz="HIT_RANGED", zgvdisplay="Hit Ranged %",pattern="ITEM_MOD_HIT_RANGED_RATING"},
	--{blizz="HIT_SPELL", zgvdisplay="Hit Spell %",pattern="ITEM_MOD_HIT_SPELL_RATING"},
	{blizz="MANA", zgvdisplay="Mana",pattern="ITEM_MOD_MANA"},
	{blizz="MANA_REGENERATION", zgvdisplay="Mana Regeneration",pattern="ITEM_MOD_MANA_REGENERATION"},
	{blizz="PARRY", zgvdisplay="Parry",pattern="ITEM_MOD_PARRY_RATING"},
	{blizz="RANGED_ATTACK_POWER", zgvdisplay="Ranged Attack Power",pattern="ITEM_MOD_RANGED_ATTACK_POWER"},
	--{blizz="SPELL_DAMAGE_DONE", zgvdisplay="Spell Bonus Damage",pattern="ITEM_MOD_SPELL_DAMAGE_DONE"},
	--{blizz="SPELL_HEALING_DONE", zgvdisplay="Spell Bonus Healing",pattern="ITEM_MOD_SPELL_HEALING_DONE"},
	{blizz="SPELL_PENETRATION", zgvdisplay="Spell Penetration",pattern="ITEM_MOD_SPELL_PENETRATION"},
	{blizz="SPELL_POWER", zgvdisplay="Spell Power",pattern="ITEM_MOD_SPELL_POWER"},
	{blizz="SPELL_DAMAGE_DONE_HOLY", zgvdisplay="Spell Damage Holy"},
	{blizz="SPELL_DAMAGE_DONE_FIRE", zgvdisplay="Spell Damage Fire"},
	{blizz="SPELL_DAMAGE_DONE_NATURE", zgvdisplay="Spell Damage Nature"},
	{blizz="SPELL_DAMAGE_DONE_FROST", zgvdisplay="Spell Damage Frost"},
	{blizz="SPELL_DAMAGE_DONE_SHADOW", zgvdisplay="Spell Damage Shadow"},
	{blizz="SPELL_DAMAGE_DONE_ARCANE", zgvdisplay="Spell Damage Arcane"},

	{blizz="HOLY_RESISTANCE", zgvdisplay="Resistance Holy", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL1_CAP"])},
	{blizz="FIRE_RESISTANCE", zgvdisplay="Resistance Fire", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL2_CAP"])},
	{blizz="NATURE_RESISTANCE", zgvdisplay="Resistance Nature", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL3_CAP"])},
	{blizz="FROST_RESISTANCE", zgvdisplay="Resistance Frost", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL4_CAP"])},
	{blizz="SHADOW_RESISTANCE", zgvdisplay="Resistance Shadow", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL5_CAP"])},
	{blizz="ARCANE_RESISTANCE", zgvdisplay="Resistance Arcane", regex = ITEM_RESIST_SINGLE:gsub("%%s",_G["SPELL_SCHOOL6_CAP"])},

	--{blizz="SPELL_HEAL_DAMAGE", multi={"SPELL_DAMAGE_DONE","SPELL_HEALING_DONE"}},

}

for i,v in pairs(ItemScore.Keywords) do -- convert blizzard templates to lua regex match
	local regex,regex2
	v.regexs = {}

	-- try to use defined patterns
	if v.pattern or v.regex then
		regex = v.regex or _G[v.pattern]
		regex = regex:gsub("1%$",""):gsub("2%$",""):gsub("3%$",""):gsub("4%$","")
		regex = regex:gsub("%(","%%("):gsub("%)","%%)"):gsub("%%d","([0-9]+)"):gsub("%%c","([+-]+)"):gsub("%%s","([0-9.]+)"):gsub("%%([0-9]+)%$","%%").."$"
		regex = regex:lower()

		local short = v.pattern and _G[v.pattern.."_SHORT"]
		if short then 
			if locale=="koKR" or locale=="zhCN" or locale=="zhTW" then
				regex2 = "^"..short.." ([+-]+)([0-9]+)".."$"
			else
				regex2 = "^".."([+-]+)([0-9]+) "..short.."$"
			end
			regex2 = regex2:lower()
		end
		
		
		if regex==regex2 then regex2=nil end
		table.insert(v.regexs,regex)
		table.insert(v.regexs,regex2)
	end

	-- try to pull from localisation files
	local pattern = L[v.blizz]
	if pattern ~= v.blizz then table.insert(v.regexs,pattern:lower()) end
	for i=2,10 do
		local pattern = L[v.blizz..i]
		if pattern ~= v.blizz..i then table.insert(v.regexs,pattern:lower()) end
	end
end

ItemScore.KnownKeyWords = {}
for i,v in pairs(ItemScore.Keywords) do -- create lookup table for use in popups, since GetItemStats/Delta fails on suffix items, and we need to use our cached data instead
	ItemScore.KnownKeyWords[v.blizz] = v.zgvdisplay
end

ItemScore.ProtectedGear = {}
ItemScore.Unique_Equipped_Families = { }-- those items are unique equipped, but do not return GetItemUniqueness values

ItemScore.FixedLevelHeirloom = {}

ItemScore.HeirloomBonuses = {}

-- what stats are available on gems depending on source expansion
ItemScore.GemStatsByExp = {
--	[1] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- tbc
}

-- details about gems based on expansions and rarity. ilvl of socketed item required for gem to fit it, and how point budget changes with player level
ItemScore.GemData = { -- from level [a] gem gives b points
	--[2] = { -- uncommon
	--	[1] = { ilvl=1,   points={[1]=3, [59]=4}}, -- tbc
	--},
	--[3] = { -- rare
	--	[1] = { ilvl=1,   points={[1]=4, [59]=5}}, -- tbc
	--},
	--[4] = { -- epic
	--	[1] = { ilvl=1,   points={[1]=5, [59]=6}}, -- tbc
	--}
}


ItemScore.Item_Weapon_Types = {
	[0] = "AXE",
	[1] = "TH_AXE",
	[2] = "BOW",
	[3] = "GUN",
	[4] = "MACE",
	[5] = "TH_MACE",
	[6] = "TH_POLE",
	[7] = "SWORD",
	[8] = "TH_SWORD",
	[9] = "WARGLAIVE",
	[10] = "TH_STAFF",
	[11] = "DRUID_BEAR",
	[12] = "DRUID_CAT",
	[13] = "FIST",
	[14] = "MISCWEAP",
	[15] = "DAGGER",
	[16] = "THROWN",
	[17] = "SPEAR",
	[18] = "CROSSBOW",
	[19] = "WAND",
	[20] = "FISHPOLE",
	}

ItemScore.Item_Armor_Types = {
	[0] = "JEWELERY", -- necklace, rings and trinkets, also some cosmetic armor
	[1] = "CLOTH",
	[2] = "LEATHER",
	[3] = "MAIL",
	[4] = "PLATE",
	[5] = "COSMETIC",
	[6] = "SHIELD",
	}

ItemScore.TypeToSlot = {
	INVTYPE_WEAPON = INVSLOT_MAINHAND, -- dual wield handled in GetValidSlots
	INVTYPE_WEAPONMAINHAND = INVSLOT_MAINHAND,
	INVTYPE_2HWEAPON = INVSLOT_MAINHAND, -- titan fury hanndled in GetValidSlots
	INVTYPE_WEAPONOFFHAND = INVSLOT_OFFHAND,
	INVTYPE_SHIELD = INVSLOT_OFFHAND,
	INVTYPE_THROWN = INVSLOT_RANGED,
	INVTYPE_RANGED = INVSLOT_RANGED,
	INVTYPE_RANGEDRIGHT = INVSLOT_RANGED,
	INVTYPE_HOLDABLE = INVSLOT_OFFHAND,
	INVTYPE_HEAD = INVSLOT_HEAD,
	INVTYPE_NECK = INVSLOT_NECK,
	INVTYPE_SHOULDER = INVSLOT_SHOULDER,
	INVTYPE_CLOAK = INVSLOT_BACK,
	INVTYPE_CHEST = INVSLOT_CHEST,
	INVTYPE_ROBE = INVSLOT_CHEST,
	INVTYPE_WRIST = INVSLOT_WRIST,
	INVTYPE_HAND = INVSLOT_HAND,
	INVTYPE_WAIST = INVSLOT_WAIST,
	INVTYPE_LEGS = INVSLOT_LEGS,
	INVTYPE_FEET = INVSLOT_FEET,
	INVTYPE_FINGER = INVSLOT_FINGER1, -- second slot handled in GetValidSlots
	INVTYPE_TRINKET = INVSLOT_TRINKET1, -- second slot handled in GetValidSlots
}

ItemScore.SkillNames = { -- gets trimmed in a moment										-- needs checking
	DUALWIELD = {id=118,	enUS="Dual Wield",	deDE="Beidh??ndigkeit",	esES="Doble empu??adura",	esMX="Doble empu??adura",	frFR="Ambidextrie",	ptBR="Empunhar Duas Armas",	ruRU="?????? ?????????? ????????????????",	koKR="?????? ??????",	zhCN="?????????",	zhTW="?????????",	enGB="Dual Wield",	ptPT="Empunhar Duas Armas",},
	SWORD = {id=43,	enUS="Swords",	deDE="Schwerter",	esES="Espadas",	esMX="Espadas",	frFR="Ep??es",	ptBR="Espadas",	ruRU="????????",	koKR="?????????",	zhCN="?????????",	zhTW="???",	enGB="Swords",	ptPT="Espadas",},
	WAND = {id=228,	enUS="Wands",	deDE="Zauberst??be",	esES="Varitas",	esMX="Varitas",	frFR="Baguettes",	ptBR="Varinhas",	ruRU="??????????",	koKR="????????????",	zhCN="??????",	zhTW="??????",	enGB="Wands",	ptPT="Varinhas",},
	TH_SWORD = {id=55,	enUS="Two-Handed Swords",	deDE="Zweihandschwerter",	esES="Espadas de dos manos",	esMX="Espadas de dos manos",	frFR="Ep??es ?? deux mains",	ptBR="Espadas de Duas M??os",	ruRU="?????????????????? ????????",	koKR="?????? ?????????",	zhCN="?????????",	zhTW="?????????",	enGB="Two-Handed Swords",	ptPT="Espadas de Duas M??os",},
	THROWN = {id=176,	enUS="Thrown",	deDE="Wurfwaffen",	esES="Armas arrojadizas",	esMX="Armas arrojadizas",	frFR="Armes de jet",	ptBR="Arremesso",	ruRU="?????????????????????? ????????????",	koKR="?????? ?????????",	zhCN="????????????",	zhTW="????????????",	enGB="Thrown",	ptPT="Arremesso",},
	FIST = {id=473,	enUS="Fist Weapons",	deDE="Faustwaffen",	esES="Armas de pu??o",	esMX="Armas de pu??o",	frFR="Armes de pugilat",	ptBR="Armas de punho",	ruRU="???????????????? ????????????",	koKR="?????? ?????????",	zhCN="??????",	zhTW="??????",	enGB="Fist Weapons",	ptPT="Armas de punho",},
	TH_MACE = {id=160,	enUS="Two-Handed Maces",	deDE="Zweihandstreitkolben",	esES="Mazas de dos manos",	esMX="Mazas de dos manos",	frFR="Masses ?? deux mains",	ptBR="Ma??as de Duas M??os",	ruRU="?????????????????? ?????????????? ????????????",	koKR="?????? ?????????",	zhCN="?????????",	zhTW="?????????",	enGB="Two-Handed Maces",	ptPT="Ma??as de Duas M??os",},
	TH_AXE = {id=172,	enUS="Two-Handed Axes",	deDE="Zweihand??xte",	esES="Hachas de dos manos",	esMX="Hachas de dos manos",	frFR="Haches ?? deux mains",	ptBR="Machados de Duas M??os",	ruRU="?????????????????? ????????????",	koKR="?????? ?????????",	zhCN="?????????",	zhTW="?????????",	enGB="Two-Handed Axes",	ptPT="Machados de Duas M??os",},
	AXE = {id=44,	enUS="Axes",	deDE="??xte",	esES="Hachas",	esMX="Hachas",	frFR="Haches",	ptBR="Machados",	ruRU="????????????",	koKR="?????????",	zhCN="?????????",	zhTW="???",	enGB="Axes",	ptPT="Machados",},
	GUN = {id=46,	enUS="Guns",	deDE="Schusswaffen",	esES="Armas de fuego",	esMX="Armas de fuego",	frFR="Armes ?? feu",	ptBR="Armas de Fogo",	ruRU="??????????",	koKR="?????????",	zhCN="??????",	zhTW="??????",	enGB="Guns",	ptPT="Armas de Fogo",},
	TH_POLE = {id=229,	enUS="Polearms",	deDE="Stangenwaffen",	esES="Armas de asta",	esMX="Armas de asta",	frFR="Armes d'hast",	ptBR="Armas de Haste",	ruRU="?????????????????? ????????????",	koKR="?????????",	zhCN="????????????",	zhTW="????????????",	enGB="Polearms",	ptPT="Armas de Haste",},
	BOW = {id=45,	enUS="Bows",	deDE="B??gen",	esES="Arcos",	esMX="Arcos",	frFR="Arcs",	ptBR="Arcos",	ruRU="????????",	koKR="??????",	zhCN="???",	zhTW="???",	enGB="Bows",	ptPT="Arcos",},
	CROSSBOW = {id=226,	enUS="Crossbows",	deDE="Armbr??ste",	esES="Ballestas",	esMX="Ballestas",	frFR="Arbal??tes",	ptBR="Bestas",	ruRU="????????????????",	koKR="?????????",	zhCN="???",	zhTW="???",	enGB="Crossbows",	ptPT="Bestas",},
	TH_STAFF = {id=136,	enUS="Staves",	deDE="St??be",	esES="Bastones",	esMX="Bastones",	frFR="B??tons",	ptBR="B??culos",	ruRU="????????????",	koKR="????????????",	zhCN="??????",	zhTW="??????",	enGB="Staves",	ptPT="B??culos",},
	MACE = {id=54,	enUS="Maces",	deDE="Streitkolben",	esES="Mazas",	esMX="Mazas",	frFR="Masse",	ptBR="Ma??as",	ruRU="???????????????? ????????????",	koKR="?????????",	zhCN="?????????",	zhTW="???",	enGB="Maces",	ptPT="Ma??as",},
	DAGGER = {id=173,	enUS="Daggers",	deDE="Dolche",	esES="Dagas",	esMX="Dagas",	frFR="Dagues",	ptBR="Adagas",	ruRU="??????????????",	koKR="?????????",	zhCN="??????",	zhTW="??????",	enGB="Daggers",	ptPT="Adagas",},
	PLATE = {id=293,	enUS="Plate Mail",	deDE="Plattenpanzer",	esES="Malla de placas",	esMX="Malla de placas",	frFR="Armure en plaques",	ptBR="Armadura de Placa",	ruRU="????????",	koKR="?????? ??????",	zhCN="??????",	zhTW="??????",	enGB="Plate Mail",	ptPT="Armadura de Placa",},
	MAIL = {id=413,	enUS="Mail",	deDE="Schwere R??stung",	esES="Malla",	esMX="Malla",	frFR="Mailles",	ptBR="Malha",	ruRU="???????????????????? ??????????????",	koKR="??????",	zhCN="??????",	zhTW="??????",	enGB="Mail",	ptPT="Malha",},
	CLOTH = {id=415,	enUS="Cloth",	deDE="Stoff",	esES="Tela",	esMX="Tela",	frFR="Tissu",	ptBR="Tecido",	ruRU="??????????",	koKR="???",	zhCN="??????",	zhTW="??????",	enGB="Cloth",	ptPT="Tecido",},
	SHIELD = {id=433,	enUS="Shield",	deDE="Schild",	esES="Escudo",	esMX="Escudo",	frFR="Bouclier",	ptBR="Escudo",	ruRU="??????",	koKR="??????",	zhCN="??????",	zhTW="??????",	enGB="Shield",	ptPT="Escudo",},
	LEATHER = {id=414,	enUS="Leather",	deDE="Leder",	esES="Cuero",	esMX="Cuero",	frFR="Cuir",	ptBR="Couro",	ruRU="????????",	koKR="??????",	zhCN="??????",	zhTW="??????",	enGB="Leather",	ptPT="Couro",},
}
ItemScore.SkillNamesRev={}

for i,skillset in pairs(ItemScore.SkillNames) do -- drop other languages
	local name = skillset[locale] or skillset.enUS
	ItemScore.SkillNames[i] = name
	ItemScore.SkillNamesRev[name] = i
end