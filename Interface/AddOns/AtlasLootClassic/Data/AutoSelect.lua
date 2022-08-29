local ALName, ALPrivate = ...

local AtlasLoot = _G.AtlasLoot
local AutoSelect = {}
AtlasLoot.Data.AutoSelect = AutoSelect
local AL = AtlasLoot.Locales

-- lua
local unpack = unpack

-- WoW
local UnitPosition = UnitPosition
local GetSubZoneText = GetSubZoneText

local LOCALE, SUB_L = GetLocale()
-- Locales data
--##START-DATA##
if LOCALE == "deDE" then
	SUB_L = {
		[15285] = "Höhle der Nebel",
		[15292] = "Kreischende Schlucht",
		[15294] = "Träumerstein",
		[15300] = "Fangzahngrube",
		[15301] = "Klippe der Ewiglebenden",
		[15492] = "Der geschmolzene Übergang",
		[17731] = "Gewundener Abgrund",
		[19444] = "Versteck der Defias",
		[19502] = "Goblin-Gießerei",
		[19529] = "Mastraum",
		[21379] = "Kammer der Buße",
		[21401] = "Kapelle der Kreuzzügler",
		[21410] = "Kapellengarten",
		[21420] = "Galerie der Schätze",
		[21426] = "Athenaeum",
		[21444] = "Kreuzgang des Jägers",
		[21448] = "Halle der Helden",
		[21455] = "Fußsoldaten-Waffenkammer",
		[21457] = "Ausbildungsgelände",
		[21460] = "Waffenkammer der Kreuzzügler",
		[23805] = "Ehrengrabmal",
		[24000] = "Unglückseliger Kreuzgang",
		[26104] = "Ironcladbucht",
		[26642] = "Halle der Blackhand",
		[26662] = "Halle der Bindung",
		[26666] = "Der Krähenhorst",
		[26668] = "Dragonspirehalle",
		[26670] = "Stadion von Blackrock",
		[26683] = "Hordemar",
		[26684] = "Der Schmelzofen",
		[26686] = "Skitterwebtunnel",
		[26688] = "Tazz'Alaor",
		[26711] = "Halycons Hort",
		[26713] = "Mok'Doom",
		[26715] = "Spitzenthron",
		[26718] = "Kammer der Schlachten",
		[26733] = "Gefängnisblock",
		[26735] = "Halle des Gesetzes",
		[26740] = "Ostgarnison",
		[26742] = "Ring des Gesetzes",
		[26745] = "Schrein von Thaurissan",
		[26747] = "Dunkeleisenstraße",
		[26749] = "Westgarnison",
		[26750] = "Die Schattenschmiede",
		[26751] = "Zum grimmigen Säufer",
		[26755] = "Das Domizil",
		[26758] = "Das schwarze Gewölbe",
		[26759] = "Halle des Handwerks",
		[26761] = "Kammer der Verzauberung",
		[26764] = "Formgießerei",
		[26765] = "Die geschmolzene Brücke",
		[26766] = "Das Lyzeum",
		[26768] = "Die Eisenhalle",
		[26769] = "Der Kaiserliche Sitz",
		[26781] = "Die Manufaktur",
		[26784] = "Beschwörer-Grabmal",
		[32277] = "Marktgasse",
		[32281] = "Feststraße",
		[32285] = "Königsplatz",
		[32301] = "Schlächterplatz",
		[32303] = "Der Spießrutenlauf",
		[32319] = "Kreuzzüglerplatz",
		[32320] = "Die scharlachrote Bastion",
		[32322] = "Alonsuskapelle",
		[32331] = "Die Halle der Lichter",
		[32342] = "Ältestenplatz",
		[32344] = "Ano-Ziggurat",
		[32345] = "Bera-Ziggurat",
		[32349] = "Cadra-Ziggurat",
		[32352] = "Das Schlachthaus",
		[32357] = "Der Hort",
		[32367] = "Der Purpurthron",
		[32528] = "Das Lagerhaus",
		[32549] = "Gewölbe der Familie Barov",
		[32565] = "Halle der Verdammten",
		[32566] = "Halle der Geheimnisse",
		[32567] = "Der Koven",
		[32568] = "Das Schattengewölbe",
		[32569] = "Gewölbe der Ravenier",
		[32573] = "Das Reliquiarium",
		[32574] = "Kammer der Beschwörung",
		[32576] = "Der Vorführraum",
		[32577] = "Das große Ossuarium",
		[32579] = "Das Labor",
		[32581] = "Arbeitszimmer des Direktors",
		[33710] = "Wucherborkenviertel",
		[33730] = "Der Schrein von Eldretharr",
		[33748] = "Das Athenaeum",
		[33749] = "Das Gefängnis von Immol'thar",
		[33750] = "Hof der Hochgeborenen",
		[33774] = "Gordoks Sitz",
		[33775] = "Hallen der Zerstörung",
		[34776] = "Das Konservatorium",
	}
