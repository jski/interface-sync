local ZGV = ZygorGuidesViewer
if not ZGV then return end

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.Home={
	{"banner", image=ZGV.IMAGESDIR.."banner"},

	{"section", text=[[December 16th, 2021]]},

	{"list", text=[[Updated **Feast of Winter Veil Quest**]], guide="EVENTS\\Feast of Winter Veil\\Feast of Winter Veil Quest"},

	{"section", text=[[September 15th, 2021]]},

	{"list", text=[[Updated with TBC phase 2 content (see Featured section).]]},


	{"section", text=[[August 6th, 2021]]},

{"section", text=[[DUNGEONS]]},	
	{"list", text=[[Updated Dungeon Boss and Quest guides with custom maps for TBC.]]},

	{"section", text=[[July 23rd, 2021]]},

{"section", text=[[EVENTS]]},
	{"list", text=[[Added **Midsummer Fire Festival Quests**]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Quests"},
	{"list", text=[[Added **Midsummer Fire Festival Dailies**]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies"},
	{"list", text=[[Added **Midsummer Fire Festival Bonfires**]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires", faction="A"},
	{"list", text=[[Added **Midsummer Fire Festival Bonfires**]], guide="EVENTS\\Midsummer Fire Festival\\The Fires of Azeroth\\Midsummer Fire Festival Bonfires", faction="H"},

{"section", text=[[GOLD]]},	
	{"list", text=[[Updated Gold Guide with TBC farming and gathering chores.]]},


}


-- faction="Alliance" {"separator"},