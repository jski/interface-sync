local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsACLASSIC") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\Honor Hold")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\Cenarion Expedition")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\Lower City")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\The Scryers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\The Aldor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\Netherwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\The Sha'tar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\Keepers of Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\Sporeggar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\The Kurenai")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\The Burning Crusade\\The Consortium")
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\Ogri'la")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\The Burning Crusade\\Sha'tari Skyguard")