elseif LOCALE == "zhCN" then
	SUB_L = {
		[15285] = "迷雾洞穴",
		[15292] = "激流溪谷",
		[15294] = "美梦石",
		[15300] = "毒牙深渊",
		[15301] = "永生峭壁",
		[15492] = "熔岩之桥",
		[17731] = "狂风裂口",
		[19444] = "迪菲亚潜行者巢穴",
		[19502] = "地精锻造厂",
		[19529] = "船桅室",
		[21379] = "忏悔室",
		[21401] = "十字军礼拜堂",
		[21410] = "教堂花园",
		[21420] = "珍宝陈列室",
		[21426] = "图书馆",
		[21444] = "猎手回廊",
		[21448] = "勇士大厅",
		[21455] = "步兵武器库",
		[21457] = "训练场",
		[21460] = "十字军武器库",
		[23805] = "荣耀之墓",
		[24000] = "遗忘回廊",
		[26104] = "铁甲湾",
		[26642] = "黑手大厅",
		[26662] = "禁锢之厅",
		[26666] = "孵化间",
		[26668] = "龙塔大厅",
		[26670] = "黑石竞技场",
		[26683] = "霍德玛尔城",
		[26684] = "熔炉",
		[26686] = "蛛网隧道",
		[26688] = "塔萨洛尔",
		[26711] = "哈雷肯之巢",
		[26713] = "摩多姆",
		[26715] = "尖塔王座",
		[26718] = "战斗之厅",
		[26733] = "禁闭室",
		[26735] = "秩序大厅",
		[26740] = "东区兵营",
		[26742] = "秩序竞技场",
		[26745] = "索瑞森神殿",
		[26747] = "黑铁大道",
		[26749] = "西区兵营",
		[26750] = "暗炉城",
		[26751] = "黑铁酒吧",
		[26755] = "住宅区",
		[26758] = "黑色宝库",
		[26759] = "工艺之厅",
		[26761] = "魔法之厅",
		[26764] = "浇铸间",
		[26765] = "熔火之桥",
		[26766] = "讲学厅",
		[26768] = "钢铁大厅",
		[26769] = "帝王之座",
		[26781] = "制造厂",
		[26784] = "召唤者之墓",
		[32277] = "市场区",
		[32281] = "节日小道",
		[32285] = "国王广场",
		[32301] = "屠杀广场",
		[32303] = "街巷",
		[32319] = "十字军广场",
		[32320] = "血色十字军堡垒",
		[32322] = "阿隆索斯礼拜堂",
		[32331] = "圣光大厅",
		[32342] = "长者广场",
		[32344] = "安诺通灵塔",
		[32345] = "贝拉通灵塔",
		[32349] = "卡达通灵塔",
		[32352] = "屠宰房",
		[32357] = "物资库",
		[32367] = "赤色王座",
		[32528] = "仓库",
		[32549] = "巴罗夫家族宝库",
		[32565] = "谴责之厅",
		[32566] = "秘密之厅",
		[32567] = "巫师会所",
		[32568] = "暗影墓穴",
		[32569] = "掠夺者灵堂",
		[32573] = "遗骨之穴",
		[32574] = "召唤大厅",
		[32576] = "观察室",
		[32577] = "尸骨储藏所",
		[32579] = "实验室",
		[32581] = "院长的书房",
		[33710] = "扭木广场",
		[33730] = "艾德雷斯神殿",
		[33748] = "图书馆",
		[33749] = "伊莫塔尔的牢笼",
		[33750] = "上层精灵庭院",
		[33774] = "戈多克的王座",
		[33775] = "毁灭大厅",
		[34776] = "温室",
	}
elseif LOCALE == "esES" then
	SUB_L = {
		[15285] = "Caverna Vaharada",
		[15292] = "Quebrada del Llanto",
		[15294] = "Roca del Soñador",
		[15300] = "Foso de los Colmillos",
		[15301] = "Risco de los Eternos",
		[15492] = "Luz de Magma",
		[17731] = "Sima Serpenteante",
		[19444] = "Ladronera de los Defias",
		[19502] = "Fundición Goblin",
		[19529] = "Sala del Mástil",
		[21379] = "Cámara Expiatoria",
		[21401] = "Capilla de los Cruzados",
		[21410] = "Jardines de la Capilla",
		[21420] = "Galería de los Tesoros",
		[21426] = "Athenaeum",
		[21444] = "Claustro del Cazador",
		[21448] = "Sala de los Campeones",
		[21455] = "Arsenal de los Soldados",
		[21457] = "Patio de Armas",
		[21460] = "Arsenal de los Cruzados",
		[23805] = "Tumba del Honor",
		[24000] = "Claustro Inhóspito",
		[26104] = "Cala del Acorazado",
		[26642] = "Sala de Puño Negro",
		[26662] = "Sala de Vínculos",
		[26666] = "El Grajero",
		[26668] = "Sala Dracopico",
		[26670] = "Estadio de Roca Negra",
		[26683] = "Ciudad Hordemar",
		[26684] = "El Horno",
		[26686] = "Túneles de Arácnidas",
		[26688] = "Tazz'Alaor",
		[26711] = "Guarida de Halycon",
		[26713] = "Mok'Doom",
		[26715] = "Trono Espiral",
		[26718] = "Sala de la Batalla",
		[26733] = "Bloque de Detención",
		[26735] = "Salas de la Ley",
		[26740] = "Cuartel del Este",
		[26742] = "Círculo de la Ley",
		[26745] = "Ruinas de Thaurisan",
		[26747] = "Ruta Hierro Negro",
		[26749] = "Cuartel del Oeste",
		[26750] = "Ciudad Forjatiniebla",
		[26751] = "Tragapenas",
		[26755] = "Domicilio",
		[26758] = "Cámara Negra",
		[26759] = "Sala de los Oficios",
		[26761] = "Cámara del Encantamiento",
		[26764] = "Fundición del Molde",
		[26765] = "Puente de Magma",
		[26766] = "El Lyceum",
		[26768] = "Cámara de Hierro",
		[26769] = "Trono Imperial",
		[26781] = "La Fábrica",
		[26784] = "Tumba del Invocador",
		[32277] = "Fila del Mercado",
		[32281] = "Calle del Festival",
		[32285] = "Plaza del Rey",
		[32301] = "Plaza Degolladero",
		[32303] = "El Guantelete",
		[32319] = "Plaza de los Cruzados",
		[32320] = "La Basílica Escarlata",
		[32322] = "Capilla de Alonso",
		[32331] = "La Sala de las Luces",
		[32342] = "Plaza de los Ancestros",
		[32344] = "Zigurat Anno",
		[32345] = "Zigurat Bera",
		[32349] = "Zigurat Cadra",
		[32352] = "El Degolladero",
		[32357] = "El Tesoro Oculto",
		[32367] = "El Trono Carmesí",
		[32528] = "Almacén",
		[32549] = "Cripta de la Familia Barov",
		[32565] = "Sala de los Condenados",
		[32566] = "Sala de los Secretos",
		[32567] = "El Aquelarre",
		[32568] = "Cámara de las Sombras",
		[32569] = "Cámara del Devorador",
		[32573] = "El Relicario",
		[32574] = "Cámara de la Invocación",
		[32576] = "La Sala de la Visión",
		[32577] = "El Gran Osario",
		[32579] = "El Laboratorio",
		[32581] = "Sala Rectoral",
		[33710] = "Barrio Alabeo",
		[33730] = "Santuario de Eldretharr",
		[33748] = "El Athenaeum",
		[33749] = "Prisión de Immol'thar",
		[33750] = "Corte de los Altonato",
		[33774] = "Trono de Gordok",
		[33775] = "Salas de la Destrucción",
		[34776] = "Conservatorio",
	}
