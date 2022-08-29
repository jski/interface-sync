local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("GoldFarmH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Linen Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Wool Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Silk Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Mageweave Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Runecloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Felcloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Mooncloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Spider's Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Thick Spider's Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Shadow Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Ironweb Spider Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Brilliant Smallfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Chunk of Boar Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Small Egg")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Stringy Wolf Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Slitherskin Mackerel")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Meaty Bat Wing")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Scorpid Stinger")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Coyote Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Strider Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Kodo Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Bear Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Crawler Meat, Crawler Claw")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Rainbow Fin Albacore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Longjaw Mud Snapper")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Murloc Fin")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Sagefish")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Big Bear Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raptor Egg")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Thunder Lizard Tail")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Tangy Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Tender Crocolisk Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Lion Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Stag Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Bristle Whisker Catfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Gooey Spider Leg")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Mystery Meat, Buzzard Wing")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Red Wolf Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Turtle Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Tiger Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raptor Flesh")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Mithril Head Trout")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Rockscale Cod")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Giant Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Raw Sunscale Salmon")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Essence of Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Living Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Essence of Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Essence of Air, Breath of Wind, Elemental Air")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Essence of Earth, Core of Earth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Essence of Undeath")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Heart of the Wild")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Ichor of Undeath")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Heart of Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Globe of Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Elemental Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Elemental Earth, Deeprock Salt, Solid Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Elemental Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Elemental Air")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Strange Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Lesser Magic Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Greater Magic Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Lesser Eternal Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Greater Eternal Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Small Brilliant Shard")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Large Brilliant Shard")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Illusion Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Lesser Astral Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Greater Astral Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Soul Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Lesser Mystic Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Greater Mystic Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Vision Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Dream Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Greater Nether Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Lesser Nether Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Righteous Orb")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Demonic Rune")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Dark Rune")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Sharp Claw")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Ogre Tannin")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Small Venom Sac")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Huge Venom Sac")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Iridescent Pearl")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Black Pearl, Golden Pearl, Zesty Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Giant Egg")