elseif LOCALE == "frFR" then
	SUB_L = {
		[15285] = "Caverne des Brumes",
		[15292] = "Ravine hurlante",
		[15294] = "Rocher du Rêveur",
		[15300] = "Abîme des Crocs",
		[15301] = "Combe des Eternels",
		[15492] = "Le viaduc du magma",
		[17731] = "Gouffre tortueux",
		[19444] = "Repaire des Défias",
		[19502] = "Fonderie des gobelins",
		[19529] = "Salle du Mât",
		[21379] = "Chambre de l'expiation",
		[21401] = "Chapelle des Croisés",
		[21410] = "Jardins de la chapelle",
		[21420] = "Galerie des trésors",
		[21426] = "Athenaeum",
		[21444] = "Cloître du veneur",
		[21448] = "Hall des Champions",
		[21455] = "Armurerie des fantassins",
		[21457] = "Terrains d’entraînement",
		[21460] = "Armurerie des Croisés",
		[23805] = "Tombe de l'honneur",
		[24000] = "Cloître solitaire",
		[26104] = "Crique du cuirassé",
		[26642] = "Hall de Blackhand",
		[26662] = "Hall des liens",
		[26666] = "La colonie",
		[26668] = "Hall de la Flèche des dragons",
		[26670] = "Stade des Blackrock",
		[26683] = "Cité d'Hordemar",
		[26684] = "La Fournaise",
		[26686] = "Tunnels de Toile-grouillante",
		[26688] = "Tazz'Alaor",
		[26711] = "Antre d'Halycon",
		[26713] = "Mok'Doom",
		[26715] = "Trône du Pic",
		[26718] = "Chambre de guerre",
		[26733] = "Le mitard",
		[26735] = "Halls de la loi",
		[26740] = "Garnison de l'est",
		[26742] = "Cercle de la loi",
		[26745] = "Sanctuaire de Thaurissan",
		[26747] = "Grand-route des Sombrefer",
		[26749] = "Garnison de l'ouest",
		[26750] = "Ville des Ombreforges",
		[26751] = "Le Sinistre dévoreur",
		[26755] = "Le Domicile",
		[26758] = "La Voûte noire",
		[26759] = "Chambre de l'artisanat",
		[26761] = "Chambre des enchantements",
		[26764] = "La fonderie",
		[26765] = "Le pont de magma",
		[26766] = "Le Lyceum",
		[26768] = "Le Hall de fer",
		[26769] = "Le Siège impérial",
		[26781] = "La Manufacture",
		[26784] = "Tombe des invocateurs",
		[32277] = "Allée du marché",
		[32281] = "Allée du festival",
		[32285] = "Place du Roi",
		[32301] = "Place du massacre",
		[32303] = "Le Défi",
		[32319] = "Place des croisés",
		[32320] = "Le Bastion écarlate",
		[32322] = "Chapelle d'Alonsus",
		[32331] = "Le Hall des lumières",
		[32342] = "Place des Anciens",
		[32344] = "Ziggourat Ano",
		[32345] = "Ziggourat Bera",
		[32349] = "Ziggourat Cadra",
		[32352] = "L'Abattoir",
		[32357] = "Le Trésor",
		[32367] = "Le Trône cramoisi",
		[32528] = "L'entrepôt",
		[32549] = "Caveau de la famille Barov",
		[32565] = "Hall des damnés",
		[32566] = "Hall des secrets",
		[32567] = "Le Convent",
		[32568] = "Le Caveau des ombres",
		[32569] = "Caveau du Voracien",
		[32573] = "Le Reliquaire",
		[32574] = "Chambre d'invocation",
		[32576] = "La Chambre des visions",
		[32577] = "Le Grand ossuaire",
		[32579] = "Le Laboratoire",
		[32581] = "Bureau du proviseur",
		[33710] = "Quartier de Crochebois",
		[33730] = "Le sanctuaire d'Eldretharr",
		[33748] = "L'Athenaeum",
		[33749] = "Prison d'Immol'thar",
		[33750] = "Cour des Bien-nés",
		[33774] = "Trône gordok",
		[33775] = "Halls de la Destruction",
		[34776] = "Le jardin d'hiver",
	}
elseif LOCALE == "itIT" then
	SUB_L = {
		[15285] = "Caverne des Brumes",
		[15292] = "Ravine hurlante",
		[15294] = "Rocher du Rêveur",
		[15300] = "Abîme des Crocs",
		[15301] = "Combe des Eternels",
		[15492] = "Le viaduc du magma",
		[17731] = "Gouffre tortueux",
		[19444] = "Repaire des Défias",
		[19502] = "Fonderie des gobelins",
		[19529] = "Salle du Mât",
		[21379] = "Chambre de l'expiation",
		[21401] = "Chapelle des Croisés",
		[21410] = "Jardins de la chapelle",
		[21420] = "Galerie des trésors",
		[21426] = "Athenaeum",
		[21444] = "Cloître du veneur",
		[21448] = "Hall des Champions",
		[21455] = "Armurerie des fantassins",
		[21457] = "Terrains d’entraînement",
		[21460] = "Armurerie des Croisés",
		[23805] = "Tombe de l'honneur",
		[24000] = "Cloître solitaire",
		[26104] = "Crique du cuirassé",
		[26642] = "Hall de Blackhand",
		[26662] = "Hall des liens",
		[26666] = "La colonie",
		[26668] = "Hall de la Flèche des dragons",
		[26670] = "Stade des Blackrock",
		[26683] = "Cité d'Hordemar",
		[26684] = "La Fournaise",
		[26686] = "Tunnels de Toile-grouillante",
		[26688] = "Tazz'Alaor",
		[26711] = "Antre d'Halycon",
		[26713] = "Mok'Doom",
		[26715] = "Trône du Pic",
		[26718] = "Chambre de guerre",
		[26733] = "Le mitard",
		[26735] = "Halls de la loi",
		[26740] = "Garnison de l'est",
		[26742] = "Cercle de la loi",
		[26745] = "Sanctuaire de Thaurissan",
		[26747] = "Grand-route des Sombrefer",
		[26749] = "Garnison de l'ouest",
		[26750] = "Ville des Ombreforges",
		[26751] = "Le Sinistre dévoreur",
		[26755] = "Le Domicile",
		[26758] = "La Voûte noire",
		[26759] = "Chambre de l'artisanat",
		[26761] = "Chambre des enchantements",
		[26764] = "La fonderie",
		[26765] = "Le pont de magma",
		[26766] = "Le Lyceum",
		[26768] = "Le Hall de fer",
		[26769] = "Le Siège impérial",
		[26781] = "La Manufacture",
		[26784] = "Tombe des invocateurs",
		[32277] = "Allée du marché",
		[32281] = "Allée du festival",
		[32285] = "Place du Roi",
		[32301] = "Place du massacre",
		[32303] = "Le Défi",
		[32319] = "Place des croisés",
		[32320] = "Le Bastion écarlate",
		[32322] = "Chapelle d'Alonsus",
		[32331] = "Le Hall des lumières",
		[32342] = "Place des Anciens",
		[32344] = "Ziggourat Ano",
		[32345] = "Ziggourat Bera",
		[32349] = "Ziggourat Cadra",
		[32352] = "L'Abattoir",
		[32357] = "Le Trésor",
		[32367] = "Le Trône cramoisi",
		[32528] = "L'entrepôt",
		[32549] = "Caveau de la famille Barov",
		[32565] = "Hall des damnés",
		[32566] = "Hall des secrets",
		[32567] = "Le Convent",
		[32568] = "Le Caveau des ombres",
		[32569] = "Caveau du Voracien",
		[32573] = "Le Reliquaire",
		[32574] = "Chambre d'invocation",
		[32576] = "La Chambre des visions",
		[32577] = "Le Grand ossuaire",
		[32579] = "Le Laboratoire",
		[32581] = "Bureau du proviseur",
		[33710] = "Quartier de Crochebois",
		[33730] = "Le sanctuaire d'Eldretharr",
		[33748] = "L'Athenaeum",
		[33749] = "Prison d'Immol'thar",
		[33750] = "Cour des Bien-nés",
		[33774] = "Trône gordok",
		[33775] = "Halls de la Destruction",
		[34776] = "Le jardin d'hiver",
	}
elseif LOCALE == "koKR" then
	SUB_L = {
		[15285] = "안개 동굴",
		[15292] = "울부짖는 협곡",
		[15294] = "꿈꾸는 자의 바위",
		[15300] = "송곳니 구덩이",
		[15301] = "영생의 바위굴",
		[15492] = "작열하는 교각",
		[17731] = "굽이치는 바위굴",
		[19444] = "데피아즈단 은신처",
		[19502] = "고블린 주물 공장",
		[19529] = "목재 작업장",
		[21379] = "속죄의 방",
		[21401] = "십자군 예배당",
		[21410] = "예배당 정원",
		[21420] = "보물 전시실",
		[21426] = "도서관",
		[21444] = "사냥꾼의 회랑",
		[21448] = "용사의 전당",
		[21455] = "보병 무기고",
		[21457] = "훈련장",
		[21460] = "십자군 무기고",
		[23805] = "명예의 무덤",
		[24000] = "쓸쓸한 회랑",
		[26104] = "철갑 동굴",
		[26642] = "검은손 전당",
		[26662] = "속박의 전당",
		[26666] = "부화장",
		[26668] = "용첨탑 전당",
		[26670] = "검은바위 투기장",
		[26683] = "호드마르 도시",
		[26684] = "용광로",
		[26686] = "그물걸이 통로",
		[26688] = "타즈알라올",
		[26711] = "할리콘의 둥지",
		[26713] = "모크둠",
		[26715] = "첨탑 사령실",
		[26718] = "전투의 방",
		[26733] = "감금 구역",
		[26735] = "법의 전당",
		[26740] = "동부 주둔지",
		[26742] = "법의 심판장",
		[26745] = "타우릿산의 제단",
		[26747] = "검은무쇠 대로",
		[26749] = "서부 주둔지",
		[26750] = "어둠괴철로 도시",
		[26751] = "험상궂은 주정뱅이 선술집",
		[26755] = "거주지",
		[26758] = "검은 금고",
		[26759] = "장인의 전당",
		[26761] = "마법의 방",
		[26764] = "거푸집 주조소",
		[26765] = "작열하는 다리",
		[26766] = "리케이온",
		[26768] = "철의 전당",
		[26769] = "옥좌",
		[26781] = "제조 공장",
		[26784] = "소환사의 무덤",
		[32277] = "상가",
		[32281] = "축제의 거리",
		[32285] = "왕의 광장",
		[32301] = "학살의 광장",
		[32303] = "투쟁의 거리",
		[32319] = "십자군 광장",
		[32320] = "붉은십자군 성채",
		[32322] = "알론수스 교회",
		[32331] = "빛의 전당",
		[32342] = "장로의 광장",
		[32344] = "아노 지구라트",
		[32345] = "베라 지구라트",
		[32349] = "카드라 지구라트",
		[32352] = "도살장",
		[32357] = "병참부",
		[32367] = "진홍십자군 사령실",
		[32528] = "창고",
		[32549] = "바로브 가문 납골당",
		[32565] = "저주받은 자의 전당",
		[32566] = "비밀의 전당",
		[32567] = "집회실",
		[32568] = "어둠의 납골당",
		[32569] = "라베니안 납골당",
		[32573] = "성골 보관실",
		[32574] = "소환의 방",
		[32576] = "스칼로맨스 강당",
		[32577] = "대형 납골당",
		[32579] = "연구소",
		[32581] = "교장의 연구실",
		[33710] = "굽이나무 지구",
		[33730] = "엘드레사르 제단",
		[33748] = "도서관",
		[33749] = "이몰타르의 감옥",
		[33750] = "귀족 왕궁",
		[33774] = "고르독의 권좌",
		[33775] = "파괴의 전당",
		[34776] = "고요의 정원",
	}
elseif LOCALE == "esMX" then
	SUB_L = {
		[15285] = "Caverna Vaharada",
		[15292] = "Quebrada del Llanto",
		[15294] = "Roca del Soñador",
		[15300] = "Foso de los Colmillos",
		[15301] = "Risco de los Eternos",
		[15492] = "Luz de Magma",
		[17731] = "Sima Serpenteante",
		[19444] = "Ladronera de los Defias",
		[19502] = "Fundición Goblin",
		[19529] = "Sala del Mástil",
		[21379] = "Cámara Expiatoria",
		[21401] = "Capilla de los Cruzados",
		[21410] = "Jardines de la Capilla",
		[21420] = "Galería de los Tesoros",
		[21426] = "El Athenaeum",
		[21444] = "Claustro del Cazador",
		[21448] = "Sala de los Campeones",
		[21455] = "Arsenal de los Soldados",
		[21457] = "Patio de Armas",
		[21460] = "Arsenal de los Cruzados",
		[23805] = "Tumba del Honor",
		[24000] = "Claustro Abandonado",
		[26104] = "Cala del Acorazado",
		[26642] = "Sala de Puño Negro",
		[26662] = "Sala de Vínculos",
		[26666] = "El Grajero",
		[26668] = "Sala Dracopico",
		[26670] = "Estadio de Roca Negra",
		[26683] = "Ciudad Hordemar",
		[26684] = "El Horno",
		[26686] = "Túneles de Arácnidas",
		[26688] = "Tazz'Alaor",
		[26711] = "Guarida de Halycon",
		[26713] = "Mok'Doom",
		[26715] = "Trono Espiral",
		[26718] = "Sala de la Batalla",
		[26733] = "Bloque de Detención",
		[26735] = "Salas de la Ley",
		[26740] = "Cuartel del Este",
		[26742] = "Círculo de la Ley",
		[26745] = "Ruinas de Thaurissan",
		[26747] = "Ruta Hierro Negro",
		[26749] = "Cuartel del Oeste",
		[26750] = "Ciudad Forjatiniebla",
		[26751] = "Tragapenas",
		[26755] = "Domicilio",
		[26758] = "Cámara Negra",
		[26759] = "Sala de los Oficios",
		[26761] = "Cámara del Encantamiento",
		[26764] = "Fundición del Molde",
		[26765] = "Puente de Magma",
		[26766] = "El Lyceum",
		[26768] = "Cámara de Hierro",
		[26769] = "El Trono Imperial",
		[26781] = "El Taller",
		[26784] = "Tumba del Invocador",
		[32277] = "Fila del Mercado",
		[32281] = "Calle del Festival",
		[32285] = "Plaza del Rey",
		[32301] = "Plaza Degolladero",
		[32303] = "El Guantelete",
		[32319] = "Plaza de los Cruzados",
		[32320] = "El Bastión Escarlata",
		[32322] = "Capilla de Alonsus",
		[32331] = "La Sala de las Luces",
		[32342] = "Plaza de los Ancestros",
		[32344] = "Zigurat Anno",
		[32345] = "Zigurat Bera",
		[32349] = "Zigurat Cadra",
		[32352] = "El Degolladero",
		[32357] = "El Tesoro Oculto",
		[32367] = "El Trono Carmesí",
		[32528] = "Almacén",
		[32549] = "Cripta de la Familia Barov",
		[32565] = "Sala de los Condenados",
		[32566] = "Sala de los Secretos",
		[32567] = "El Aquelarre",
		[32568] = "La Cámara de las Sombras",
		[32569] = "Cámara del Devorador",
		[32573] = "El Relicario",
		[32574] = "Cámara de la Invocación",
		[32576] = "La Sala de la Visión",
		[32577] = "El Gran Osario",
		[32579] = "El Laboratorio",
		[32581] = "Sala Rectoral",
		[33710] = "Barrio Alabeo",
		[33730] = "Santuario de Eldretharr",
		[33748] = "El Athenaeum",
		[33749] = "Prisión de Immol'thar",
		[33750] = "Corte de los Altonato",
		[33774] = "Trono de Gordok",
		[33775] = "Salas de la Destrucción",
		[34776] = "El Vivero",
	}
elseif LOCALE == "ptBR" then
	SUB_L = {
		[15285] = "Caverna das Brumas",
		[15292] = "Barranca Estridente",
		[15294] = "Rocha do Sonhador",
		[15300] = "Fosso das Presas",
		[15301] = "Rochedo do Sempre-vivo",
		[15492] = "A Vastidão Derretida",
		[17731] = "Fenda Sinuosa",
		[19444] = "Esconderijo Défias",
		[19502] = "Fundição dos Goblins",
		[19529] = "Sala do Mastro",
		[21379] = "Câmara da Redenção",
		[21401] = "Capela do Cruzado",
		[21410] = "Jardins da Capela",
		[21420] = "Galeria dos Tesouros",
		[21426] = "Ateneu",
		[21444] = "Claustro do Guarda-caça",
		[21448] = "Salão dos Campeões",
		[21455] = "Armaria do Soldado",
		[21457] = "Campo de Treinamento",
		[21460] = "Armaria do Cruzado",
		[23805] = "Tumba de Honra",
		[24000] = "Claustro Esquecido",
		[26104] = "Covil Encouraçado",
		[26642] = "Salão do Mão Negra",
		[26662] = "Salão da Vinculação",
		[26666] = "O Viveiro",
		[26668] = "Salão do Espinodrago",
		[26670] = "Estádio Rocha Negra",
		[26683] = "Hordamar",
		[26684] = "A Fornalha",
		[26686] = "Túneis Tremeteia",
		[26688] = "Tazz'Alaor",
		[26711] = "Covil de Halycon",
		[26713] = "Mok'Doom",
		[26715] = "Trono da Espícula",
		[26718] = "Câmara de Batalha",
		[26733] = "Bloco de Detenção",
		[26735] = "Salões da Lei",
		[26740] = "Guarnição Leste",
		[26742] = "Círculo da Lei",
		[26745] = "Santuário de Thaurissan",
		[26747] = "Estrada do Ferro Negro",
		[26749] = "Guarnição Oeste",
		[26750] = "Cidade de Umbraforja",
		[26751] = "O Glutão Implacável",
		[26755] = "O Domicílio",
		[26758] = "O Cofre Negro",
		[26759] = "Salão da Criação",
		[26761] = "Câmara do Encantamento",
		[26764] = "Fundição dos Moldes",
		[26765] = "A Ponte Derretida",
		[26766] = "O Liceu",
		[26768] = "O Salão de Ferro",
		[26769] = "O Trono Imperial",
		[26781] = "A Fábrica",
		[26784] = "Tumba dos Evocadores",
		[32277] = "Travessa do Comércio",
		[32281] = "Alameda do Festival",
		[32285] = "Praça Real",
		[32301] = "Praça do Massacre",
		[32303] = "Forquilha",
		[32319] = "Praça dos Cruzados",
		[32320] = "O Bastião Escarlate",
		[32322] = "Capela Alonsus",
		[32331] = "O Salão das Luzes",
		[32342] = "Praça dos Anciãos",
		[32344] = "Zigurate Ano",
		[32345] = "Zigurate Bera",
		[32349] = "Zigurate Cadra",
		[32352] = "O Matadouro",
		[32357] = "O Cofre",
		[32367] = "O Trono Carmesim",
		[32528] = "O Armazém",
		[32549] = "Catacumba da Família Barov",
		[32565] = "Salão dos Malditos",
		[32566] = "Salão dos Segredos",
		[32567] = "O Covil",
		[32568] = "Abóbada das Sombras",
		[32569] = "Abóbada do Ravino",
		[32573] = "Relicário",
		[32574] = "Câmara de Evocação",
		[32576] = "Sala de Exibição",
		[32577] = "O Grande Ossário",
		[32579] = "O Laboratório",
		[32581] = "Estúdio do Diretor",
		[33710] = "Distrito Lenhatorta",
		[33730] = "Altar de Eldretharr",
		[33748] = "O Ateneu",
		[33749] = "Prisão de Immol'thar",
		[33750] = "A Corte dos Altaneiros",
		[33774] = "Trono do Gordok",
		[33775] = "Salões da Destruição",
		[34776] = "O Conservatório",
	}
elseif LOCALE == "ruRU" then
	SUB_L = {
		[15285] = "Пещера Туманов",
		[15292] = "Овраг Воплей",
		[15294] = "Покои Спящего",
		[15300] = "Змеиная яма",
		[15301] = "Утес Вечноживущего",
		[15492] = "Огненный путь",
		[17731] = "Извилистая расщелина",
		[19444] = "Убежище Братства Справедливости",
		[19502] = "Гоблинский цех",
		[19529] = "Мачтовая мастерская",
		[21379] = "Чертог Искупления",
		[21401] = "Часовня Ордена",
		[21410] = "Церковные сады",
		[21420] = "Сокровищница",
		[21426] = "Читальня",
		[21444] = "Скит Охотника",
		[21448] = "Чертог Защитников",
		[21455] = "Оружейная пехоты",
		[21457] = "Тренировочная площадка",
		[21460] = "Оружейная Рыцарей",
		[23805] = "Гробница Доблести",
		[24000] = "Покинутый двор",
		[26104] = "Потайная бухта",
		[26642] = "Зал Чернорука",
		[26662] = "Зал Оков",
		[26666] = "Гнездовье",
		[26668] = "Зал Драконов",
		[26670] = "Стадион Черной горы",
		[26683] = "Ордамар",
		[26684] = "Горн",
		[26686] = "Паучий лабиринт",
		[26688] = "Тазз'Алаор",
		[26711] = "Логово Халикона",
		[26713] = "Мок'Дум",
		[26715] = "Верховный трон",
		[26718] = "Чертог Битвы",
		[26733] = "Тюремный блок",
		[26735] = "Галереи Правосудия",
		[26740] = "Восточный гарнизон",
		[26742] = "Зал Правосудия",
		[26745] = "Святилище Тауриссана",
		[26747] = "Тракт Черного Железа",
		[26749] = "Западный гарнизон",
		[26750] = "Тенегорн",
		[26751] = "Трактир \"Угрюмый обжора\"",
		[26755] = "Жилой квартал",
		[26758] = "Черное Хранилище",
		[26759] = "Зал Ремесла",
		[26761] = "Колдовской чертог",
		[26764] = "Литейная",
		[26765] = "Огненный мост",
		[26766] = "Лекторий",
		[26768] = "Железный зал",
		[26769] = "Императорский Трон",
		[26781] = "Фабрика",
		[26784] = "Гробница Заклинателей",
		[32277] = "Торговый ряд",
		[32281] = "Праздничная улица",
		[32285] = "Королевская площадь",
		[32301] = "Площадь Живодерни",
		[32303] = "Улица Испытаний",
		[32319] = "Площадь рыцарей",
		[32320] = "Бастион Алого ордена",
		[32322] = "Часовня Алонсия",
		[32331] = "Зал Света",
		[32342] = "Площадь Старейшин",
		[32344] = "Зиккурат Ано",
		[32345] = "Зиккурат Бера",
		[32349] = "Зиккурат Карда",
		[32352] = "Живодерня",
		[32357] = "Арсенал",
		[32367] = "Кровавый трон",
		[32528] = "Кладовая",
		[32549] = "Семейный склеп Баровых",
		[32565] = "Зал Проклятых",
		[32566] = "Зал Тайн",
		[32567] = "Ведьмин зал",
		[32568] = "Склеп Теней",
		[32569] = "Склеп Равениана",
		[32573] = "Усыпальница",
		[32574] = "Чертог Призыва",
		[32576] = "Демонстрационная комната",
		[32577] = "Главный склеп",
		[32579] = "Лаборатория",
		[32581] = "Кабинет Директора",
		[33710] = "Квартал Криводревов",
		[33730] = "Святилище Элдретарра",
		[33748] = "Читальня",
		[33749] = "Тюрьма Бессмер'тера",
		[33750] = "Двор Высокорожденных",
		[33774] = "Трон Гордока",
		[33775] = "Гибельные залы",
		[34776] = "Зимний сад",
	}
elseif LOCALE == "zhTW" then
	SUB_L = {
		[15285] = "迷霧洞穴",
		[15292] = "激流溪谷",
		[15294] = "美夢石",
		[15300] = "毒牙深淵",
		[15301] = "永生峭壁",
		[15492] = "熔岩之橋",
		[17731] = "狂風裂口",
		[19444] = "迪菲亞盜賊巢穴",
		[19502] = "哥布林鍛造廠",
		[19529] = "船桅室",
		[21379] = "懺悔室",
		[21401] = "十字軍禮拜堂",
		[21410] = "教堂花園",
		[21420] = "珍寶陳列室",
		[21426] = "圖書館",
		[21444] = "獵手回廊",
		[21448] = "勇士大廳",
		[21455] = "步兵武器庫",
		[21457] = "訓練場",
		[21460] = "十字軍武器庫",
		[23805] = "榮耀之墓",
		[24000] = "遺忘回廊",
		[26104] = "鐵甲灣",
		[26642] = "黑手大廳",
		[26662] = "禁錮大廳",
		[26666] = "孵化間",
		[26668] = "龍塔大廳",
		[26670] = "黑石競技場",
		[26683] = "霍德瑪爾城",
		[26684] = "熔爐",
		[26686] = "蛛網隧道",
		[26688] = "塔薩洛爾",
		[26711] = "哈雷肯之巢",
		[26713] = "摩多姆",
		[26715] = "尖塔王座",
		[26718] = "戰鬥之廳",
		[26733] = "禁閉室",
		[26735] = "秩序大廳",
		[26740] = "東部兵營",
		[26742] = "秩序競技場",
		[26745] = "索瑞森神殿",
		[26747] = "黑鐵大道",
		[26749] = "西部兵營",
		[26750] = "暗爐城",
		[26751] = "黑鐵酒吧",
		[26755] = "住宅區",
		[26758] = "黑色寶庫",
		[26759] = "工匠大廳",
		[26761] = "魔法之廳",
		[26764] = "澆鑄間",
		[26765] = "熔火之橋",
		[26766] = "講學廳",
		[26768] = "鋼鐵大廳",
		[26769] = "帝王之座",
		[26781] = "製造廠",
		[26784] = "召喚師之墓",
		[32277] = "市場區",
		[32281] = "節日小道",
		[32285] = "國王廣場",
		[32301] = "屠殺廣場",
		[32303] = "街巷",
		[32319] = "十字軍廣場",
		[32320] = "血色十字軍堡壘",
		[32322] = "阿隆索斯教堂",
		[32331] = "聖光大廳",
		[32342] = "長者廣場",
		[32344] = "安諾通靈塔",
		[32345] = "貝拉通靈塔",
		[32349] = "卡達通靈塔",
		[32352] = "屠宰房",
		[32357] = "物資庫",
		[32367] = "赤色王座",
		[32528] = "倉庫",
		[32549] = "巴羅夫家族寶庫",
		[32565] = "譴責大廳",
		[32566] = "秘密大廳",
		[32567] = "巫師會所",
		[32568] = "暗影墓穴",
		[32569] = "掠奪者靈堂",
		[32573] = "遺骨之穴",
		[32574] = "召喚之廳",
		[32576] = "觀察室",
		[32577] = "屍骨儲藏所",
		[32579] = "實驗室",
		[32581] = "院長的書房",
		[33710] = "扭木廣場",
		[33730] = "艾德雷斯神殿",
		[33748] = "圖書館",
		[33749] = "伊莫塔爾的牢籠",
		[33750] = "高等精靈庭院",
		[33774] = "戈多克的王座",
		[33775] = "毀滅大廳",
		[34776] = "溫室",
	}
else
	SUB_L = {
		[15285] = "Cavern of Mists",
		[15292] = "Screaming Gully",
		[15294] = "Dreamer's Rock",
		[15300] = "Pit of Fangs",
		[15301] = "Crag of the Everliving",
		[15492] = "The Molten Span",
		[17731] = "Winding Chasm",
		[19444] = "Defias Hideout",
		[19502] = "Goblin Foundry",
		[19529] = "Mast Room",
		[21379] = "Chamber of Atonement",
		[21401] = "Crusader's Chapel",
		[21410] = "Chapel Gardens",
		[21420] = "Gallery of Treasures",
		[21426] = "Athenaeum",
		[21444] = "Huntsman's Cloister",
		[21448] = "Hall of Champions",
		[21455] = "Footman's Armory",
		[21457] = "Training Grounds",
		[21460] = "Crusader's Armory",
		[23805] = "Honor's Tomb",
		[24000] = "Forlorn Cloister",
		[26104] = "Ironclad Cove",
		[26642] = "Hall of Blackhand",
		[26662] = "Hall of Binding",
		[26666] = "The Rookery",
		[26668] = "Dragonspire Hall",
		[26670] = "Blackrock Stadium",
		[26683] = "Hordemar City",
		[26684] = "The Furnace",
		[26686] = "Skitterweb Tunnels",
		[26688] = "Tazz'Alaor",
		[26711] = "Halycon's Lair",
		[26713] = "Mok'Doom",
		[26715] = "Spire Throne",
		[26718] = "Chamber of Battle",
		[26733] = "Detention Block",
		[26735] = "Halls of the Law",
		[26740] = "East Garrison",
		[26742] = "Ring of the Law",
		[26745] = "Shrine of Thaurissan",
		[26747] = "Dark Iron Highway",
		[26749] = "West Garrison",
		[26750] = "Shadowforge City",
		[26751] = "The Grim Guzzler",
		[26755] = "The Domicile ",
		[26758] = "The Black Vault",
		[26759] = "Hall of Crafting",
		[26761] = "Chamber of Enchantment",
		[26764] = "Mold Foundry",
		[26765] = "The Molten Bridge",
		[26766] = "The Lyceum",
		[26768] = "The Iron Hall",
		[26769] = "The Imperial Seat",
		[26781] = "The Manufactory",
		[26784] = "Summoners' Tomb",
		[32277] = "Market Row",
		[32281] = "Festival Lane",
		[32285] = "King's Square",
		[32301] = "Slaughter Square",
		[32303] = "The Gauntlet",
		[32319] = "Crusaders' Square",
		[32320] = "The Scarlet Bastion",
		[32322] = "Alonsus Chapel",
		[32331] = "The Hall of Lights",
		[32342] = "Elders' Square",
		[32344] = "Ano Ziggurat",
		[32345] = "Bera Ziggurat",
		[32349] = "Cadra Ziggurat",
		[32352] = "The Slaughter House",
		[32357] = "The Hoard",
		[32367] = "The Crimson Throne",
		[32528] = "The Storehouse",
		[32549] = "Barov Family Vault",
		[32565] = "Hall of the Damned",
		[32566] = "Hall of Secrets",
		[32567] = "The Coven ",
		[32568] = "The Shadow Vault",
		[32569] = "Vault of the Ravenian",
		[32573] = "The Reliquary",
		[32574] = "Chamber of Summoning",
		[32576] = "The Viewing Room",
		[32577] = "The Great Ossuary",
		[32579] = "The Laboratory",
		[32581] = "Headmaster's Study",
		[33710] = "Warpwood Quarter",
		[33730] = "The Shrine of Eldretharr",
		[33748] = "The Athenaeum",
		[33749] = "Prison of Immol'thar",
		[33750] = "Court of the Highborne",
		[33774] = "Gordok's Seat",
		[33775] = "Halls of Destruction",
		[34776] = "The Conservatory",
	}
end
--##END-DATA##

-- AutoSelect
local AutoSelectSave = {}
local LastData, LastInstanceID = {}, 0

function AutoSelect:RefreshOptions()
	if AtlasLoot.db.enableAutoSelect and not AtlasLoot.Loader:IsModuleLoaded("AtlasLootClassic_DungeonsAndRaids") then
		AtlasLoot.Loader:LoadModule("AtlasLootClassic_DungeonsAndRaids")
	end
end

function AutoSelect:AddInstanceTable(module, instanceAlID, iniTab)
    if not iniTab then return end
    local instanceID = iniTab.InstanceID
    if not module or not instanceAlID or not instanceID then return end
    if not AutoSelectSave[instanceID] then
        AutoSelectSave[instanceID] = {
            base = { module, instanceAlID }
        }
    end
    local content = AutoSelectSave[instanceID]

    if iniTab.SubAreaIDs then
        if not content.sub then
            content.sub = {}
            content.subList = {}
        end

        for i = 1, #iniTab.SubAreaIDs do
            content.sub[iniTab.SubAreaIDs[i]] = { module, instanceAlID }
            content.subList[#content.subList + 1] = iniTab.SubAreaIDs[i]
        end
        -- SubAreaIDs / SubAreaID
        for i = 1, #iniTab.items do
            local id = iniTab.items[i].SubAreaID
            if id and content.sub[id] and not content.sub[id][3] then
                content.sub[id][3] = i
            end
        end

    end
end

local function GetNewLocalData(instanceID, newData, isBase)
	local module, alIniID, bossID

	module = newData[1]

	if instanceID == LastInstanceID and ((not newData[3] or newData[3] ~= LastData[3]) or isBase) then
		alIniID = LastData[2]
	else
		alIniID = newData[2]
		LastInstanceID = instanceID
	end

	bossID = newData[3]

	LastData[1], LastData[2], LastData[3], LastData[4] = module, alIniID, bossID, isBase
	return module, alIniID, bossID
end

function AutoSelect:GetCurrrentPlayerData()
    local posY, posX, posZ, instanceID = UnitPosition("player")
    local ini = instanceID and AutoSelectSave[instanceID] or nil
    if ini then
        if ini.sub then
            local subZoneName = GetSubZoneText()
            for i = 1, #ini.subList do
                local locName = SUB_L[ini.subList[i]]
				if locName and locName == subZoneName then
                    return GetNewLocalData(instanceID, ini.sub[ini.subList[i]])
                end
            end
		end
        return GetNewLocalData(instanceID, ini.base, true)
	end
end
