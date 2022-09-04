local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACLASSIC") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-11)\\Human Starter (1-11)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Elwynn Forest",
condition_suggested=function() return raceclass('Human') and level <= 11 end,
condition_suggested_race=function() return raceclass('Human') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Darkshore (11-14)",
},[[
defaultfor Human
step
_NOTE:_
Save All Linen Cloth You Find
|tip As you quest in Elwynn Forest, save all Linen Cloth you find.
|tip Be careful not to accidentally sell them to a vendor.
|tip You will need ~70 Linen Cloth when you are level 10-11.
|tip You will use them to create your wand, which will be a powerful weapon for you.
|tip However, if you are confident you will be able to buy a wand from the Auction House (if this isn't a new or populated server), you can ignore this.
Click Here to Continue |confirm |q 364 |future
|only if Priest
step
_Destroy This Item:_
|tip You won't use it in the Northshire Valley starter area.
|tip You will get another one before you need to use it.
trash Hearthstone##6948
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
accept The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
|only if Human Warlock
step
click Stolen Books
|tip Run through the enemies and aggro the enemies in this small camp near this tent.
|tip Run inside the tent after they attack you, they can't attack you inside the tent, so you will be safe.
|tip If they still hit you inside the tent, run a little further into the tent.
|tip While standing inside the tent, zoom your camera out and click the small pile of books in the junk to the right of the tent opening.
|tip Don't worry about the enemies, you will die on purpose after you get the quest item.
collect Powers of the Void##6785 |q 1598/1 |goto 56.74,43.77
|only if Human Warlock
step
Allow Enemies to Kill You
|tip Stand in the fire to die faster.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 56.48,43.92 |q 1598
|only if Human Warlock
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 49.53,43.49 |q 1598 |zombiewalk
|only if Human Warlock
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
turnin The Stolen Tome##1598 |goto 49.87,42.65
|only if Human Warlock
step
Summon Your Imp |complete warlockpet("Imp") |q 783 |future
|tip Use the "Summon Imp" ability.
|only if Human Warlock and not warlockpet("Imp")
step
talk Deputy Willem##823
accept A Threat Within##783 |goto Elwynn Forest 48.17,42.95
step
Enter the building |goto 48.31,41.99 < 10 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin A Threat Within##783 |goto 48.92,41.61
accept Kobold Camp Cleanup##7 |goto 48.92,41.61
step
talk Deputy Willem##823
accept Eagan Peltskinner##5261 |goto 48.17,42.95
step
talk Eagan Peltskinner##196
|tip Outside the building.
turnin Eagan Peltskinner##5261 |goto 48.94,40.16
accept Wolves Across the Border##33 |goto 48.94,40.16
step
Kill Wolf enemies around this area
collect 8 Tough Wolf Meat##750 |q 33/1 |goto 46.38,38.58
You can find more around: |notinsticky
[45.82,44.02]
[50.16,45.83]
[52.06,40.29]
step
kill 10 Kobold Vermin##6 |q 7/1 |goto 47.49,36.15
You can find more around [51.18,37.25]
step
talk Eagan Peltskinner##196
turnin Wolves Across the Border##33 |goto 48.94,40.16
step
Kill enemies around this area
ding 3 |goto 47.49,36.15
You can find more around [51.18,37.25]
step
talk Brother Danil##152
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Brother Danil##152 |goto 47.49,41.56 |q 7
step
Enter the building |goto 48.31,41.99 < 10 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Kobold Camp Cleanup##7 |goto 48.92,41.61
accept Investigate Echo Ridge##15 |goto 48.92,41.61
accept Glyphic Letter##3104 |goto 48.92,41.61		|only Human Mage
accept Simple Letter##3100 |goto 48.92,41.61		|only Human Warrior
accept Tainted Letter##3105 |goto 48.92,41.61		|only Human Warlock
accept Encrypted Letter##3102 |goto 48.92,41.61		|only Human Rogue
accept Hallowed Letter##3103 |goto 48.92,41.61		|only Human Priest
accept Consecrated Letter##3101 |goto 48.92,41.61	|only Human Paladin
step
talk Llane Beshere##911
|tip Inside the building, on the ground floor.
turnin Simple Letter##3100 |goto Elwynn Forest 50.24,42.28
|only if Human Warrior
step
talk Brother Sammuel##925
|tip Inside the building, on the ground floor.
turnin Consecrated Letter##3101 |goto Elwynn Forest 50.43,42.12
|only if Human Paladin
step
talk Priestess Anetta##375
|tip Inside the building, on the ground floor.
turnin Hallowed Letter##3103 |goto Elwynn Forest 49.81,39.49
|only if Human Priest
step
talk Khelden Bremen##198
|tip Upstairs inside the building, on the middle floor.
turnin Glyphic Letter##3104 |goto Elwynn Forest 49.66,39.41
|only if Human Mage
step
talk Drusilla La Salle##459
|tip Outside, next to the building.
turnin Tainted Letter##3105 |goto 49.87,42.65
|only if Human Warlock
step
Leave the building |goto Elwynn Forest 48.29,42.00 < 10 |walk |only if subzone("Northshire Abbey") and _G.IsIndoors()
kill 10 Kobold Worker##257 |q 15/1 |goto Elwynn Forest 47.49,36.15
You can find more around [Elwynn Forest 51.18,37.25]
step
Kill enemies around this area
|tip Getting this far into level 3 will allow you to reach level 4 when you turn in a quest soon.
ding 3,1150 |goto 47.49,36.15
You can find more around [51.18,37.25]
step
talk Brother Danil##152
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Brother Danil##152 |goto 47.49,41.56 |q 15
step
Enter the building |goto 48.28,42.02 < 10 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Investigate Echo Ridge##15 |goto 48.93,41.61
accept Skirmish at Echo Ridge##21 |goto 48.93,41.61
step
Leave the building |goto 48.29,42.00 < 10 |walk |only if subzone("Northshire Abbey") and _G.IsIndoors()
talk Deputy Willem##823
accept Brotherhood of Thieves##18 |goto 48.17,42.93
step
label "Collect_Red_Burlap_Bandanas"
kill Defias Thug##38+
collect 12 Red Burlap Bandana##752 |q 18/1 |goto 56.09,42.35
You can find more around [53.20,50.30]
step
talk Deputy Willem##823
|tip Outside, in front of the building.
turnin Brotherhood of Thieves##18 |goto 48.17,42.94
accept Milly Osworth##3903 |goto 48.17,42.94
accept Bounty on Garrick Padfoot##6 |goto 48.17,42.94
step
talk Godric Rothgar##1213
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Godric Rothgar##1213 |goto 47.69,41.42 |q 6
step
kill 12 Kobold Laborer##80 |q 21/1 |goto 47.67,31.86
|tip Inside the mine.
step
Kill enemies around this area
|tip Inside and outside the mine.
ding 5 |goto 47.67,31.86
step
Leave the mine |goto 47.66,31.89 < 15 |walk |only if subzone("Echo Ridge Mine") and _G.IsIndoors()
talk Milly Osworth##9296
|tip Outside, behind the building.
turnin Milly Osworth##3903 |goto 50.69,39.35
accept Milly's Harvest##3904 |goto 50.69,39.35
step
talk Jorik Kerridan##915
|tip Inside the building.
turnin Encrypted Letter##3102 |goto Elwynn Forest 50.31,39.92
|only if Human Rogue
step
kill Garrick Padfoot##103
collect Garrick's Head##182 |q 6/1 |goto Elwynn Forest 57.51,48.25
step
click Milly's Harvest+
|tip They look like wooden buckets on the ground around this area.
collect 8 Milly's Harvest##11119 |q 3904/1 |goto 53.88,48.55
step
Kill enemies around this area
|tip Getting this far into level 5 will allow you to reach level 6 when you turn in quests soon.
|tip You need to be level 6 to be able to learn your class abilities before leaving this starter area.
ding 5,1500 |goto 56.09,42.35
You can find more around [53.20,50.30]
step
talk Milly Osworth##9296
turnin Milly's Harvest##3904 |goto 50.69,39.35
accept Grape Manifest##3905 |goto 50.69,39.35
step
talk Godric Rothgar##1213
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Godric Rothgar##1213 |goto 47.69,41.42 |q 3905
step
talk Deputy Willem##823
turnin Bounty on Garrick Padfoot##6 |goto 48.17,42.94
step
Enter the building |goto 48.27,42.01 < 10 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Skirmish at Echo Ridge##21 |goto 48.92,41.61
accept Report to Goldshire##54 |goto 48.92,41.61
step
Run up the stairs |goto 49.56,41.61 < 7 |walk
talk Brother Neals##952
|tip Upstairs inside the building, all the way at the top.
turnin Grape Manifest##3905 |goto 49.47,41.58
step
talk Priestess Anetta##375
|tip Inside the building, on the ground floor.
accept In Favor of the Light##5623 |goto Elwynn Forest 49.81,39.49
|only if Human Priest
step
Leave the building |goto Elwynn Forest 48.29,42.00 < 10 |walk |only if subzone("Northshire Abbey") and _G.IsIndoors()
talk Brother Danil##152
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Brother Danil##152 |goto Elwynn Forest 47.49,41.56 |q 54
step
Follow the road |goto 47.05,47.69 < 20 |only if walking
talk Falkhaan Isenstrider##6774
accept Rest and Relaxation##2158 |goto 45.56,47.74
step
talk Marshal Dughan##240
turnin Report to Goldshire##54 |goto 42.11,65.93
accept The Fargodeep Mine##62 |goto 42.11,65.93
step
Enter the building |goto 42.95,65.65 < 10 |walk
talk William Pestle##253
|tip Inside the building.
accept Kobold Candles##60 |goto 43.32,65.70
step
talk Innkeeper Farley##295
|tip Inside the building.
turnin Rest and Relaxation##2158 |goto 43.77,65.81
step
talk Brog Hamfist##151
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Brog Hamfist##151 |goto 43.96,65.92 |q 60
step
talk Brog Hamfist##151
|tip Inside the building.
|tip If you can afford it.
buy Balanced Throwing Dagger##25872 |n
Visit the Vendor |vendor Brog Hamfist##151 |goto Elwynn Forest 43.96,65.92 |q 60
|only if Rogue
step
talk Michelle Belle##2329
|tip Upstairs inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto Elwynn Forest 43.39,65.55
step
_NOTE:_
Create Bandages in Downtime
|tip While you wait for boats, it's a good time to make bandages and increase your First Aid skill.
|tip You'll need higher skill to make better bandages later, so make sure to level it up as you go.
|tip Keep bandages on hand for another way to heal yourself.
Click Here to Continue |confirm |q 60
step
talk Priestess Josetta##377
|tip Upstairs inside the building.
turnin In Favor of the Light##5623 |goto Elwynn Forest 43.28,65.72
accept Garments of the Light##5624 |goto Elwynn Forest 43.28,65.72
|only if Human Priest
step
Heal and Fortify Guard Roberts |q 5624/1 |goto 47.01,66.76
|tip Target Guard Roberts.
|tip First, cast your "Lesser Heal (Rank 2)" spell on him.
|tip Second, cast your "Power Word: Fortitude" spell on him.
|only if Human Priest
step
Enter the building |goto 42.95,65.65 < 10 |walk
talk Priestess Josetta##377
|tip Upstairs inside the building.
turnin Garments of the Light##5624 |goto 43.28,65.72
|only if Human Priest
step
talk Corina Steele##54
|tip Inside the building.
|tip If you can afford it.
buy Gladius##2488 |n
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 60
|only if Warrior and itemcount(2488) == 0
step
talk Corina Steele##54
|tip Inside the building.
|tip If you can afford it.
buy Wooden Mallet##2493 |n
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 60
|only if Paladin and itemcount(2493) == 0
step
talk Corina Steele##54
|tip Inside the building.
|tip If you can afford it.
buy Stiletto##2494 |n
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 60
|only if Rogue and itemcount(2494) == 0
step
talk Remy "Two Times"##241
accept Gold Dust Exchange##47 |goto Elwynn Forest 42.14,67.26
stickystart "Collect_Chunks_Of_Boar_Meat"
step
talk "Auntie" Bernice Stonefield##246
accept Lost Necklace##85 |goto 34.48,84.26
step
talk Billy Maclure##247
turnin Lost Necklace##85 |goto 43.13,85.72
accept Pie for Billy##86 |goto 43.13,85.72
step
Enter the building |goto 43.00,89.40 < 10 |walk
talk Maybell Maclure##251
|tip Inside the building.
accept Young Lovers##106 |goto 43.15,89.62
step
talk Joshua Maclure##258
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Joshua Maclure##258 |goto 42.36,89.38 |q 106
step
label "Collect_Chunks_Of_Boar_Meat"
kill Stonetusk Boar##113+
collect 4 Chunk of Boar Meat##769 |q 86/1 |goto 41.86,87.12 |future
|tip Be careful not to accidentally sell these to a vendor.
step
talk "Auntie" Bernice Stonefield##246
turnin Pie for Billy##86 |goto 34.48,84.26
accept Back to Billy##84 |goto 34.48,84.26
step
talk Tommy Joe Stonefield##252
turnin Young Lovers##106 |goto 29.84,85.99
accept Speak with Gramma##111 |goto 29.84,85.99
step
Enter the building |goto 34.82,84.11 < 10 |walk
talk Gramma Stonefield##248
|tip Inside the building.
turnin Speak with Gramma##111 |goto 34.94,83.86
accept Note to William##107 |goto 34.94,83.86
step
talk Billy Maclure##247
turnin Back to Billy##84 |goto 43.13,85.72
accept Goldtooth##87 |goto 43.13,85.72
stickystart "Collect_Gold_Dust"
stickystart "Collect_Large_Candles"
step
Enter the mine |goto 38.97,82.33 < 10 |walk
Scout Through the Fargodeep Mine |q 62/1 |goto 39.61,80.21
|tip Inside the mine.
step
Follow the path inside the mine |goto 39.76,79.21 < 10 |walk
kill Goldtooth##327
|tip He walks around this area inside the mine.
collect Bernice's Necklace##981 |q 87/1 |goto 41.71,78.04
step
label "Collect_Gold_Dust"
Kill Kobold enemies around this area
|tip Inside the mine.
|tip You can find more outside the mine.
collect 10 Gold Dust##773 |q 47/1 |goto 39.61,80.21
step
label "Collect_Large_Candles"
Kill Kobold enemies around this area
|tip Inside the mine.
|tip You can find more outside the mine.
collect 8 Large Candle##772 |q 60/1 |goto 39.61,80.21
step
Kill enemies around this area
|tip Inside and outside the mine.
|tip Getting this far into level 7 will allow you to reach level 8 after turning in quests soon.
ding 7,1900  |goto 39.61,80.21
step
Leave the mine |condition subzone("Fargodeep Mine") and not _G.IsIndoors()
|tip There are multiple exits, so just leave through the one you come across first.
|only if haveq(62) or haveq(87) or haveq(47) or haveq(60)
step
talk "Auntie" Bernice Stonefield##246
turnin Goldtooth##87 |goto 34.49,84.25
step
talk Homer Stonefield##894
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Homer Stonefield##894 |goto 33.69,82.90 |q 106
step
talk Remy "Two Times"##241
turnin Gold Dust Exchange##47 |goto 42.14,67.26
accept A Fishy Peril##40 |goto 42.14,67.26
step
talk Marshal Dughan##240
turnin A Fishy Peril##40 |goto 42.11,65.93
accept Further Concerns##35 |goto 42.11,65.93
turnin The Fargodeep Mine##62 |goto 42.11,65.93
accept The Jasperlode Mine##76 |goto 42.11,65.93
step
Enter the building |goto 42.95,65.65 < 10 |walk
talk William Pestle##253
|tip Inside the building.
turnin Kobold Candles##60 |goto 43.32,65.70
accept Shipment to Stormwind##61 |goto 43.32,65.70
turnin Note to William##107 |goto 43.32,65.70
accept Collecting Kelp##112 |goto 43.32,65.70
step
talk Innkeeper Farley##295
|tip Inside the building.
|tip This will create a Hearthstone for you, so you have one again.
home Goldshire |goto 43.77,65.81 |q 1097 |future
step
talk Brog Hamfist##151
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Brog Hamfist##151 |goto 43.96,65.92 |q 112
step
talk Corina Steele##54
|tip Inside the building.
|tip Repair your items.
|tip If you can afford it.
buy Gladius##2488 |n
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 112
|only if Warrior and itemcount(2488) == 0
step
talk Corina Steele##54
|tip Inside the building.
|tip Repair your items.
|tip If you can afford it.
buy Wooden Mallet##2493 |n
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 112
|only if Paladin and itemcount(2493) == 0
step
talk Corina Steele##54
|tip Inside the building.
|tip If you can afford it.
buy Stiletto##2494 |n
Visit the Vendor |vendor Corina Steele##54 |goto Elwynn Forest 41.53,65.90 |q 112
|only if Rogue and itemcount(2494) == 0
step
Kill Murloc enemies around this area
collect 4 Crystal Kelp Frond##1256 |q 112/1 |goto Elwynn Forest 50.20,66.86
You can find more around [Elwynn Forest 55.90,66.66]
step
Enter the mine |goto 61.71,53.87 < 10 |walk
Scout Through the Jasperlode Mine |q 76/1 |goto 60.38,49.68
|tip Inside the mine.
step
Leave the mine |goto 61.74,53.88 < 10 |walk |only if subzone("Jasperlode Mine") and _G.IsIndoors()
talk Guard Thomas##261
turnin Further Concerns##35 |goto 73.97,72.18
accept Find the Lost Guards##37 |goto 73.97,72.18
accept Protect the Frontier##52 |goto 73.97,72.18
stickystart "Kill_Young_Forest_Bears"
stickystart "Kill_Prowlers"
step
click A Half-Eaten Body
turnin Find the Lost Guards##37 |goto 72.65,60.33
accept Discover Rolf's Fate##45 |goto 72.65,60.33
step
talk Supervisor Raelen##10616
accept A Bundle of Trouble##5545 |goto 81.38,66.11
step
talk Sara Timberlain##278
|tip In front of the building.
accept Red Linen Goods##83 |goto 79.46,68.78
step
talk Rallic Finn##1198
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Rallic Finn##1198 |goto 83.28,66.09 |q 5545
stickystart "Collect_Bundles_Of_Wood"
step
Kill enemies around this area
|tip The next step in the guide can be pretty tough, so being a level higher will help.
ding 9 |goto 77.69,61.78
You can find more around [83.76,60.88]
step
click Rolf's Corpse
turnin Discover Rolf's Fate##45 |goto 79.80,55.52
accept Report to Thomas##71 |goto 79.80,55.52
step
label "Collect_Bundles_Of_Wood"
click Bundle of Wood+
|tip They look like small stacks of brown logs at the base of trees around this area.
collect 8 Bundle of Wood##13872 |q 5545/1 |goto 77.69,61.78
You can find more around [83.76,60.88]
step
talk Supervisor Raelen##10616
turnin A Bundle of Trouble##5545 |goto 81.38,66.12
step
label "Kill_Young_Forest_Bears"
kill 5 Young Forest Bear##822 |q 52/2 |goto 86.49,63.95
You can find more around: |notinsticky
[81.76,59.01]
[78.29,61.34]
[71.40,61.40]
[68.66,65.13]
[75.22,67.19]
step
label "Kill_Prowlers"
kill 8 Prowler##118 |q 52/1 |goto 83.27,60.09
step
talk Rallic Finn##1198
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Rallic Finn##1198 |goto 83.28,66.09 |q 52
step
talk Guard Thomas##261
turnin Protect the Frontier##52 |goto 73.97,72.18
turnin Report to Thomas##71 |goto 73.97,72.18
accept Deliver Thomas' Report##39 |goto 73.97,72.18
accept Report to Gryan Stoutmantle##109 |goto 73.97,72.18
step
Kill Defias enemies around this area
|tip Focus on killing the ones along the perimeter of the farm, near the fences and buildings.
collect 6 Red Linen Bandana##1019 |q 83/1 |goto 69.61,79.38
step
Kill enemies around this area
|tip Focus on killing the ones along the perimeter of the farm, near the fences and buildings.
|tip Getting this far into level 9 will allow you to reach level 10 after turning in quests soon.
ding 9,3600 |goto 69.61,79.38
step
use the Westfall Deed##1972
accept Furlbrow's Deed##184
|only if itemcount(1972) > 0
step
talk Sara Timberlain##278
|tip In front of the building.
turnin Red Linen Goods##83 |goto 79.46,68.79
step
talk Rallic Finn##1198
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Rallic Finn##1198 |goto 83.28,66.09 |q 112
step
talk Ariena Stormfeather##931
|tip Be careful as you travel here, follow the road.
|tip The enemies in this zone are much higher level than you currently.
fpath Lakeshire |goto Redridge Mountains 30.59,59.41
step
talk William Pestle##253
|tip Inside the building.
turnin Collecting Kelp##112 |goto Elwynn Forest 43.32,65.71
step
Watch the dialogue
talk William Pestle##253
|tip Inside the building.
accept The Escape##114 |goto 43.32,65.71
step
talk Marshal Dughan##240
turnin Deliver Thomas' Report##39 |goto 42.11,65.93
turnin The Jasperlode Mine##76 |goto 42.11,65.93
accept Westbrook Garrison Needs Help!##239 |goto 42.11,65.93
step
talk Smith Argus##514
|tip Inside the building.
accept Elmore's Task##1097 |goto 41.71,65.55
step
talk Lyria Du Lac##913
accept A Warrior's Training##1638 |goto Elwynn Forest 41.09,65.77
|only if Human Warrior
step
Enter the building |goto Elwynn Forest 42.95,65.65 < 10 |walk
talk Priestess Josetta##377
|tip Upstairs inside the building.
accept Desperate Prayer##5635 |goto Elwynn Forest 43.28,65.72
|only if Human Priest
step
Enter the building |goto Elwynn Forest 42.95,65.65 < 10 |walk
talk Remen Marcot##6121
|tip Downstairs inside the building.
accept Gakin's Summons##1685 |goto Elwynn Forest 44.49,66.27
|only if Human Warlock
step
Enter the building |goto Elwynn Forest 43.00,89.40 < 10 |walk
talk Maybell Maclure##251
|tip Inside the building.
turnin The Escape##114 |goto Elwynn Forest 43.15,89.62
step
talk Deputy Rainer##963
turnin Westbrook Garrison Needs Help!##239 |goto 24.23,74.45
accept Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
step
Kill Riverpaw enemies around this area
collect 8 Painted Gnoll Armband##782 |q 11/1 |goto 26.75,86.83
You can find more around [24.75,94.05]
step
talk Deputy Rainer##963
turnin Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
step
talk Farmer Furlbrow##237
turnin Furlbrow's Deed##184 |goto Westfall 59.96,19.36
|only if haveq(184) or completedq(184)
step
talk Verna Furlbrow##238
accept Westfall Stew##36 |goto 59.92,19.42
step
talk Farmer Saldean##233
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Farmer Saldean##233 |goto 56.04,31.23 |q 36
step
Enter the building |goto 56.15,31.04 < 10 |walk
talk Salma Saldean##235
|tip Inside the building.
turnin Westfall Stew##36 |goto 56.42,30.52
step
talk Gryan Stoutmantle##234
turnin Report to Gryan Stoutmantle##109 |goto 56.33,47.52
step
Enter the building |goto Westfall 56.53,47.39 < 10 |walk
talk Quartermaster Lewis##491
|tip Inside the building.
accept A Swift Message##6181 |goto Westfall 57.00,47.17
|only if Human
step
talk Quartermaster Lewis##491
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Quartermaster Lewis##491 |goto Westfall 57.00,47.17 |q 61
step
talk Thor##523
fpath Sentinel Hill |goto 56.55,52.64
step
talk Thor##523
turnin A Swift Message##6181 |goto Westfall 56.56,52.64
accept Continue to Stormwind##6281 |goto Westfall 56.56,52.64
|only if Human
step
talk Thor##523
|tip Open the flight map.
|tip We are opening the flight map to let the guide learn that you have the Stormwind City flight path already.
fpath Stormwind City |goto 56.55,52.64
|only if Human
step
Enter the building |goto Stormwind City 63.47,74.63 < 10 |walk
talk Morgan Pestle##279
|tip Inside the building.
turnin Shipment to Stormwind##61 |goto Stormwind City 63.16,74.40
step
Enter the building |goto Stormwind City 64.18,72.13 < 10 |walk
talk Thurman Mullby##1285
|tip Inside the building.
|tip If you can afford it.
buy Balanced Throwing Dagger##25872 |n
Visit the Vendor |vendor Thurman Mullby##1285 |goto Stormwind City 64.84,72.17 |q 1097
|only if Rogue
step
Enter the building |goto Stormwind City 63.51,69.10 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use two-handed swords.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 63.88,69.09
|only if Warrior
step
Enter the building |goto Stormwind City 63.51,69.10 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use one-handed swords.
Train One-Handed Swords |complete weaponskill("SWORD") > 0 |goto Stormwind City 63.88,69.09
|only if Rogue
step
talk Gunther Weller##1289
|tip Inside the building.
|tip If you can afford it.
buy Cutlass##851 |n
Visit the Vendor |vendor Gunther Weller##1289 |goto 64.21,68.60 |q 1097
|only if Rogue and itemcount(851) == 0
step
Enter the building |goto Stormwind City 63.51,69.10 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 63.88,69.09
|only if Priest
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Priest"	|or	|q 1097
No, I Already Have a Wand	|confirm	|next "Skip_Wand_Priest"	|or	|q 1097
|only if Priest
step
label "Create_Wand_Priest"
collect 70 Linen Cloth##2589 |q 1097
|tip You are about to create your wand.
|tip If you need more Linen Cloth, try to buy some from the Auction House.
|only if Priest
step
Enter the building |goto Stormwind City 54.15,81.61 < 10 |walk
talk Lawrence Schneider##1300
|tip Inside the building.
Learn Tailoring |skillmax Tailoring,75 |goto Stormwind City 53.48,81.47 |q 1097
|only if Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 35 Bolts of Linen Cloth.
collect 35 Bolt of Linen Cloth##2996 |q 1097
|only if Priest
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 10 Coarse Thread##2320 |goto 53.14,81.76 |q 1097
|only if Priest
step
talk Lawrence Schneider##1300
|tip Inside the building.
learn Brown Linen Robe##7623 |goto 53.48,81.47 |q 1097
|only if Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 10 Brown Linen Robes.
|tip You are about to learn Enchanting and disenchant these.
collect 10 Brown Linen Robe##6238 |q 1097
|only if Priest
step
Enter the building |goto 53.50,73.84 < 10 |walk
talk Lucan Cordell##1317
|tip Inside the building.
Learn Enchanting |skillmax Enchanting,75 |goto 52.90,74.46 |q 1097
|only if Priest
step
Disenchant the Brown Linen Robes
|tip Use the "Disenchant" ability in the General tab of your spellbook.
|tip If you don't get one of these items from disenchanting, talk to Jessara Cordell here and try to buy it.
|tip They are limited supply items, so it may not be available to buy.
|tip You can also try to buy it from the Auction House.
collect Strange Dust##10940 |goto 52.80,74.26 |q 1097
collect 2 Lesser Magic Essence##10938 |goto 52.80,74.26 |q 1097
|only if Priest
step
talk Jessara Cordell##1318
|tip Inside the building.
buy Copper Rod##6217 |goto 52.80,74.26 |q 1097
buy Simple Wood##4470 |goto 52.80,74.26 |q 1097
|only if Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Runed Copper Rod.
collect Runed Copper Rod##6218 |q 1097
|only if Priest
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Lesser Magic Wand##14293 |goto 52.90,74.46 |q 1097
|only if Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Lesser Magic Wand.
collect Lesser Magic Wand##11287 |q 1097
|only if Priest
step
Enter the building |goto Stormwind City 63.51,69.10 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 63.88,69.09
|only if Human Warlock
step
Enter the building |goto 42.23,81.82 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Gakin's Summons##1685 |goto 39.22,85.22
accept Surena Caledon##1688 |goto 39.22,85.22
|only Human Warlock
step
Leave the building |goto 42.23,81.82 < 10 |walk |only if subzone("The Slaughtered Lamb")
Enter the building |goto Elwynn Forest 70.93,80.43 < 10 |walk
talk Surena Caledon##881
|tip Inside the building.
collect Surena's Choker##6810 |q 1688/1 |goto Elwynn Forest 71.02,80.78
|only if Human Warlock
step
Enter the building |goto Stormwind City 42.23,81.82 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Surena Caledon##1688 |goto Stormwind City 39.22,85.22
accept The Binding##1689 |goto Stormwind City 39.22,85.22
|only Human Warlock
step
use the Bloodstone Choker##6928
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Voidwalker##5676 |q 1689/1 |goto 39.07,84.37
|only if Human Warlock
step
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1689 |goto 39.22,85.22
|only if Human Warlock
step
_NOTE:_
Create Soul Shards
|tip As you follow the guide, use your "Drain Soul" spell as you kill an enemy to get a Soul Shard.
|tip Once you have a Soul Shard, use your "Summon Voidwalker" ability to summon your voidwalker.
|tip It will tank enemies for you, making it easier to kill enemies.
Click Here to Continue |confirm |q 1097
|only if Human Warlock
step
Leave the building |goto 42.23,81.82 < 10 |c |q 1097
|only if Human Warlock and subzone("The Slaughtered Lamb")
step
label "Skip_Wand_Priest"
Enter the building |goto Stormwind City 52.98,51.10 < 10 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Desperate Prayer##5635 |goto Stormwind City 49.53,44.56
|only if Human Priest
step
Enter the building |goto Stormwind City 76.66,61.27 < 10 |walk
talk Osric Strang##1323
|tip Inside the building.
turnin Continue to Stormwind##6281 |goto Stormwind City 77.17,60.99
|only if Human
step
Enter the building |goto Stormwind City 75.12,55.31 < 10 |walk
talk Harry Burlguard##6089
|tip Inside the building.
turnin A Warrior's Training##1638 |goto Stormwind City 77.13,53.26
accept Bartleby the Drunk##1639 |goto Stormwind City 77.13,53.26
|only if Human Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Bartleby the Drunk##1639 |goto 76.77,52.54
accept Beat Bartleby##1640 |goto 76.77,52.54
|tip He will attack you immediately after you accept this quest.
|only if Human Warrior
step
kill Bartleby##6090
|tip He walks around this area inside the building.
|tip He will eventually surrender.
Beat Bartleby |q 1640/1 |goto 76.77,52.54
|only if Human Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Beat Bartleby##1640 |goto 76.77,52.54
accept Bartleby's Mug##1665 |goto 76.77,52.54
|only if Human Warrior
step
talk Harry Burlguard##6089
|tip Inside the building.
turnin Bartleby's Mug##1665 |goto 77.13,53.26
|only if Human Warrior
step
Enter the building |goto Stormwind City 59.76,34.68 < 10 |walk
talk Grimand Elmore##1416
|tip Inside the building.
turnin Elmore's Task##1097 |goto Stormwind City 59.72,33.77
accept Stormpike's Delivery##353 |goto Stormwind City 59.72,33.77
step
Follow the path |goto 66.35,34.17 < 20 |walk
Enter the Deeprun Tram |complete zone("Deeprun Tram") |goto 69.16,30.77 |q 433 |future
|tip Walk into the swirling portal.
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Stormwind City to Ironforge.
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
use Rat Catcher's Flute##17117
|tip Use it on Deeprun Rats around this area.
|tip They look like small grey rats on the ground around this area.
|tip In the Ironforge section of the Deeprun Tram.
Capture #5# Rats |q 6661/1
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
turnin Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
Enter Ironforge |complete zone("Ironforge") |q 433 |future
|tip Walk into the swirling portal.
step
Run up the stairs and enter the building |goto Ironforge 59.41,37.76 < 7 |walk
talk Daryl Riknussun##5159
|tip Inside the building.
Learn Cooking |skillmax Cooking,75 |goto Ironforge 60.08,36.43 |q 7321 |future
step
talk Gryth Thurden##1573
fpath Ironforge |goto Ironforge 55.50,47.75
step
Run up the stairs and enter the building |goto Ironforge 61.31,88.15 < 7 |walk
talk Buliwyf Stonehand##11865
|tip Inside the building.
|tip This will allow you to equip two-handed maces.
Train Two-Handed Maces |complete weaponskill("TH_MACE") > 0 |goto Ironforge 61.17,89.52
|only if Warrior
step
talk Bixi Wobblebonk##13084
|tip Inside the building.
|tip This will allow you to equip thrown weapons.
Train Thrown |complete weaponskill("THROWN") > 0 |goto 62.23,89.62
|only if Warrior
step
talk Brenwyn Wintersteel##5120
|tip Downstairs inside the building.
|tip If you can afford it.
buy Small Throwing Knife##2947 |n
Visit the Vendor |vendor Brenwyn Wintersteel##5120 |goto 62.37,88.68 |q 433 |future
|only if Warrior
step
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Foreman Stonebrow##1254
accept Those Blasted Troggs!##432 |goto 69.08,56.33
stickystart "Kill_Rockjaw_Skullthumpers"
step
Enter the cave |goto 70.70,56.49 < 20 |walk
kill 10 Rockjaw Bonesnapper##1117 |q 433/1 |goto 70.98,54.77
|tip Inside the cave.
step
label "Kill_Rockjaw_Skullthumpers"
kill 6 Rockjaw Skullthumper##1115 |q 432/1 |goto 70.70,56.49
|tip Inside and outside the cave.
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip Getting this far into level 10 will allow you to reach level 11 after turning in quests soon.
ding 10,6400 |goto 70.70,56.49
step
Leave the cave |goto 70.70,56.49 < 20 |walk |only if subzone("Gol'Bolar Quarry Mine")
Follow the path up |goto 67.86,57.69 < 20 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto 68.67,55.97
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto 69.08,56.33
step
talk Frast Dokner##1698
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Frast Dokner##1698 |goto 68.87,55.96
step
Follow the road |goto Dun Morogh 67.68,52.75 < 40 |only if walking and subzone("Gol'Bolar Quarry")
Follow the road and run through the tunnel |goto Dun Morogh 81.21,42.70 < 10 |only if walking and not subzone("North Gate Outpost")
talk Pilot Hammerfoot##1960
accept The Lost Pilot##419 |goto Dun Morogh 83.89,39.19
step
click A Dwarven Corpse
turnin The Lost Pilot##419 |goto 79.67,36.17
accept A Pilot's Revenge##417 |goto 79.67,36.17
step
kill Mangeclaw##1961
|tip He walks around this area.
collect Mangy Claw##3183 |q 417/1 |goto 78.31,37.76
step
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##417 |goto 83.89,39.19
step
Run through the tunnel |goto 84.42,31.02 < 10 |only if walking and not zone("Loch Modan")
Enter the building |goto Loch Modan 23.53,17.89 < 10 |walk
talk Gothor Brumn##1362
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Gothor Brumn##1362 |goto Loch Modan 24.13,18.21 |q 353
step
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
turnin Stormpike's Delivery##353 |goto 24.76,18.40
step
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto 33.94,50.95
step
Follow the road to this location and follow the path up |goto Dun Morogh 30.71,34.33 < 10 |only if walking
Continue up the path |goto Dun Morogh 31.06,32.56 < 7 |only if walking
Continue up the path |goto Dun Morogh 31.43,32.34 < 7 |only if walking
Continue up the path |goto Dun Morogh 31.14,30.50 < 7 |only if walking
Follow the path down |goto Dun Morogh 32.33,28.63 < 15 |only if walking
Follow the path |goto Dun Morogh 32.74,27.11 < 20 |only if walking
Jump to Your Death |havebuff 132331 |goto Eastern Kingdoms 44.92,51.98 |q 963 |future |notravel
|tip While you are in the Wetlands, keep running north and jump off the cliff.
|tip This is a much easier and faster way to reach Menethil Harbor.
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer Near Menethil Harbor |nobuff 132331 |goto Wetlands 11.72,43.30 |q 963 |future |zombiewalk
step
Enter Menethil Harbor |goto Wetlands 10.94,54.64 < 20 |only if walking
Enter the building |goto Wetlands 10.25,56.45 < 10 |walk
talk Neal Allen##1448
|tip Inside the building.
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
buy Bronze Tube##4371 |n
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
step
Leave the building |goto 10.25,56.45 < 10 |walk |only if subzone("Menethil Keep")
talk Shellei Brondir##1571
fpath Menethil Harbor |goto 9.49,59.69
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-11)\\Dwarf & Gnome Starter (1-11)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Dun Morogh",
condition_suggested=function() return (raceclass('Dwarf') or raceclass('Gnome')) and level <= 11 end,
condition_suggested_race=function() return (raceclass('Dwarf') or raceclass('Gnome')) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Darkshore (11-14)",
},[[
defaultfor Dwarf,Gnome
step
_NOTE:_
Save All Linen Cloth You Find
|tip As you quest in Elwynn Forest, save all Linen Cloth you find.
|tip Be careful not to accidentally sell them to a vendor.
|tip You will need ~70 Linen Cloth when you are level 10-11.
|tip You will use them to create your wand, which will be a powerful weapon for you.
|tip However, if you are confident you will be able to buy a wand from the Auction House (if this isn't a new or populated server), you can ignore this.
Click Here to Continue |confirm |q 364 |future
|only if Priest
step
talk Sten Stoutarm##658
accept Dwarven Outfitters##179 |goto Dun Morogh 29.87,71.87
step
Kill Wolf enemies around this area
collect 8 Tough Wolf Meat##750 |q 179/1 |goto 30.14,74.59
You can find more around [26.93,75.75]
step
talk Adlin Pridedrift##829
|tip Sell any items you don't need, to clear some bag space.
|tip Buy a couple of stacks of ammo.								|only if Hunter
Visit the Vendor |vendor Adlin Pridedrift##829 |goto 30.09,71.52 |q 179
step
talk Sten Stoutarm##658
turnin Dwarven Outfitters##179 |goto 29.87,71.87
accept Simple Rune##3106 |goto 29.87,71.87		|only Dwarf Warrior
accept Encrypted Rune##3109 |goto 29.87,71.87		|only Dwarf Rogue
accept Hallowed Rune##3110 |goto 29.87,71.87		|only Dwarf Priest
accept Consecrated Rune##3107 |goto 29.87,71.87		|only Dwarf Paladin
accept Etched Rune##3108 |goto 29.87,71.87		|only Dwarf Hunter
accept Glyphic Memorandum##3114 |goto 29.87,71.87	|only Gnome Mage
accept Simple Memorandum##3112 |goto 29.87,71.87	|only Gnome Warrior
accept Tainted Memorandum##3115 |goto 29.87,71.87	|only Gnome Warlock
accept Encrypted Memorandum##3113 |goto 29.87,71.87	|only Gnome Rogue
accept Coldridge Valley Mail Delivery##233 |goto 29.87,71.87
step
talk Balir Frosthammer##713
accept A New Threat##170 |goto 29.71,71.25
stickystart "Kill_Burly_Rockjaw_Troggs"
step
kill 6 Rockjaw Trogg##707 |q 170/1 |goto 30.65,74.94
step
label "Kill_Burly_Rockjaw_Troggs"
kill 6 Burly Rockjaw Trogg##724 |q 170/2 |goto 30.65,74.94
step
Kill enemies around this area
ding 3 |goto 30.65,74.94
step
talk Adlin Pridedrift##829
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Adlin Pridedrift##829 |goto 30.09,71.52 |q 170
step
talk Balir Frosthammer##713
turnin A New Threat##170 |goto 29.71,71.25
step
talk Talin Keeneye##714
turnin Coldridge Valley Mail Delivery##233 |goto 22.60,71.43
accept Coldridge Valley Mail Delivery##234 |goto 22.60,71.43
accept The Boar Hunter##183 |goto 22.60,71.43
step
kill 12 Small Crag Boar##708 |q 183/1 |goto 21.52,71.91
step
talk Talin Keeneye##714
turnin The Boar Hunter##183 |goto 22.60,71.43
step
Kill enemies around this area
|tip You should already be level 4, or pretty close.
|tip You are about to return to town, so it will be a good time to train your level 4 abilities.
ding 4 |goto 21.52,71.91
step
talk Grelin Whitebeard##786
turnin Coldridge Valley Mail Delivery##234 |goto 25.08,75.71
step
talk Nori Pridedrift##12738
accept Scalding Mornbrew Delivery##3364 |goto 24.98,75.96
step
talk Adlin Pridedrift##829
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Adlin Pridedrift##829 |goto 30.09,71.52 |q 3364
|only if Hunter
step
Enter the building |goto 28.79,69.05 < 10 |walk
talk Felix Whindlebolt##8416
|tip He walks around this area inside the building.
|tip Hurry, you have a timed quest.
accept A Refugee's Quandary##3361 |goto 28.51,67.67
step
talk Durnan Furcutter##836
|tip Inside the building.
turnin Scalding Mornbrew Delivery##3364 |goto 28.77,66.37
accept Bring Back the Mug##3365 |goto 28.77,66.37
step
talk Durnan Furcutter##836
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Durnan Furcutter##836 |goto 28.77,66.37 |q 3365
step
talk Thran Khorman##912
|tip Inside the building.
turnin Simple Rune##3106 |goto Dun Morogh 28.83,67.24
|only if Dwarf Warrior
step
talk Solm Hargrin##916
|tip Inside the building.
turnin Encrypted Rune##3109 |goto Dun Morogh 28.37,67.51
|only if Dwarf Rogue
step
talk Branstock Khalder##837
|tip Inside the building.
turnin Hallowed Rune##3110 |goto Dun Morogh 28.60,66.39
|only if Dwarf Priest
step
talk Bromos Grummner##926
|tip Inside the building.
turnin Consecrated Rune##3107 |goto Dun Morogh 28.83,68.33
|only if Dwarf Paladin
step
talk Thorgas Grimson##895
|tip Inside the building.
turnin Etched Rune##3108 |goto Dun Morogh 29.18,67.46
|only if Dwarf Hunter
step
talk Thran Khorman##912
|tip Inside the building.
turnin Simple Memorandum##3112 |goto Dun Morogh 28.83,67.24
|only if Gnome Warrior
step
talk Solm Hargrin##916
|tip Inside the building.
turnin Encrypted Memorandum##3113 |goto Dun Morogh 28.37,67.51
|only if Gnome Rogue
step
talk Marryk Nurribit##944
|tip Inside the building.
turnin Glyphic Memorandum##3114 |goto Dun Morogh 28.71,66.36
|only if Gnome Mage
step
talk Alamar Grimm##460
|tip Upstairs inside the building.
turnin Tainted Memorandum##3115 |goto Dun Morogh 28.65,66.14
accept Beginnings##1599 |goto Dun Morogh 28.65,66.14
|only if Gnome Warlock
step
Leave the building |goto Dun Morogh 28.79,69.07 < 10 |walk |only if subzone("Anvilmar")
talk Nori Pridedrift##12738
turnin Bring Back the Mug##3365 |goto Dun Morogh 24.98,75.96
step
talk Grelin Whitebeard##786
accept The Troll Cave##182 |goto 25.08,75.71
stickystart "Kill_Frostmane_Troll_Whelps"
step
Enter the cave |goto Dun Morogh 26.78,79.83 < 15 |walk
Follow the path |goto Dun Morogh 28.00,81.05 < 10 |walk
kill Frostmane Novice##946+
|tip Inside the cave.
|tip There's not very many of them, and they can be spread out inside the cave.
collect 3 Feather Charm##6753 |q 1599/1 |goto Dun Morogh 28.73,82.58
You can find more around: |notinsticky
[Dun Morogh 29.34,81.50]
[Dun Morogh 30.15,82.34]
[Dun Morogh 30.49,81.05]
|only if Gnome Warlock
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 28.73,82.58 |q 1599
|only if Gnome Warlock
stickystop "Kill_Frostmane_Troll_Whelps"
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 29.55,69.83 |q 1599 |zombiewalk
|only if Gnome Warlock
step
Enter the building |goto 28.79,69.05 < 10 |walk
talk Durnan Furcutter##836
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Durnan Furcutter##836 |goto 28.77,66.37 |q 1599
|only if Gnome Warlock
step
talk Alamar Grimm##460
|tip Upstairs inside the building.
turnin Beginnings##1599 |goto 28.65,66.14
|only if Gnome Warlock
step
Summon Your Imp |complete warlockpet("Imp") |q 218
|tip Use the "Summon Imp" ability.
|only if Gnome Warlock and not warlockpet("Imp")
stickystart "Kill_Frostmane_Troll_Whelps"
step
Leave the building |goto Dun Morogh 28.79,69.05 < 10 |walk |only if subzone("Anvilmar")
click Felix's Box
collect Felix's Box##10438 |q 3361/1 |goto Dun Morogh 20.88,76.07
step
click Felix's Chest
collect Felix's Chest##16313 |q 3361/2 |goto 22.78,80.00
step
click Felix's Bucket of Bolts
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto 26.33,79.27
step
label "Kill_Frostmane_Troll_Whelps"
kill 14 Frostmane Troll Whelp##706 |q 182/1 |goto Dun Morogh 26.78,79.83
|tip Inside and outside the cave. |notinsticky
You can find more outside the cave around: |notinsticky
[Dun Morogh 22.78,79.72]
[Dun Morogh 21.02,76.15]
step
Leave the cave |goto 26.78,79.83 < 15 |walk |only if subzone("Coldridge Valley") and _G.IsIndoors()
talk Grelin Whitebeard##786
turnin The Troll Cave##182 |goto 25.08,75.71
accept The Stolen Journal##218 |goto 25.08,75.71
step
Enter the cave |goto Dun Morogh 26.80,79.86 < 15 |walk
Follow the path |goto Dun Morogh 27.73,80.71 < 10 |walk
Follow the path down |goto Dun Morogh 28.13,80.11 < 10 |walk
Continue down the path |goto Dun Morogh 29.06,78.87 < 10 |walk
kill Grik'nir the Cold##808
|tip Inside the cave.
collect Grelin Whitebeard's Journal##2004 |q 218/1 |goto Dun Morogh 30.49,80.16
step
Leave the cave |goto 26.78,79.83 < 15 |walk |only if subzone("Coldridge Valley") and _G.IsIndoors()
talk Grelin Whitebeard##786
turnin The Stolen Journal##218 |goto 25.08,75.71
accept Senir's Observations##282 |goto 25.08,75.71
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip Getting this far into level 5 will allow you to reach level 6 when you turn in quests soon.
|tip This is important, so you can visit your class trainer before leaving the starter area.
ding 5,2600 |goto 26.78,79.83
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 26.78,79.83 |q 3361
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 29.55,69.83 |q 3361 |zombiewalk
step
Enter the building |goto 28.79,69.05 < 10 |walk
talk Felix Whindlebolt##8416
|tip He walks around this area inside the building.
turnin A Refugee's Quandary##3361 |goto 28.55,67.65
step
talk Rybrad Coldbank##945
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Rybrad Coldbank##945 |goto 28.66,67.74 |q 282
step
Leave the building |goto Dun Morogh 28.79,69.05 < 10 |walk |only if subzone("Anvilmar")
talk Adlin Pridedrift##829
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Adlin Pridedrift##829 |goto Dun Morogh 30.09,71.52 |q 3361
|only if Hunter
step
Leave the building |goto Dun Morogh 28.79,69.05 < 10 |walk |only if subzone("Anvilmar")
talk Mountaineer Thalos##1965
turnin Senir's Observations##282 |goto Dun Morogh 33.48,71.84
accept Senir's Observations##420 |goto Dun Morogh 33.48,71.84
step
talk Hands Springsprocket##6782
accept Supplies to Tannok##2160 |goto 33.85,72.24
stickystart "Collect_Chunks_Of_Boar_Meat"
stickystart "Collect_Crag_Boar_Ribs"
step
Enter the tunnel |goto Dun Morogh 34.12,71.51 < 10 |only if walking and subzone("Coldridge Pass")
Leave the tunnel and follow the road |goto Dun Morogh 35.67,65.93 < 10 |only if walking and subzone("Coldridge Pass")
talk Hegnar Rumbleshot##1243
|tip If you can afford it.
buy Ornate Blunderbuss##2509 |n
Visit the Vendor |vendor Hegnar Rumbleshot##1243 |goto Dun Morogh 40.68,65.13 |q 384 |future
|only if Hunter and itemcount(2509) == 0
step
Enter the tunnel |goto Dun Morogh 34.12,71.51 < 10 |only if walking and subzone("Coldridge Pass")
Leave the tunnel and follow the road |goto Dun Morogh 35.67,65.93 < 10 |only if walking and subzone("Coldridge Pass")
talk Senir Whitebeard##1252
turnin Senir's Observations##420 |goto Dun Morogh 46.73,53.83
stickystop "Collect_Chunks_Of_Boar_Meat"
stickystop "Collect_Crag_Boar_Ribs"
step
talk Ragnar Thunderbrew##1267
accept Beer Basted Boar Ribs##384 |goto 46.83,52.36
step
Enter the building |goto Dun Morogh 46.95,52.04 < 10 |walk
talk Tannok Frosthammer##6806
|tip Inside the building.
turnin Supplies to Tannok##2160 |goto Dun Morogh 47.22,52.19
step
talk Kreg Bilmn##1691
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Kreg Bilmn##1691 |goto 47.19,52.40 |q 384
step
talk Kreg Bilmn##1691
|tip Inside the building.
|tip If you afford it.
buy Balanced Throwing Dagger##25872 |n
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 400 |future
|only if Rogue
step
talk Maxan Anvol##1226
|tip Inside the building.
accept Garments of the Light##5625 |goto Dun Morogh 47.34,52.19
|only if Dwarf Priest
step
Leave the building |goto Dun Morogh 46.95,52.03 < 10 |walk |only if subzone("Thunderbrew Distillery")
Heal and Fortify Mountaineer Dolf |q 5625/1 |goto 45.81,54.57
|tip Target Mountaineer Dolf.
|tip First, cast your "Lesser Heal (Rank 2)" spell on him.
|tip Second, cast your "Power Word: Fortitude" spell on him.
|only if Dwarf Priest
step
Enter the building |goto 46.95,52.04 < 10 |walk
talk Maxan Anvol##1226
|tip Inside the building.
turnin Garments of the Light##5625 |goto 47.34,52.19
|only if Dwarf Priest
step
Leave the building |goto 46.95,52.03 < 10 |walk |only if subzone("Thunderbrew Distillery")
talk Tharek Blackstone##1872
accept Tools for Steelgrill##400 |goto 46.02,51.68
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Large Axe##2491 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 384
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Gladius##2488 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 384
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Wooden Mallet##2493 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 384
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Stiletto##2494 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 384
|only if Rogue and itemcount(2494) == 0
stickystart "Collect_Chunks_Of_Boar_Meat"
stickystart "Collect_Crag_Boar_Ribs"
step
talk Pilot Bellowfiz##1378
accept Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
step
talk Pilot Stonegear##1377
accept The Grizzled Den##313 |goto 49.62,48.61
step
talk Beldin Steelgrill##1376
turnin Tools for Steelgrill##400 |goto 50.44,49.09
step
talk Loslor Rudge##1694
accept Ammo for Rumbleshot##5541 |goto 50.08,49.42
step
label "Collect_Chunks_Of_Boar_Meat"
Kill Crag Boar enemies around this area
collect 4 Chunk of Boar Meat##769 |q 317/1 |goto 48.34,55.70 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[48.37,60.48]
[44.55,65.31]
[42.18,65.32]
step
label "Collect_Crag_Boar_Ribs"
Kill Crag Boar enemies around this area
collect 6 Crag Boar Rib##2886 |q 384/1 |goto 48.34,55.70 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[48.37,60.48]
[44.55,65.31]
[42.18,65.32]
step
label "Collect_Thick_Bear_Fur"
kill Young Black Bear+
collect 2 Thick Bear Fur##6952 |q 317/2 |goto 49.76,51.15
You can find more around: |notinsticky
[45.18,50.18]
[44.96,56.85]
[42.54,59.61]
[39.44,61.23]
step
click Ammo Crate
collect Rumbleshot's Ammo##13850 |q 5541/1 |goto 44.14,56.94
step
Kill Wendigo enemies around this area
|tip Inside and outside the cave.
|tip They respawn quickly, so you'll be better staying close to the cave entrance.
collect 8 Wendigo Mane##2671 |q 313/1 |goto 42.33,54.03
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip They respawn quickly, so you'll be better staying close to the cave entrance.
|tip You should already be level 7, or pretty close.
ding 7 |goto 42.33,54.03
step
Follow the path up |goto 40.60,62.56 < 30 |only if walking
talk Hegnar Rumbleshot##1243
turnin Ammo for Rumbleshot##5541 |goto 40.68,65.13
step
talk Hegnar Rumbleshot##1243
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Hegnar Rumbleshot##1243 |goto 40.68,65.13 |q 312 |future
step
talk Hegnar Rumbleshot##1243
|tip If you can afford it.
buy Ornate Blunderbuss##2509 |n
Visit the Vendor |vendor Hegnar Rumbleshot##1243 |goto Dun Morogh 40.68,65.13 |q 312 |future
|only if Hunter and itemcount(2509) == 0
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto Dun Morogh 42.77,65.72 |q 313
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 47.05,55.10 |q 313 |zombiewalk
step
talk Senir Whitebeard##1252
accept Frostmane Hold##287 |goto 46.73,53.83
step
Enter the building |goto 46.95,52.04 < 10 |walk
talk Innkeeper Belm##1247
|tip Inside the building.
buy Rhapsody Malt##2894 |q 384/2 |goto 47.38,52.52
step
talk Kreg Bilmn##1691
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Kreg Bilmn##1691 |goto 47.19,52.40 |q 384
step
Leave the building |goto 46.95,52.04 < 10 |walk |only if subzone("Thunderbrew Distillery")
talk Ragnar Thunderbrew##1267
turnin Beer Basted Boar Ribs##384 |goto 46.83,52.36
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Large Axe##2491 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 317
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Gladius##2488 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 317
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Wooden Mallet##2493 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 317
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Stiletto##2494 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 317
|only if Rogue and itemcount(2494) == 0
step
talk Pilot Bellowfiz##1378
turnin Stocking Jetsteam##317 |goto Dun Morogh 49.43,48.41
accept Evershine##318 |goto Dun Morogh 49.43,48.41
step
talk Pilot Stonegear##1377
turnin The Grizzled Den##313 |goto 49.62,48.61
step
Kill enemies around this area
|tip We are getting to level 8 now, so you can learn your level 8 abilities in town before going to quest more.
ding 8 |goto 48.16,50.08
You can find more around: |notinsticky
[50.39,51.50]
[48.21,56.76]
step
Enter the building |goto Dun Morogh 46.95,52.05 < 10 |walk
talk Kreg Bilmn##1691
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it, and you need more bag space, buy bags.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 412 |future
step
talk Thamner Pol##2326
|tip Inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto 47.18,52.61
step
_NOTE:_
Create Bandages in Downtime
|tip While you wait for boats or trams, it's a good time to make bandages and increase your First Aid skill.
|tip You'll need higher skill to make better bandages later, so make sure to level it up as you go.
|tip Keep bandages on hand for another way to heal yourself.
Click Here to Continue |confirm |q 412 |future
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Large Axe##2491 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412 |future
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Gladius##2488 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412 |future
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Wooden Mallet##2493 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412 |future
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Stiletto##2494 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412 |future
|only if Rogue and itemcount(2494) == 0
step
Enter the building |goto Dun Morogh 45.97,48.83 < 10 |walk
talk Razzle Sprysprocket##1269
|tip Inside the building.
accept Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
Follow the path |goto 39.61,48.01 < 40 |only if walking
Follow the path up |goto 36.01,51.96 < 15 |only if walking
talk Tundra MacGrann##1266
|tip On top of the mountain.
|tip As you travel to him, be careful to avoid the elite yeti that walks around this area.
accept Tundra MacGrann's Stolen Stash##312 |goto 34.57,51.65
step
Enter the cave |goto 37.80,53.69 < 20 |walk
click MacGrann's Meat Locker
|tip Inside the cave.
|tip Wait for the elite yeti to leave the cave and walk away before you enter the cave.
collect MacGrann's Dried Meats##2667 |q 312/1 |goto 38.51,53.93
|tip He runs back quickly after he walks down the path a bit.
|tip Try to get into the cave as quick as you can when he leaves it, to give yourself time to run back out safely.
|tip If he attacks you as you leave the cave, just run away.
step
Follow the path up |goto 36.01,51.96 < 15 |only if walking
talk Tundra MacGrann##1266
|tip On top of the mountain.
|tip As you travel to him, be careful to avoid the elite yeti that walks around this area.
turnin Tundra MacGrann's Stolen Stash##312 |goto 34.57,51.65
step
talk Rejold Barleybrew##1374
turnin Evershine##318 |goto 30.19,45.73
accept A Favor for Evershine##319 |goto 30.19,45.73
accept The Perfect Stout##315 |goto 30.19,45.73
step
talk Marleth Barleybrew##1375
accept Bitter Rivals##310 |goto 30.19,45.53
step
talk Burdrak Harglhelm##3162
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Burdrak Harglhelm##3162 |goto 30.11,45.28 |q 310
step
Follow the path up |goto 38.44,42.11 < 15 |only if walking
kill Frostmane Seer##1397+
click Shimmerweed Basket+
|tip They look like tan wooden baskets on the ground around this area.
collect 6 Shimmerweed##2676 |q 315/1 |goto 40.09,42.44
You can find more around [41.81,35.62]
stickystart "Kill_Elder_Crag_Boars"
stickystart "Kill_Snow_Leopards"
step
kill 6 Ice Claw Bear##1196 |q 319/1 |goto 37.90,42.59
You can find more around: |notinsticky
[34.50,31.74]
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
label "Kill_Elder_Crag_Boars"
kill 8 Elder Crag Boar##1127 |q 319/2 |goto 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
label "Kill_Snow_Leopards"
kill 8 Snow Leopard##1201 |q 319/3 |goto 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
Allow Enemies to Kill You
|tip You can do this anywhere near Brewnall Village, it doesn't have to be at this exact location.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 30.71,39.90 |q 319
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 47.05,55.10 |q 319 |zombiewalk
step
Enter the building |goto 46.95,52.05 < 10 |walk
talk Kreg Bilmn##1691
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it, and you need more bag space, buy bags.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Kreg Bilmn##1691 |goto 47.19,52.40 |q 319
step
talk Innkeeper Belm##1247
|tip Inside the building.
home Thunderbrew Distillery |goto 47.38,52.52
step
talk Innkeeper Belm##1247
|tip Inside the building.
buy Thunder Ale##2686 |goto 47.38,52.52 |q 310
step
talk Jarven Thunderbrew##1373
|tip Downstairs inside the building.
accept Distracting Jarven##308 |goto 47.64,52.66
|only if haveq(310)
step
click Unguarded Thunder Ale Barrel
|tip Downstairs inside the building.
|tip It may take a moment for it to become Unguarded.
turnin Bitter Rivals##310 |goto 47.70,52.69
accept Return to Marleth##311 |goto 47.70,52.69
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Large Axe##2491 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 319
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Gladius##2488 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 319
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Wooden Mallet##2493 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 319
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Stiletto##2494 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 319
|only if Rogue and itemcount(2494) == 0
step
Follow the path |goto Dun Morogh 41.90,47.23 < 40 |only if walking
talk Marleth Barleybrew##1375
turnin Return to Marleth##311 |goto Dun Morogh 30.19,45.53
step
talk Rejold Barleybrew##1374
turnin A Favor for Evershine##319 |goto 30.19,45.73
accept Return to Bellowfiz##320 |goto 30.19,45.73
turnin The Perfect Stout##315 |goto 30.19,45.73
accept Shimmer Stout##413 |goto 30.19,45.73
step
talk Burdrak Harglhelm##3162
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Burdrak Harglhelm##3162 |goto 30.11,45.28 |q 413
step
Kill enemies around this area
|tip You should already be level 9, or very pretty.
|tip You are about to have to complete some quests that can be difficult, so being a level higher will help.
ding 9 |goto 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
stickystart "Kill_Frostmane_Headhunters"
step
Enter the cave |goto 24.84,50.89 < 20 |walk
Follow the path  down |goto 22.61,50.53 < 20 |walk
Fully Explore Frostmane Hold |q 287/2 |goto 22.79,52.10
|tip Inside the cave.
step
label "Kill_Frostmane_Headhunters"
Follow the path up |goto 21.78,50.47 < 20 |walk
kill 5 Frostmane Headhunter##1123 |q 287/1 |goto 24.87,50.90
|tip Inside and outside the cave.
stickystart "Collect_Gyromechanic_Gears"
step
Leave the cave |goto 25.07,50.99 < 20 |walk |only if subzone("Frostmane Hold") and _G.IsIndoors()
kill Leper Gnome##1211+
collect 8 Restabilization Cog##3083 |q 412/1 |goto 25.64,43.33
step
label "Collect_Gyromechanic_Gears"
kill Leper Gnome##1211+
collect 8 Gyromechanic Gear##3084 |q 412/2 |goto 25.64,43.33
step
Kill enemies around this area
|tip Getting this far into level 9 will allow you to reach level 10 after turning in quests soon.
|tip You will return to town soon, so it will be a good time to learn your level 10 abilities.
ding 9,4300 |goto 26.36,47.69
You can find more around: |notinsticky
[29.93,42.60]
step
Follow the path up |goto 30.71,34.33 < 10 |only if walking
Continue up the path |goto 31.06,32.56 < 7 |only if walking
Continue up the path |goto 31.43,32.34 < 7 |only if walking
Continue up the path |goto 31.14,30.50 < 7 |only if walking
Follow the path down |goto 32.33,28.63 < 15 |only if walking
Follow the path |goto 32.74,27.11 < 20 |only if walking
Jump to Your Death |havebuff 132331 |goto Eastern Kingdoms 44.92,51.98 |q 963 |future |notravel
|tip While you are in the Wetlands, keep running north and jump off the cliff.
|tip This is a much easier and faster way to reach Menethil Harbor.
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer Near Menethil Harbor |nobuff 132331 |goto Wetlands 11.72,43.30 |q 963 |future |zombiewalk
step
Enter Menethil Harbor |goto Wetlands 10.94,54.64 < 20 |only if walking
Enter the building |goto Wetlands 10.25,56.45 < 10 |walk
talk Neal Allen##1448
|tip Inside the building.
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
buy Bronze Tube##4371 |n
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
step
Leave the building |goto 10.25,56.45 < 10 |walk |only if subzone("Menethil Keep")
talk Shellei Brondir##1571
fpath Menethil Harbor |goto 9.49,59.69
step
talk Kreg Bilmn##1691
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it, and you need more bag space, buy bags.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Kreg Bilmn##1691 |goto Dun Morogh 47.19,52.40 |q 412
step
Leave the building |goto 46.95,52.05 < 10 |walk |only if subzone("Thunderbrew Distillery")
talk Senir Whitebeard##1252
turnin Frostmane Hold##287 |goto 46.73,53.82
accept The Reports##291 |goto 46.73,53.82
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Large Axe##2491 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412
|only if Dwarf Warrior and itemcount(2491) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Gladius##2488 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412
|only if Gnome Warrior and itemcount(2488) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Wooden Mallet##2493 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412
|only if Paladin and itemcount(2493) == 0
step
Enter the building |goto Dun Morogh 45.74,51.84 < 10 |walk
talk Grawn Thromwyn##1273
|tip Inside the building.
|tip If you can afford it.
buy Stiletto##2494 |n
Visit the Vendor |vendor Grawn Thromwyn##1273 |goto Dun Morogh 45.29,52.19 |q 412
|only if Rogue and itemcount(2494) == 0
step
Enter the building |goto Dun Morogh 45.97,48.84 < 10 |walk
talk Razzle Sprysprocket##1269
|tip Inside the building.
turnin Operation Recombobulation##412 |goto Dun Morogh 45.85,49.37
step
Leave the building |goto 45.97,48.85 < 10 |walk
talk Pilot Bellowfiz##1378
turnin Return to Bellowfiz##320 |goto 49.43,48.41
step
_NOTE:_
You Have Access to Stronger Ammo
|tip Now that you're level 10, you can purchase stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 10 ammo.
Click Here to Continue |confirm |q 6062 |future
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
accept Taming the Beast##6064 |goto Dun Morogh 45.81,53.03
|only if Dwarf Hunter
step
use the Taming Rod##15911
|tip Use it on a Large Crag Boar around this area.
Tame a Large Crag Boar |q 6064/1 |goto 48.26,56.81
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6064 |goto 45.81,53.04
accept Taming the Beast##6084 |goto 45.81,53.04
|only if Dwarf Hunter
step
use the Taming Rod##15913
|tip Use it on a Snow Leopard around this area.
Tame a Snow Leopard |q 6084/1 |goto 48.68,58.93
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6084 |goto 45.81,53.04
accept Taming the Beast##6085 |goto 45.81,53.04
|only if Dwarf Hunter
step
use the Taming Rod##15908
|tip Use it on an Ice Claw Bear around this area.
Tame an Ice Claw Bear |q 6085/1 |goto 49.06,62.12
You can usaully find another one around [50.11,53.57]
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6085 |goto 45.81,53.04
accept Training the Beast##6086 |goto 45.81,53.04
|only if Dwarf Hunter
step
Follow the path up |goto 47.25,41.65 < 30 |only if walking
Enter the building |goto Ironforge 66.34,82.50 < 10 |walk
talk Belia Thundergranite##10090
|tip Inside the building.
turnin Training the Beast##6086 |goto Ironforge 70.87,85.80
|only if Dwarf Hunter
step
_NOTE:_
You Can Now Train Your Pet
|tip Learn pet abilities from Pet Trainers.
|tip Use your "Beast Training" ability to teach your pet abilities.
Click Here to Continue |confirm |q 413
|only if Dwarf Hunter
step
talk Sognar Cliffbeard##5124
|tip He walks around this area.
buy Tough Jerky##117 |n
|tip Buy 20-40, whatever you have money and bag space for.
|tip This will be used to feed your permanent pet soon and keep it Happy, so it deals more damage and gains Loyalty faster.
|tip By keeping your pet Happy and ranking up its Loyalty, it won't run away and abandon you, and will need food less often to stay Happy.
Visit the Vendor |vendor Sognar Cliffbeard##5124 |goto 60.54,78.45 |q 413
|only if Dwarf Hunter
step
_NOTE:_
Tame an Ice Claw Bear
|tip Use your "Tame Beast" ability on an Ice Claw Bear.
|tip They look like brown bears around this area.
Click Here to Continue |confirm |goto Dun Morogh 51.10,43.11 |q 413
|only if Dwarf Hunter
step
Run up the stairs and enter the building |goto Ironforge 61.32,88.18 < 7 |walk
talk Buliwyf Stonehand##11865
|tip Inside the building.
|tip This will allow you to equip two-handed maces.								|only if Dwarf Warrior
|tip This will allow you to equip two-handed axes and two-handed maces.						|only if Gnome Warrior
Train Two-Handed Axes |complete weaponskill("TH_AXE") > 0 |goto Ironforge 61.17,89.52				|only if Gnome Warrior
Train Two-Handed Maces |complete weaponskill("TH_MACE") > 0 |goto Ironforge 61.17,89.52
|only if Warrior
step
talk Kelomir Ironhand##5121
|tip Inside the building.
|tip If you can afford it.
buy Giant Mace##1197 |n
Visit the Vendor |vendor Kelomir Ironhand##5121 |goto 62.55,88.71 |q 433 |future
|only if Warrior and itemcount(1197) == 0
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Priest"	|or	|q 433 |future
No, I Already Have a Wand	|confirm	|next "Skip_Wand_Priest"	|or	|q 433 |future
|only if Dwarf Priest
step
label "Create_Wand_Priest"
collect 70 Linen Cloth##2589 |q 433 |future
|tip You are about to create your wand.
|tip If you need more Linen Cloth, try to buy some from the Auction House.
|only if Dwarf Priest
step
Enter the building |goto Ironforge 43.84,29.66 < 10 |walk
talk Uthrar Threx##1703
|tip Inside the building.
Learn Tailoring |skillmax Tailoring,75 |goto Ironforge 43.82,27.86 |q 433 |future
|only if Dwarf Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 35 Bolts of Linen Cloth.
collect 35 Bolt of Linen Cloth##2996 |q 433 |future
|only if Dwarf Priest
step
talk Poranna Snowbraid##5154
|tip Inside the building.
buy 10 Coarse Thread##2320 |goto 42.94,28.31 |q 433 |future
|only if Dwarf Priest
step
talk Uthrar Threx##1703
|tip Inside the building.
learn Brown Linen Robe##7623 |goto 43.82,27.86 |q 433 |future
|only if Dwarf Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 10 Brown Linen Robes.
|tip You are about to learn Enchanting and disenchant these.
collect 10 Brown Linen Robe##6238 |q 433 |future
|only if Dwarf Priest
step
Enter the building |goto 59.73,44.08 < 10 |walk
talk Gimble Thistlefuzz##5157
|tip Upstairs inside the building.
Learn Enchanting |skillmax Enchanting,75 |goto 59.77,45.45 |q 433 |future
|only if Dwarf Priest
step
Disenchant the Brown Linen Robes
|tip Use the "Disenchant" ability in the General tab of your spellbook.
|tip If you don't get one of these items from disenchanting, talk to Tilli Thistlefuzz here and try to buy it.
|tip They are limited supply items, so it may not be available to buy.
|tip You can also try to buy it from the Auction House.
collect Strange Dust##10940 |goto 61.03,44.00 |q 433 |future
collect 2 Lesser Magic Essence##10938 |goto 61.03,44.00 |q 433 |future
|only if Dwarf Priest
step
talk Tilli Thistlefuzz##5158
|tip Inside the building.
buy Copper Rod##6217 |goto 61.03,44.00 |q 433 |future
buy Simple Wood##4470 |goto 61.03,44.00 |q 433 |future
|only if Dwarf Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Runed Copper Rod.
collect Runed Copper Rod##6218 |q 433 |future
|only if Dwarf Priest
step
talk Gimble Thistlefuzz##5157
|tip Upstairs inside the building.
learn Lesser Magic Wand##14293 |goto 59.77,45.45 |q 433 |future
|only if Dwarf Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Lesser Magic Wand.
collect Lesser Magic Wand##11287 |q 433 |future
|only if Dwarf Priest
step
Follow the path up |goto Dun Morogh 47.20,41.70 < 20 |only if walking and not zone("Ironforge")
talk Lago Blackwrench##6120
accept The Slaughtered Lamb##1715 |goto Ironforge 47.63,9.26
|only if Gnome Warlock
step
Follow the path |goto 72.82,50.18 < 20 |walk
Enter the Deeprun Tram |condition subzone("Deeprun Tram") |goto 76.58,51.14 |q 6661
|tip Walk into the swirling portal.
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Deeprun Rat Roundup##6661
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
use Rat Catcher's Flute##17117
|tip Use it on Deeprun Rats around this area.
|tip They look like small grey rats on the ground around this area.
|tip In the Ironforge section of the Deeprun Tram.
Capture #5# Rats |q 6661/1
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
turnin Deeprun Rat Roundup##6661
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Watch the dialogue
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Me Brother, Nipsy##6662
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Ironforge to Stormwind City.
talk Nipsy##13018
|tip On the middle platform, near the wall.
|tip In the Stormwind City section of the Deeprun Tram.
turnin Me Brother, Nipsy##6662
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Enter Stormwind City |complete zone("Stormwind City") |q 1715
|tip Walk into the swirling portal.
|only if Gnome Warlock
step
Enter the building |goto Stormwind City 42.24,81.82 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin The Slaughtered Lamb##1715 |goto Stormwind City 39.22,85.22
accept Surena Caledon##1688 |goto Stormwind City 39.22,85.22
|only Gnome Warlock
step
Leave the building |goto 42.24,81.82 < 10 |walk |only if subzone("The Slaughtered Lamb")
Enter the building |goto 61.03,74.67 < 10 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
home Stormwind City |goto 60.39,75.28
|only if Gnome Warlock
step
Enter the building |goto Elwynn Forest 70.93,80.43 < 10 |walk
talk Surena Caledon##881
|tip Inside the building.
collect Surena's Choker##6810 |q 1688/1 |goto Elwynn Forest 71.02,80.78
|only if Gnome Warlock
step
Enter the building |goto Stormwind City 42.24,81.82 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Surena Caledon##1688 |goto Stormwind City 39.22,85.22
accept The Binding##1689 |goto Stormwind City 39.22,85.22
|only Gnome Warlock
step
use the Bloodstone Choker##6928
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Voidwalker##5676 |q 1689/1 |goto 39.08,84.39
|only if Gnome Warlock
step
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1689 |goto 39.22,85.22
|only if Gnome Warlock
step
_NOTE:_
Create Soul Shards
|tip As you follow the guide, use your "Drain Soul" spell as you kill an enemy to get a Soul Shard.
|tip Once you have a Soul Shard, use your "Summon Voidwalker" ability to summon your voidwalker.
|tip It will tank enemies for you, making it easier to kill enemies.
Click Here to Continue |confirm |q 433 |future
|only if Gnome Warlock
step
Leave the building |goto 42.24,81.82 < 10 |c |q 433 |future
|only if Gnome Warlock and subzone("The Slaughtered Lamb")
step
label "Skip_Wand_Priest"
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Frast Dokner##1698
|tip He walks around this area.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Frast Dokner##1698 |goto 68.87,55.96 |q 433
step
talk Foreman Stonebrow##1254
accept Those Blasted Troggs!##432 |goto 69.08,56.33
stickystart "Kill_Rockjaw_Skullthumpers"
stickystart "Collect_Linen_Cloth_Priest"
stickystart "Collect_Linen_Cloth_Paladin"
step
Enter the cave |goto 70.70,56.49 < 20 |walk
kill 10 Rockjaw Bonesnapper##1117 |q 433/1 |goto 70.98,54.77
|tip Inside the cave.
step
label "Kill_Rockjaw_Skullthumpers"
kill 6 Rockjaw Skullthumper##1115 |q 432/1 |goto 70.70,56.49
|tip Inside and outside the cave.
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip Getting this far into level 10 will allow you to reach level 11 after turning in quests soon.
|tip There aren't enough quests to reach level 11 naturally in Dun Morogh.
|tip This is a longer grind, but is still much faster than traveling far to another zone, like Elwynn Forest, to complete quests.
|tip Being level 11 will allow you to be able to more comfortably complete quests in Loch Modan, which is a much closer zone.
|tip Also, a lot of grey and green weapons drop from these enemies, so grinding them will get you a lot of money to use for weapon upgrades, learning abilities, and buying bags.
ding 10,6400 |goto 70.70,56.49
You can sell items at Frast Dokner who walks around [68.87,55.96]
step
label "Collect_Linen_Cloth_Priest"
Kill enemies around this area
|tip Inside and outside the cave.
|tip You are collecting these to make your wand soon.
collect 70 Linen Cloth##2589 |goto 70.70,56.49 |q 291 |future
|tip Be careful not to accidentally sell these to a vendor.
|only if Priest
step
label "Collect_Linen_Cloth_Paladin"
Kill enemies around this area
|tip Inside and outside the cave.
|tip You will need these soon for a Paladin class quest.
collect 10 Linen Cloth##2589 |goto 70.70,56.49 |q 1648 |future
|tip Be careful not to accidentally sell these to a vendor.
|only if Paladin
step
Leave the cave |goto Dun Morogh 70.70,56.49 < 20 |walk |only if subzone("Gol'Bolar Quarry Mine")
Follow the path up |goto Dun Morogh 67.86,57.69 < 20 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto 69.08,56.33
step
talk Frast Dokner##1698
|tip He walks around this area.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Frast Dokner##1698 |goto 68.87,55.96 |q 419 |future
step
talk Cook Ghilm##1355
|tip He walks around this area.
Learn Cooking |skillmax Cooking,75 |goto 68.38,54.49 |q 419 |future
step
Follow the road |goto Dun Morogh 67.68,52.75 < 40 |only if walking and subzone("Gol'Bolar Quarry")
Follow the road and run through the tunnel |goto Dun Morogh 81.21,42.70 < 10 |only if walking and not subzone("North Gate Outpost")
talk Pilot Hammerfoot##1960
accept The Lost Pilot##419 |goto Dun Morogh 83.89,39.19
step
click A Dwarven Corpse
turnin The Lost Pilot##419 |goto 79.67,36.17
accept A Pilot's Revenge##417 |goto 79.67,36.17
step
kill Mangeclaw##1961
|tip He walks around this area.
collect Mangy Claw##3183 |q 417/1 |goto 78.31,37.76
step
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##417 |goto 83.89,39.19
step
Run through the tunnel |goto 84.42,31.02 < 10 |only if walking and not zone("Loch Modan")
Enter the building |goto Loch Modan 23.53,17.89 < 10 |walk
talk Gothor Brumn##1362
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Gothor Brumn##1362 |goto Loch Modan 24.13,18.21 |q 291
step
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto 33.94,50.95
step
Enter the building |goto Loch Modan 37.18,47.09 < 7 |walk
talk Brock Stoneseeker##1681
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
accept Honor Students##6387 |goto Loch Modan 37.02,47.81
|only if Dwarf or Gnome
step
talk Thorgrum Borrelson##1572
turnin Honor Students##6387 |goto 33.94,50.95
accept Ride to Ironforge##6391 |goto 33.94,50.95
|only if Dwarf or Gnome
step
Follow the path |goto Ironforge 44.58,49.54 < 10 |walk
talk Senator Barin Redstone##1274
turnin The Reports##291 |goto Ironforge 39.55,57.49
step
Run up the stairs and enter the building |goto Ironforge 49.59,28.51 < 7 |walk
talk Golnir Bouldertoe##4256
|tip Downstairs inside the building.
turnin Ride to Ironforge##6391 |goto Ironforge 51.52,26.30
accept Gryth Thurden##6388 |goto Ironforge 51.52,26.30
|only if Dwarf or Gnome
step
Enter the building |goto Ironforge 27.30,12.45 < 15 |walk
talk Brandur Ironhammer##5149
|tip Inside the building.
accept Tome of Divinity##2999 |goto Ironforge 23.12,6.14
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin Tome of Divinity##2999 |goto 27.64,12.19
accept The Tome of Divinity##1645 |goto 27.64,12.19 |instant
|only if Dwarf Paladin
step
use the Tome of Divinity##6916
accept The Tome of Divinity##1646
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1646 |goto 27.64,12.19
accept The Tome of Divinity##1647 |goto 27.64,12.19
|only if Dwarf Paladin
step
map Ironforge
path follow strictbounce; loop off; ants straight; dist 20; markers none
path	21.75,51.75	21.97,54.66	22.70,58.39	23.32,61.81	23.72,63.80
path	25.81,67.98	27.55,71.41	31.72,78.27	36.24,81.32	39.82,83.22
path	42.92,84.10
talk John Turner##6175
|tip He walks around this area in a large path.
turnin The Tome of Divinity##1647
accept The Tome of Divinity##1648
|only if Dwarf Paladin
step
map Ironforge
path follow strictbounce; loop off; ants straight; dist 20; markers none
path	21.75,51.75	21.97,54.66	22.70,58.39	23.32,61.81	23.72,63.80
path	25.81,67.98	27.55,71.41	31.72,78.27	36.24,81.32	39.82,83.22
path	42.92,84.10
talk John Turner##6175
|tip He walks around this area in a large path.
|tip You should already have 10 Linen Cloth from earlier in the guide.
turnin The Tome of Divinity##1648
accept The Tome of Divinity##1778
|only if Dwarf Paladin
step
Enter the building |goto 27.30,12.45 < 15 |walk
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1778 |goto 27.64,12.19
accept The Tome of Divinity##1779 |goto 27.64,12.19
|only if Dwarf Paladin
step
talk Muiredon Battleforge##6178
|tip Upstairs inside the building.
turnin The Tome of Divinity##1779 |goto 23.53,8.29
accept The Tome of Divinity##1783 |goto 23.53,8.29
|only if Dwarf Paladin
step
talk Gryth Thurden##1573
turnin Gryth Thurden##6388 |goto Ironforge 55.51,47.74
|only if Dwarf or Gnome
step
use the Symbol of Life##6866
|tip Use it on Narm Faulk's corpse.
|tip This will resurrect him and allow you to talk to him.
Watch the dialogue
talk Narm Faulk##6177
turnin The Tome of Divinity##1783 |goto Dun Morogh 78.32,58.09
accept The Tome of Divinity##1784 |goto Dun Morogh 78.32,58.09
|only if Dwarf Paladin
step
kill Dark Iron Spy##6123+
collect Dark Iron Script##6847 |q 1784/1 |goto 77.39,61.27
|only if Dwarf Paladin
step
Enter the building |goto Ironforge 27.30,12.45 < 15 |only if walking
talk Muiredon Battleforge##6178
|tip Upstairs inside the building.
turnin The Tome of Divinity##1784 |goto Ironforge 23.53,8.29
accept The Tome of Divinity##1785 |goto Ironforge 23.53,8.29
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1785 |goto 27.64,12.19
|only if Dwarf Paladin
step
Follow the path |goto Ironforge 72.82,50.18 < 20 |walk
Enter the Deeprun Tram |condition subzone("Deeprun Tram") |goto Ironforge 76.97,51.25 |c |q 1338 |future
|tip Walk into the swirling portal.
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
use Rat Catcher's Flute##17117
|tip Use it on Deeprun Rats around this area.
|tip They look like small grey rats on the ground around this area.
|tip In the Ironforge section of the Deeprun Tram.
Capture #5# Rats |q 6661/1
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
turnin Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
Watch the dialogue
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Me Brother, Nipsy##6662
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Ironforge to Stormwind City.
talk Nipsy##13018
|tip On the middle platform, near the wall.
|tip In the Stormwind City section of the Deeprun Tram.
turnin Me Brother, Nipsy##6662
step
_Inside Deeprun Tram:_
Enter Stormwind City |complete zone("Stormwind City") |q 1338 |future
|tip Walk into the swirling portal.
step
Run through the doorway |goto Stormwind City 77.63,64.33 < 10 |only if walking
Enter the building |goto Stormwind City 80.03,61.68 < 10 |walk
talk Ilsa Corbin##5480
|tip Upstairs inside the building.
accept A Warrior's Training##1638 |goto Stormwind City 80.41,59.80
|only if (Dwarf or Gnome) and Warrior
step
Leave the Command Center |goto 77.63,64.33 < 10 |walk |only if subzone("Command Center")
Enter the building |goto 75.13,55.30 < 10 |walk
talk Harry Burlguard##6089
|tip Inside the building.
turnin A Warrior's Training##1638 |goto 77.13,53.26
accept Bartleby the Drunk##1639 |goto 77.13,53.26
|only if (Dwarf or Gnome) and Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Bartleby the Drunk##1639 |goto 76.77,52.54
accept Beat Bartleby##1640 |goto 76.77,52.54
|tip He will attack you immediately after you accept this quest.
|only if (Dwarf or Gnome) and Warrior
step
kill Bartleby##6090
|tip He walks around this area inside the building.
|tip He will eventually surrender.
Beat Bartleby |q 1640/1 |goto 76.77,52.54
|only if (Dwarf or Gnome) and Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Beat Bartleby##1640 |goto 76.77,52.54
accept Bartleby's Mug##1665 |goto 76.77,52.54
|only if (Dwarf or Gnome) and Warrior
step
talk Harry Burlguard##6089
|tip Inside the building.
turnin Bartleby's Mug##1665 |goto 77.13,53.26
|only if (Dwarf or Gnome) and Warrior
step
Enter the building |goto Stormwind City 63.52,69.09 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to equip two-handed swords and staves.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 63.88,69.09
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 63.88,69.09
|only if Warrior
step
Enter the building |goto Stormwind City 63.52,69.09 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to equip two-handed swords.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 63.88,69.09
|only if Paladin
step
Enter the building |goto Stormwind City 63.52,69.09 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to equip one-handed swords.
Train One-Handed Swords |complete weaponskill("SWORD") > 0 |goto Stormwind City 63.88,69.09
|only if Rogue
step
talk Gunther Weller##1289
|tip Inside the building.
|tip If you can afford it.
buy Cutlass##851 |n
Visit the Vendor |vendor Gunther Weller##1289 |goto 64.21,68.60 |q 3524 |future
|only if Rogue
step
Enter the building |goto Elwynn Forest 42.95,65.64 < 10 |walk
talk Priestess Josetta##377
|tip Upstairs inside the building.
accept Desperate Prayer##5637 |goto Elwynn Forest 43.29,65.72
|only if Human Priest
step
Enter the building |goto Stormwind City 52.97,51.07 < 10 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Desperate Prayer##5635 |goto Stormwind City 49.53,44.56
|only if Dwarf Priest
step
Enter the building |goto 63.52,69.09 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto 63.88,69.09
|only if Dwarf Priest
step
Enter the building |goto Stormwind City 63.52,69.09 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use one-handed swords.
Train One-Handed Swords |complete weaponskill("SWORD") > 0 |goto Stormwind City 63.88,69.09
|only if Mage
step
Enter the building |goto Stormwind City 63.52,69.09 < 10 |walk
talk Woo Ping##11867
|tip Inside the building.
|tip This will allow you to use staves and one-handed swords.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Stormwind City 63.88,69.09
Train One-Handed Swords |complete weaponskill("SWORD") > 0 |goto Stormwind City 63.88,69.09
|only if Warlock
step
Enter the building |goto 52.69,76.29 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
|tip If you can afford it.
buy Smoldering Wand##5208 |n
|tip You can't use it until level 15, but it will be a nice upgrade immediately once you reach level 15 soon.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto 52.82,74.86 |q 1338
|only if Warlock and itemcount(5208) == 0
step
Run up the ramp and follow the path |goto Stormwind City 67.95,72.63 < 15 |only if walking
talk Dungar Longdrink##352
|tip Inside the building.
fpath Stormwind |goto Stormwind City 70.95,72.51
step
Run up the stairs and enter the building |goto Ironforge 61.32,88.18 < 7 |walk
talk Bixi Wobblebonk##13084
|tip Inside the building.
|tip This will allow you to equip thrown weapons.
Train Thrown |complete weaponskill("THROWN") > 0 |goto Ironforge 62.23,89.62
|only if Warrior
step
Enter the building |goto Wetlands 10.25,56.45 < 10 |walk
talk Neal Allen##1448
|tip Inside the building.
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
buy Bronze Tube##4371 |n
|tip This item is needed for a quest later on in Duskwood.
|tip Don't buy this, if you already bought one earlier in the guide.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
|only if itemcount(4371) == 0
step
talk Vesprystus##3838
fpath Rut'theran Village |goto Teldrassil 58.40,94.02
|only if Hunter
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use bows.
Train Bows |complete weaponskill("BOW") > 0 |goto Darnassus 57.56,46.73
|only if Hunter
step
talk Ariyell Skyshadow##4203
|tip If you can afford it.
buy Laminated Recurve Bow##2507 |n
|tip Also buy a Small Quiver or Medium Quiver, whichever you can afford.
|tip Buy enough arrows to replace all of your ammo.  You will be using bows.								|only if Hunter
Visit the Vendor |vendor Ariyell Skyshadow##4203 |goto 58.76,44.50 |q 3524 |future
|only if Hunter and itemcount(2507) == 0
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto 57.56,46.73
|only if Hunter
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-11)\\Night Elf Starter (1-11)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Teldrassil",
condition_suggested=function() return raceclass('NightElf') and level <= 11 end,
condition_suggested_race=function() return raceclass('NightElf') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Darkshore (11-14)",
},[[
defaultfor NightElf
step
_NOTE:_
Save All Linen Cloth You Find
|tip As you quest in Teldrassil, save all Linen Cloth you find.
|tip Be careful not to accidentally sell them to a vendor.
|tip You will need ~70 Linen Cloth when you are level 10-11.
|tip You will use them to create your wand, which will be a powerful weapon for you.
|tip However, if you are confident you will be able to buy a wand from the Auction House (if this isn't a new or populated server), you can ignore this.
Click Here to Continue |confirm |q 456 |future
|only if Priest
step
_Destroy This Item:_
|tip You won't use it in the Shadowglen starter area.
|tip You will get another one before you need to use it.
trash Hearthstone##6948
step
talk Conservator Ilthalaine##2079
accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
stickystart "Kill_Young_Thistle_Boars"
step
kill 7 Young Nightsaber##2031 |q 456/1 |goto 61.93,42.02
step
label "Kill_Young_Thistle_Boars"
kill 4 Young Thistle Boar##1984 |q 456/2 |goto 61.93,42.02
step
talk Dirania Silvershine##8583
accept A Good Friend##4495 |goto 60.90,41.96
step
talk Melithar Staghelm##2077
accept The Woodland Protector##458 |goto 59.93,42.48
step
talk Conservator Ilthalaine##2079
turnin The Balance of Nature##456 |goto 58.70,44.27
accept The Balance of Nature##457 |goto 58.70,44.27
accept Simple Sigil##3116 |goto 58.70,44.27		|only if NightElf Warrior
accept Encrypted Sigil##3118 |goto 58.70,44.27		|only if NightElf Rogue
accept Hallowed Sigil##3119 |goto 58.70,44.27		|only if NightElf Priest
accept Etched Sigil##3117 |goto 58.70,44.27		|only if NightElf Hunter
accept Verdant Sigil##3120 |goto 58.70,44.27		|only if NightElf Druid
step
Enter the building |goto 59.94,42.38 < 20 |walk
talk Keina##3589
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo.										|only if Hunter
Visit the Vendor |vendor Keina##3589 |goto 59.31,41.09 |q 457
step
Run up the ramp |goto Teldrassil 59.19,40.00 < 10 |walk
talk Alyissia##3593
|tip Inside the building.
turnin Simple Sigil##3116 |goto Teldrassil 59.63,38.45
|only if NightElf Warrior
step
Run up the ramp |goto Teldrassil 59.19,40.00 < 10 |walk
talk Frahun Shadewhisper##3594
|tip Inside the building.
turnin Encrypted Sigil##3118 |goto Teldrassil 59.64,38.66
|only if NightElf Rogue
step
Run up the ramp |goto Teldrassil 59.97,41.90 < 10 |walk
talk Shanda##3595
|tip Upstairs inside the building.
turnin Hallowed Sigil##3119 |goto Teldrassil 59.17,40.44
|only if NightElf Priest
step
Run up the large ramp |goto Teldrassil 57.53,41.63 < 15 |only if walking
Enter the building |goto Teldrassil 58.51,40.71 < 10 |walk
talk Ayanna Everstride##3596
|tip Up in the tall tree, inside the building.
turnin Etched Sigil##3117 |goto Teldrassil 58.65,40.45
|only if NightElf Hunter
step
Run up the large ramp |goto Teldrassil 57.53,41.63 < 15 |only if walking
Enter the building |goto Teldrassil 58.51,40.71 < 10 |walk
talk Mardant Strongoak##3597
|tip Up in the tall tree, inside the building.
turnin Verdant Sigil##3120 |goto Teldrassil 58.63,40.29
|only if NightElf Druid
step
talk Tarindrella##1992
turnin The Woodland Protector##458 |goto Teldrassil 57.83,45.20
accept The Woodland Protector##459 |goto Teldrassil 57.83,45.20
step
kill Grell##1988+
collect 8 Fel Moss##3297 |q 459/1 |goto 56.08,45.83
You can find more around [54.75,44.01]
step
Kill enemies around this area
ding 3 |goto 56.08,45.83
You can find more around [54.75,44.01]
stickystart "Kill_Mangy_Nightsabers"
stickystart "Kill_Thistle_Boars"
step
talk Gilshalan Windwalker##2082
accept Webwood Venom##916 |goto 57.81,41.65
step
label "Kill_Mangy_Nightsabers"
kill 7 Mangy Nightsaber##2032 |q 457/1 |goto 60.12,35.06
You can find more around [62.60,37.94]
step
label "Kill_Thistle_Boars"
kill 7 Thistle Boar##1985 |q 457/2 |goto 60.12,35.06
stickystart "Collect_Webwood_Venom_Sacs"
step
Follow the path |goto 55.45,32.85 < 20 |only if walking
talk Iverron##8584
turnin A Good Friend##4495 |goto 54.60,32.99
accept A Friend in Need##3519 |goto 54.60,32.99
step
label "Collect_Webwood_Venom_Sacs"
kill Webwood Spider##1986+
|tip Inside and outside the cave.
collect 10 Webwood Venom Sac##5166 |q 916/1 |goto 56.80,31.59
step
Allow Enemies to Kill You
|tip Inside and outside the cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 56.80,31.59 |q 916
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 58.72,42.34 |q 916 |zombiewalk
step
talk Gilshalan Windwalker##2082
turnin Webwood Venom##916 |goto 57.81,41.65
accept Webwood Egg##917 |goto 57.81,41.65
step
talk Conservator Ilthalaine##2079
turnin The Balance of Nature##457 |goto 58.70,44.26
step
talk Tarindrella##1992
turnin The Woodland Protector##459 |goto 57.83,45.20
step
Enter the building |goto 59.94,42.38 < 20 |walk
talk Keina##3589
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Keina##3589 |goto 59.31,41.09 |q 3519
step
talk Dirania Silvershine##8583
turnin A Friend in Need##3519 |goto 60.90,41.96
accept Iverron's Antidote##3521 |goto 60.90,41.96
step
click Hyacinth Mushroom+
|tip They look like clusters of pink mushrooms on the ground around this area.
|tip They are usually at the base of trees.
collect 7 Hyacinth Mushroom##10639 |q 3521/1 |goto 61.07,43.43
You can find more around: |notinsticky
[60.35,44.21]
[60.52,46.66]
[59.78,46.02]
[59.50,45.80]
[58.97,47.11]
[54.45,43.18]
step
click Moonpetal Lily+
|tip They look like tall flowers with orange petals on the ground around this area.
collect 4 Moonpetal Lily##10641 |q 3521/2 |goto 57.72,37.76
step
Kill enemies around this area
|tip You should already be close to reaching level 5.
ding 5 |goto 60.12,35.06
stickystart "Collect_Webwood_Ichor"
step
Enter the cave |goto 56.79,31.41 < 20 |walk
Follow the path down |goto 56.83,28.94 < 10 |walk
Follow the path up |goto 55.75,25.49 < 10 |walk
click Webwood Eggs
|tip Upstairs inside the cave.
collect Webwood Egg##5167 |q 917/1 |goto 56.80,26.43
step
label "Collect_Webwood_Ichor"
kill Webwood Spider##1986+
|tip Inside and outside the cave.
collect Webwood Ichor##10640 |q 3521/3 |goto 56.78,31.55
step
Allow Enemies to Kill You
|tip Inside and outside the cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 56.80,31.59 |q 3521
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 58.72,42.34 |q 3521 |zombiewalk
step
Enter the building |goto 59.94,42.38 < 20 |walk
talk Keina##3589
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.									|only if Hunter
Visit the Vendor |vendor Keina##3589 |goto 59.31,41.09 |q 917
step
talk Gilshalan Windwalker##2082
turnin Webwood Egg##917 |goto 57.81,41.65
accept Tenaron's Summons##920 |goto 57.81,41.65
step
Run up the ramp that wraps around the huge tree and enter the building |goto 59.29,39.09 < 10 |walk
talk Tenaron Stormgrip##3514
|tip At the very top of the tall tree, inside the building.
turnin Tenaron's Summons##920 |goto 59.07,39.45
accept Crown of the Earth##921 |goto 59.07,39.45
step
talk Dirania Silvershine##8583
turnin Iverron's Antidote##3521 |goto 60.90,41.96
accept Iverron's Antidote##3522 |goto 60.90,41.96
step
use the Crystal Phial##5185
collect Filled Crystal Phial##5184 |q 921/1 |goto 59.94,33.04
step
talk Iverron##8584
turnin Iverron's Antidote##3522 |goto 54.59,32.99
step
Kill enemies around this area
|tip Inside and outside the cave.
ding 6 |goto 56.81,31.66
step
Allow Enemies to Kill You
|tip Inside and outside the cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 56.80,31.59 |q 921
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 58.72,42.34 |q 921 |zombiewalk
step
Run up the ramp that wraps around the huge tree |goto 57.54,41.62 < 15 |only if walking
Enter the building |goto 59.29,39.09 < 10 |walk
talk Tenaron Stormgrip##3514
|tip At the very top of the tall tree, inside the building.
turnin Crown of the Earth##921 |goto 59.07,39.45
accept Crown of the Earth##928 |goto 59.07,39.45
step
Jump down carefully and enter the building |goto 59.94,42.38 < 20 |walk
talk Keina##3589
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.								|only if Hunter
Visit the Vendor |vendor Keina##3589 |goto 59.31,41.09 |q 2159 |future
step
Run up the ramp |goto Teldrassil 59.96,41.88 < 10 |walk
talk Shanda##3595
|tip Upstairs inside the building.
accept In Favor of Elune##5622 |goto Teldrassil 59.17,40.44
|only if Priest
step
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto Teldrassil 61.16,47.64
step
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto 60.45,56.15
stickystart "Collect_Strigid_Owl_Feathers"
stickystart "Collect_Nightsaber_Fangs"
stickystart "Collect_Webwood_Spider_Silk"
stickystart "Collect_Small_Spider_Legs"
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto 56.08,57.73
stickystop "Collect_Strigid_Owl_Feathers"
stickystop "Collect_Nightsaber_Fangs"
stickystop "Collect_Webwood_Spider_Silk"
stickystop "Collect_Small_Spider_Legs"
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto 55.95,57.28
step
Enter the building |goto Teldrassil 55.75,57.23 < 10 |walk
talk Laurna Morninglight##3600
|tip Inside the building.
turnin In Favor of Elune##5622 |goto Teldrassil 55.56,56.75
accept Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
|only if Priest
step
Enter the building |goto Teldrassil 55.75,57.23 < 10 |walk |only if not Priest
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
accept Twisted Hatred##932 |goto Teldrassil 55.57,56.95
accept The Emerald Dreamcatcher##2438 |goto Teldrassil 55.57,56.95
step
talk Shalomon##3609
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
buy Gladius##2488 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 2438
|only if Warrior and itemcount(2488) == 0
step
talk Jeena Featherbow##3610
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
buy Hornwood Recurve Bow##2506 |n
|tip If you can afford it.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 2438
|only if Hunter and itemcount(2506) == 0
step
talk Shalomon##3609
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
buy Stiletto##2494 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 2438
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
buy Walking Stick##2495 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 2438
|only if Druid and itemcount(2495) == 0
step
talk Innkeeper Keldamyr##6736
|tip Upstairs inside the building.
turnin Dolanaar Delivery##2159 |goto Teldrassil 55.62,59.79
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##928 |goto 56.14,61.71
accept Crown of the Earth##929 |goto 56.14,61.71
step
Heal and Fortify Sentinel Shaya |q 5621/1 |goto Teldrassil 57.24,63.51
|tip Target Sentinel Shaya.
|tip First, cast your "Lesser Heal (Rank 2)" spell on her.
|tip Second, cast your "Power Word: Fortitude" spell on her.
|only if Priest
step
Enter the building |goto Teldrassil 57.48,60.60 < 10 |walk
talk Malorne Bladeleaf##3604
|tip Inside the building.
Learn Apprentice Herbalism |skillmax Herbalism,75 |goto Teldrassil 57.72,60.64
|tip You need Herbalism, so you can gather 5 Earthroot as you quest in Teldrassil.
|tip You will need the Earthroot for a later class quest.
|tip Once you have the 5 Earthroot, you can abandon Herbalism, if you want to.
|only if Druid
stickystart "Collect_Earthroot_Druid"
step
talk Denalan##2080
|tip He walks around this area.
turnin Denalan's Earth##997 |goto Teldrassil 60.90,68.49
step
Watch the dialogue
talk Denalan##2080
|tip He walks around this area.
accept Timberling Seeds##918 |goto 60.80,68.54
accept Timberling Sprouts##919 |goto 60.80,68.54
stickystart "Collect_Timberling_Seeds"
step
click Timberling Sprout+
|tip They look like green and brown vine balls on the ground around this area.
collect 12 Timberling Sprout##5169 |q 919/1 |goto 59.52,72.20
You can find more around [60.73,65.71]
step
label "Collect_Timberling_Seeds"
kill Timberling##2022+
collect 8 Timberling Seed##5168 |q 918/1 |goto 59.52,72.20
You can find more around [60.73,65.71]
step
talk Denalan##2080
|tip He walks around this area.
turnin Timberling Seeds##918 |goto 60.80,68.54
accept Rellian Greenspyre##922 |goto 60.80,68.54
turnin Timberling Sprouts##919 |goto 60.80,68.54
step
talk Shalomon##3609
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Shalomon##3609 |goto 56.31,59.49 |q 922
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Warrior and itemcount(2488) == 0
step
talk Jeena Featherbow##3610
|tip Inside the building.
|tip If you can afford it.		|only if itemcount(2506) == 0
buy Hornwood Recurve Bow##2506 |n	|only if itemcount(2506) == 0
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 922
|only if Hunter
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Druid and itemcount(2495) == 0
step
Enter the building |goto Teldrassil 55.75,57.23 < 10 |walk
talk Laurna Morninglight##3600
|tip Inside the building.
turnin Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
|only if Priest
stickystart "Collect_Strigid_Owl_Feathers"
stickystart "Collect_Nightsaber_Fangs"
stickystart "Collect_Webwood_Spider_Silk"
stickystart "Collect_Small_Spider_Legs"
step
use the Jade Phial##5619
collect Filled Jade Phial##5639 |q 929/1 |goto Teldrassil 63.38,58.08
step
Enter the building |goto 66.23,58.37 < 20 |walk
talk Gaerolas Talvethren##2107
|tip Upstairs inside the building.
turnin A Troubling Breeze##475 |goto 66.26,58.52
accept Gnarlpine Corruption##476 |goto 66.26,58.52
step
Enter the building |goto 67.82,59.46 < 10 |walk
click Tallonkai's Dresser
|tip Inside the building.
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto 68.01,59.63
step
label "Collect_Strigid_Owl_Feathers"
kill Strigid Owl##1995
collect 3 Strigid Owl Feather##3411 |q 488/2 |goto 63.65,53.56
You can find more around: |notinsticky
[65.26,51.94]
[67.49,53.76]
stickystart "Collect_Webwood_Spider_Silk"
step
label "Collect_Nightsaber_Fangs"
kill Nightsaber##2042+
collect 3 Nightsaber Fang##3409 |q 488/1 |goto 62.05,60.06
You can find more around [59.77,62.02]
step
label "Collect_Webwood_Spider_Silk"
kill Webwood Lurker##1998+
collect 3 Webwood Spider Silk##3412 |q 488/3 |goto 60.36,58.07
You can find more around [61.11,54.53]
step
label "Collect_Small_Spider_Legs"
kill Webwood Lurker##1998+
|tip You are collecting these to be able to complete a future quest soon.
collect 7 Small Spider Leg##5465 |goto 60.36,58.07 |q 4161 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [61.11,54.53]
step
Kill enemies around this area
|tip Getting this far into level 7 will allow you to reach level 8 after turning in quests soon.
|tip You are about to return to town, so it will be a good time to learn your level 8 abilities.
ding 7,3600 |goto 60.36,58.07
You can find more around [61.11,54.53]
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto 60.45,56.15
step
talk Jeena Featherbow##3610
|tip Inside the building.
|tip If you can afford it.		|only if itemcount(2506) == 0
buy Hornwood Recurve Bow##2506 |n	|only if itemcount(2506) == 0
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 2438
|only if Hunter
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto 56.08,57.73
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto 55.95,57.28
step
Enter the building |goto 55.75,57.23 < 10 |walk
talk Aldia##3608
|tip Upstairs inside the building, on the middle level.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Aldia##3608 |goto 55.51,57.15 |q 2438
step
talk Aldia##3608
|tip Upstairs inside the building, on the middle level.
|tip If you can afford it.
buy Balanced Throwing Dagger##25872 |n
Visit the Vendor |vendor Aldia##3608 |goto Teldrassil 55.51,57.15 |q 2438
|only if Rogue
step
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
turnin The Emerald Dreamcatcher##2438 |goto Teldrassil 55.57,56.95
accept Ferocitas the Dream Eater##2459 |goto Teldrassil 55.57,56.95
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Warrior and itemcount(2488) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Druid and itemcount(2495) == 0
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##929 |goto Teldrassil 56.14,61.71
accept Crown of the Earth##933 |goto Teldrassil 56.14,61.71
step
talk Zarrin##6286
|tip You need to have the Cooking profession learned in order to accept a quest soon.
Learn Cooking |skillmax Cooking,75 |goto 57.12,61.30 |q 4161 |future
step
talk Zarrin##6286
accept Recipe of the Kaldorei##4161 |goto 57.12,61.30
step
talk Zarrin##6286
turnin Recipe of the Kaldorei##4161 |goto 57.12,61.30
step
talk Nyoma##4265
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Nyoma##4265 |goto 57.19,61.26 |q 933
stickystart "Collect_Fel_Cones"
stickystart "Kill_Gnarlpine_Mystics"
step
kill Ferocitas the Dream Eater##7234
collect Gnarlpine Necklace##8049 |q 2459 |goto 69.37,53.40
step
use the Gnarlpine Necklace##8049
collect Tallonkai's Jewel##8050 |q 2459/2
step
label "Kill_Gnarlpine_Mystics"
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto 68.96,52.95
step
label "Collect_Fel_Cones"
click Fel Cone+
|tip They look like small brown balls with green smoke rising out of them at the base of trees around this area.
collect Fel Cone##3418 |q 489/1 |goto 66.72,53.54
You can usually find more around: |notinsticky
[64.78,50.81]
[61.62,53.44]
step
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto 60.45,56.15
step
Follow the path |goto 56.36,54.20 < 20 |only if walking and not subzone("Fel Rock")
Enter the cave |goto 54.65,52.45 < 20 |walk |only if not subzone("Fel Rock")
Follow the path |goto 53.79,50.64 < 10 |walk
Continue following the path |goto 53.17,49.16 < 10 |walk
kill Lord Melenas##2038
|tip Inside the cave.
|tip He can spawn in multiple locations inside this cave.
|tip If he's not here, search around in the cave until you find him.
collect Melenas' Head##5221 |q 932/1 |goto 52.81,50.20
step
Kill enemies around this area
|tip Inside the cave.
|tip Getting this far into level 8 will allow you to reach level 9 after turning in quests soon.
ding 8,4000 |goto 53.69,51.17
step
Allow Enemies to Kill You
|tip Anywhere inside the cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 53.69,51.17 |q 932
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 56.20,63.26 |q 932 |zombiewalk
step
talk Shalomon##3609
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Shalomon##3609 |goto 56.31,59.49 |q 932
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 932
|only if Warrior and itemcount(2488) == 0
step
talk Jeena Featherbow##3610
|tip Inside the building.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 932
|only if Hunter
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 932
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 932
|only if Druid and itemcount(2495) == 0
step
Enter the building |goto Teldrassil 55.76,57.24 < 10 |walk
talk Byancie##6094
|tip Inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto Teldrassil 55.29,56.82
step
_NOTE:_
Create Bandages in Downtime
|tip While you wait for boats, it's a good time to make bandages and increase your First Aid skill.
|tip You'll need higher skill to make better bandages later, so make sure to level it up as you go.
|tip Keep bandages on hand for another way to heal yourself.
Click Here to Continue |confirm |q 932
step
talk Aldia##3608
|tip Upstairs inside the building, on the middle level.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Aldia##3608 |goto 55.51,57.15 |q 932
step
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
turnin Twisted Hatred##932 |goto 55.57,56.95
turnin Ferocitas the Dream Eater##2459 |goto 55.57,56.95
step
click Strange Fruited Plant
accept The Glowing Fruit##930 |goto 42.63,76.10
step
use the Tourmaline Phial##5621
collect Filled Tourmaline Phial##5645 |q 933/1 |goto 42.42,67.07
step
Allow Enemies to Kill You
|tip Try to die around this area, or to the east of here, so that you end up in Dolanaar.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 46.87,71.67 |q 933
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 56.20,63.26 |q 933 |zombiewalk
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##933 |goto 56.14,61.71
accept Crown of the Earth##7383 |goto 56.14,61.71
step
talk Shalomon##3609
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Shalomon##3609 |goto 56.31,59.49 |q 7383
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 7383
|only if Warrior and itemcount(2488) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 7383
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 7383
|only if Druid and itemcount(2495) == 0
step
talk Innkeeper Keldamyr##6736
|tip Upstairs inside the building.
|tip This will create a Hearthstone for you.
home Dolanaar |goto Teldrassil 55.62,59.79
step
talk Jeena Featherbow##3610
|tip Inside the building.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 7383
|only if Hunter
step
map Teldrassil
path follow strictbounce; loop off; ants straight; dist 40; markers none
path	55.81,58.31	55.50,58.45	54.54,58.48	53.98,58.19	53.59,57.61
path	53.00,57.34	52.68,56.74	52.34,56.44	51.91,56.39	51.60,56.47
path	51.30,56.67	51.00,56.58	50.55,56.09	50.43,55.56	50.50,54.54
path	50.44,54.20	50.20,53.86
talk Moon Priestess Amara##2151
|tip She walks in a large pattern along the road from Dolanaar to Darnassus.
accept The Road to Darnassus##487
step
kill 6 Gnarlpine Ambusher##2152 |q 487/1 |goto 46.22,53.46
step
Leave Ban'ethil Hollow |goto 45.02,52.24 < 20 |only if walking and subzone("Ban'ethil Hollow")
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto 38.31,34.36
step
use the Amethyst Phial##18152
collect Filled Amethyst Phial##18151 |q 7383/1 |goto 38.43,34.04
stickystart "Collect_Bloodfeather_Belts"
step
click Strange Fronded Plant
accept The Shimmering Frond##931 |goto 34.60,28.85
step
label "Collect_Bloodfeather_Belts"
Kill Bloodfeather enemies around this area
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto 34.55,34.99
You can find more around [36.25,38.54]
step
Kill enemies around this area
|tip Getting this far into level 9 will allow you to reach level 10 after turning in quests soon.
|tip You will be returning to town soon, so it will be a good time to learn your level 10 abilities.
ding 9,5100 |goto 34.55,34.99
You can find more around [36.25,38.54]
step
talk Mist##3568
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
accept Mist##938 |goto 31.54,31.61 |noautoaccept
step
Lead Mist Safely to Sentinel Arynia Cloudsbreak |q 938/1 |goto 38.31,34.36
|tip Mist will follow you as you walk.
|tip Try to hurry, this quest is timed.
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto 38.31,34.36
turnin Mist##938 |goto 38.31,34.36
accept Teldrassil##940 |goto 38.31,34.36
step
Allow Enemies to Kill You
|tip Try to die around this area, or to the east of here, so that you end up in Dolanaar.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 36.43,38.54 |q 940
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto Darnassus/0 76.99,27.15 |q 940 |zombiewalk
step
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto Darnassus 38.19,21.63
accept Tumors##923 |goto Darnassus 38.19,21.63
step
Enter the building |goto Darnassus 35.46,10.59 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the middle floor.
accept Moonglade##5921 |goto Darnassus 35.37,8.40
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.46,10.59 < 10 |walk |only if not Druid
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin Teldrassil##940 |goto Darnassus 34.80,9.24
accept Grove of the Ancients##952 |goto Darnassus 34.80,9.24
step
talk Sister Aquinne##7316
accept The Temple of the Moon##2519 |goto 28.94,45.82
step
Cross the bridge |goto 38.59,48.02 < 20 |only if walking
Enter the building |goto 39.02,76.78 < 10 |walk
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin The Temple of the Moon##2519 |goto 36.64,85.93
accept Tears of the Moon##2518 |goto 36.64,85.93
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Moonglade##5921 |goto Moonglade 56.21,30.64
accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Follow the path |goto 42.47,34.44 < 40 |only if walking
talk Great Bear Spirit##11956
Ask it _"What do you represent, spirit?"_
Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear |q 5929/1 |goto 39.11,27.51
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Great Bear Spirit##5929 |goto 56.21,30.64
accept Back to Darnassus##5931 |goto 56.21,30.64
|only if NightElf Druid
step
talk Shalomon##3609
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 2518
step
talk Kyra Windblade##3598
|tip Inside the building.
accept Elanaria##1684 |goto Teldrassil 56.22,59.20
|only if Warrior
step
_NOTE:_
You Have Access to Stronger Ammo
|tip Now that you're level 10, you can purchase stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 10 ammo.
Click Here to Continue |confirm |q 2518
|only if Hunter
step
talk Jeena Featherbow##3610
|tip Inside the building.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 2518
|only if Hunter
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##7383 |goto Teldrassil 56.14,61.71
accept Crown of the Earth##935 |goto Teldrassil 56.14,61.71
step
talk Denalan##2080
|tip He walks around this area.
turnin The Glowing Fruit##930 |goto 60.90,68.49
turnin The Shimmering Frond##931 |goto 60.90,68.49
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 60.82,70.87 |q 935
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 56.20,63.26 |q 935 |zombiewalk
step
talk Shalomon##3609
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Shalomon##3609 |goto 56.31,59.49 |q 935
step
talk Dazalar##3601
accept Taming the Beast##6063 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
use the Taming Rod##15921
|tip Use it on a Webwood Lurker around this area.
|tip They look like green spiders.
Tame a Webwood Lurker |q 6063/1 |goto 59.81,59.06
|tip Dismiss it after you tame it.
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6063 |goto 56.68,59.49
accept Taming the Beast##6101 |goto 56.68,59.49
|only if NightElf Hunter
step
use the Taming Rod##15922
|tip Use it on a Nightsaber Stalker around this area.
|tip They look like dark colored tigers.
Tame a Nightsaber Stalker |q 6101/1 |goto 55.95,71.98
|tip Dismiss it after you tame it.
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6101 |goto 56.68,59.49
accept Taming the Beast##6102 |goto 56.68,59.49
|only if NightElf Hunter
step
use the Taming Rod##15923
|tip Use it on a Strigid Screecher around this area.
|tip They look like grey birds.
Tame a Strigid Screecher |q 6102/1 |goto 43.99,51.16
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6102 |goto 56.68,59.49
accept Training the Beast##6103 |goto 56.68,59.49
|only if NightElf Hunter
step
Enter the building |goto Teldrassil 55.76,57.24 < 10 |walk
talk Laurna Morninglight##3600
|tip Inside the building.
accept Returning Home##5629 |goto Teldrassil 55.57,56.75
|only if NightElf Priest
step
map Teldrassil
path follow strictbounce; loop off; ants straight; dist 40; markers none
path	55.81,58.31	55.50,58.45	54.54,58.48	53.98,58.19	53.59,57.61
path	53.00,57.34	52.68,56.74	52.34,56.44	51.91,56.39	51.60,56.47
path	51.30,56.67	51.00,56.58	50.55,56.09	50.43,55.56	50.50,54.54
path	50.44,54.20	50.20,53.86
talk Moon Priestess Amara##2151
|tip She walks in a large pattern along the road from Dolanaar to Darnassus.
turnin The Road to Darnassus##487
step
talk Jannok Breezesong##3599
|tip Inside the building.
accept The Apple Falls##2241 |goto Teldrassil 56.38,60.14
|only if Rogue
step
Allow Enemies to Kill You
|tip You must be close to this area.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 42.77,52.55 |q 2241
|only if Rogue
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto Darnassus 77.67,25.92 |q 2241 |zombiewalk
|only if Rogue
step
Enter the cave in the tree trunk |goto Darnassus 32.12,16.46 < 7 |walk
talk Syurna##4163
|tip Inside the cave.
turnin The Apple Falls##2241 |goto Darnassus 36.99,21.91
accept Destiny Calls##2242 |goto Darnassus 36.99,21.91
|only if Rogue
step
Run up the spiral path and leave the cave |conditon not _G.IsIndoors() |goto 32.12,16.46 |q 2242
|only if Rogue and subzone("Cenarion Enclave")
step
_NOTE:_
Tame a Strigid Hunter
|tip Use your "Tame Beast" ability on a Strigid Hunter.
|tip They look like grey birds around this area.
|tip This will be your permanent pet for a while.
Click Here to Continue |confirm |goto Teldrassil 45.58,40.56 |q 6103
|only if NightElf Hunter
step
Kill Gnarlpine enemies around this area
|tip You are collecting these to make your wand soon.
collect 70 Linen Cloth##2589 |goto Teldrassil 46.05,53.38 |q 6342 |future
|tip Be careful not to accidentally sell these to a vendor.
|only if Priest
step
Kill Timberling enemies around this area
|tip They look like swamp elementals.
|tip Work your way north along the water as you kill them, the next step is far north.
collect 5 Mossy Tumor##5170 |q 923/1 |goto Teldrassil 42.78,40.96
You can find more around: |notinsticky
[42.70,33.19]
[43.42,28.26]
step
kill Lady Sathrah##7319
|tip She looks like a a grey spider that walks around this area.
|tip She can spawn in multiple locations.
collect Silvery Spinnerets##8344 |q 2518/1 |goto 48.08,25.10
She can also be around: |notinsticky
[47.05,27.71]
[40.82,25.18]
[38.57,26.51]
step
Kill enemies around this area
|tip Getting this far into level 10 will allow you to reach level 11 after turning in quests soon.
ding 10,3500 |goto 42.78,40.96
You can find more around: |notinsticky
[42.70,33.19]
[43.42,28.26]
step
collect Sethir's Journal##7737 |q 2242/1 |goto Teldrassil 37.52,24.29
|tip Stealth and use your "Pickpocket" ability on Sethir the Ancient.
|tip He looks like a purple satyr that sometimes stands here, and walks out onto the huge tree branch nearby.
|tip Be careful to not attack him or be detected, he summons a group of enemies to help him fight.
|only if Rogue
step
label "Collect_Earthroot_Druid"
collect 5 Earthroot##2449 |q 6123 |future
|tip Use Herbalism to gather these as you quest in Teldrassil.
|tip Collect any herbs you come across, because you need Herbalism level 15 to be able to collect Earthroot.
|tip Earthroot nodes can be found in the areas of Teldrassil between Dolanaar and Darnassus, north and south of the road.
|tip Once you collect 5 Earthroot, you can abandon Herbalism, if you want to.
|tip Be careful not to accidentally sell these to a vendor.
|only if Druid
step
Allow Enemies to Kill You
|tip You must be close to this area.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto Teldrassil 36.45,27.73 |q 2518
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto Darnassus/0 76.99,27.15 |q 2518 |zombiewalk
step
talk Mydrannul##4241
accept Nessa Shadowsong##6344 |goto Darnassus 70.68,45.38
|only if NightElf
step
talk Mydrannul##4241
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it, and you need more bag space, buy bags.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Mydrannul##4241 |goto Darnassus 70.68,45.38 |q 6344
step
talk Elanaria##4088
turnin Elanaria##1684 |goto Darnassus 57.30,34.61
accept Vorlus Vilehoof##1683 |goto Darnassus 57.30,34.61
|only if Warrior
step
Run around the mountain and follow the path up |goto Teldrassil 48.68,62.73 < 15 |only if walking
kill Vorlus Vilehoof##6128
collect Horn of Vorlus##6805 |q 1683/1 |goto Teldrassil 47.25,63.60
|only if Warrior
step
Allow Enemies to Kill You
|tip You must be close to this area.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 36.45,27.73 |q 1683
|only if Warrior
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto Darnassus 77.67,25.92 |q 1683 |zombiewalk
|only if Warrior
step
talk Elanaria##4088
turnin Vorlus Vilehoof##1683 |goto Darnassus 57.30,34.61
|only if Warrior
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto 57.56,46.73
|only if Warrior
step
talk Ariyell Skyshadow##4203
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it.
buy Quarter Staff##854 |n
Visit the Vendor |vendor Ariyell Skyshadow##4203 |goto 58.76,44.50 |q 6344
|only if Warrior and itemcount(854) == 0
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Darnassus 57.56,46.73
|only if Hunter
step
talk Ariyell Skyshadow##4203
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
|tip If you can afford it.
buy Laminated Recurve Bow##2507 |n
|tip You can't use it until level 11, but you'll be level 11 soon and it will be a nice instant upgrade.
Visit the Vendor |vendor Ariyell Skyshadow##4203 |goto 58.76,44.50 |q 6344
|only if Hunter and itemcount(2507) == 0
step
talk Ariyell Skyshadow##4203
|tip If you can afford it.
buy Medium Quiver##11362 |n
Visit the Vendor |vendor Ariyell Skyshadow##4203 |goto 58.76,44.50 |q 6344
|only if Hunter and itemcount(11362) == 0
step
Run up the ramp |goto Darnassus 62.61,68.78 < 10 |only if walking
talk Turian##4235
|tip Upstairs inside the building.
|tip If you can afford it.
buy Keen Throwing Knife##3107 |n
|tip You will equip it after you reach level 11 soon.
Visit the Vendor |vendor Turian##4235 |goto Darnassus 62.67,65.59 |q 923
|only if Rogue
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Darnassus 57.56,46.73
|only if Priest
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Priest"	|or	|q 923
No, I Already Have a Wand	|confirm	|next "Skip_Wand_Priest"	|or	|q 923
|only if Priest
step
label "Create_Wand_Priest"
collect 70 Linen Cloth##2589 |q 923
|tip You are about to create your wand.
|tip If you need more Linen Cloth, try to buy some from the Auction House.
|only if Priest
step
Run up the ramp |goto 61.25,23.27 < 10 |only if walking
talk Trianna##11050
|tip Inside the building.
Learn Tailoring |skillmax Tailoring,75 |goto 63.55,21.21 |q 923
|only if Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 35 Bolts of Linen Cloth.
collect 35 Bolt of Linen Cloth##2996 |q 923
|only if Priest
step
talk Elynna##4168
|tip Inside the building.
buy 10 Coarse Thread##2320 |goto 64.58,21.58 |q 923
|only if Priest
step
talk Trianna##11050
|tip Inside the building.
learn Brown Linen Robe##7623 |goto 63.55,21.21 |q 923
|only if Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 10 Brown Linen Robes.
|tip You are about to learn Enchanting and disenchant these.
collect 10 Brown Linen Robe##6238 |q 923
|only if Priest
step
Run up the ramp |goto 61.06,10.72 < 10 |only if walking
talk Lalina Summermoon##11070
|tip Inside the building.
Learn Enchanting |skillmax Enchanting,75 |goto 58.79,12.74 |q 923
|only if Priest
step
Disenchant the Brown Linen Robes
|tip Use the "Disenchant" ability in the General tab of your spellbook.
|tip If you don't get one of these items from disenchanting, talk to Thaddeus Webb here and try to buy it.
|tip They are limited supply items, so it may not be available to buy.
|tip You can also try to buy it from the Auction House.
collect Strange Dust##10940 |goto 58.57,14.72 |q 923
collect 2 Lesser Magic Essence##10938 |goto 58.57,14.72 |q 923
|only if Priest
step
talk Vaean##4228
|tip Inside the building.
buy Copper Rod##6217 |goto 58.57,14.72 |q 923
buy Simple Wood##4470 |goto 58.57,14.72 |q 923
|only if Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Runed Copper Rod.
collect Runed Copper Rod##6218 |q 923
|only if Priest
step
talk Lalina Summermoon##11070
|tip Inside the building.
learn Lesser Magic Wand##14293 |goto 58.79,12.74 |q 923
|only if Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Lesser Magic Wand.
collect Lesser Magic Wand##11287 |q 923
|only if Priest
step
label "Skip_Wand_Priest"
talk Rellian Greenspyre##3517
turnin Tumors##923 |goto Darnassus 38.19,21.64
step
Enter the cave in the tree trunk |goto Darnassus 32.12,16.46 < 7 |walk
talk Syurna##4163
|tip Inside the cave.
turnin Destiny Calls##2242 |goto Darnassus 36.99,21.91
|only if Rogue
step
Run up the spiral path and leave the cave |conditon not _G.IsIndoors() |goto 32.12,16.46 |q 935
|only if Rogue and subzone("Cenarion Enclave")
step
Run up the ramp |goto Darnassus 39.62,16.40 < 10 |only if walking
talk Jocaste##4146
|tip Inside the building.
turnin Training the Beast##6103 |goto Darnassus 40.38,8.55
|only if NightElf Hunter
step
_NOTE:_
You Can Now Train Your Pet
|tip Learn pet abilities from Pet Trainers.
|tip Use your "Beast Training" ability to teach your pet abilities.
Click Here to Continue |confirm |q 6344
|only if NightElf Hunter
step
Enter the building |goto Darnassus 35.46,10.59 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Back to Darnassus##5931 |goto Darnassus 35.38,8.41
accept Body and Heart##6001 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.46,10.59 < 10 |walk |only if not Druid
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin Crown of the Earth##935 |goto Darnassus 34.80,9.24
step
Cross the bridge |goto 38.59,48.02 < 20 |only if walking
Enter the building |goto 39.02,76.78 < 10 |walk
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin Tears of the Moon##2518 |goto 36.64,85.93
accept Sathrah's Sacrifice##2520 |goto 36.64,85.93
step
talk Priestess Alathea##11401
|tip Upstairs inside the building.
turnin Returning Home##5629 |goto Darnassus 39.53,81.18
accept Stars of Elune##5627 |goto Darnassus 39.53,81.18 |instant
|only if NightElf Priest
step
use Sathrah's Sacrifice##8155
|tip Inside the building.
Offer the Sacrifice at the Fountain |q 2520/1 |goto Darnassus 39.21,84.57
step
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin Sathrah's Sacrifice##2520 |goto 36.64,85.93
step
talk Nessa Shadowsong##10118
turnin Nessa Shadowsong##6344 |goto Teldrassil 56.25,92.43
accept The Bounty of Teldrassil##6341 |goto Teldrassil 56.25,92.43
|only if NightElf
step
talk Vesprystus##3838
turnin The Bounty of Teldrassil##6341 |goto 58.40,94.01
accept Flight to Auberdine##6342 |goto 58.40,94.01
|only if NightElf
step
talk Laird##4200
|tip Inside the building.
turnin Flight to Auberdine##6342 |goto Darkshore/0 36.77,44.28
|only if NightElf
step
talk Laird##4200
buy Longjaw Mud Snapper##4592 |n
|tip Buy 20-40, whatever you have money and bag space for.
|tip This will be used to feed your permanent pet and keep it Happy, so it deals more damage and gains Loyalty faster.
|tip By keeping your pet Happy and ranking up its Loyalty, it won't run away and abandon you, and will need food less often to stay Happy.
Visit the Vendor |vendor Laird##4200 |goto Darkshore/0 36.77,44.28 |q 433 |future
|only if Hunter
step
talk Shellei Brondir##1571
fpath Menethil Harbor |goto Wetlands 9.49,59.69
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-11)\\Draenei Starter (1-11)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst Isle",
condition_suggested=function() return raceclass('Draenei') and level <= 11 end,
condition_suggested_race=function() return raceclass('Draenei') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Darkshore (11-14)",
},[[
defaultfor Draenei
step
_Destroy This Item:_
|tip You won't use it in the Ammen Vale starter area.
|tip You will get another one before you need to use it.
trash Hearthstone##6948
step
talk Megelon##16475
accept You Survived!##9279 |goto Azuremyst Isle 82.96,43.89
|only if Draenei
step
talk Proenitus##16477
turnin You Survived!##9279 |goto 80.42,45.89				|only if haveq(9279) or completedq(9279)
accept Replenishing the Healing Crystals##9280 |goto 80.42,45.89	|only if Draenei
accept Replenishing the Healing Crystals##9369 |goto 80.42,45.89	|only if not Draenei
step
kill Vale Moth##16520+
collect 8 Vial of Moth Blood##22889 |q 9280/1 |goto 79.28,42.33		|only if haveq(9280)
collect 8 Vial of Moth Blood##22899 |q 9369/1 |goto 79.28,42.33		|only if haveq(9369)
You can find more around [75.48,42.80]
step
Kill enemies around this area
ding 2 |goto 79.28,42.33
You can find more around [75.48,42.80]
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |goto 80.42,45.89	|only if haveq(9280) or completedq(9280)
turnin Replenishing the Healing Crystals##9369 |goto 80.42,45.89	|only if haveq(9369) or completedq(9369)
accept Urgent Delivery!##9409 |goto 80.42,45.89
step
Enter the building |goto 80.36,46.53 < 10 |walk
talk Jel##16918
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Jel##16918 |goto 80.47,47.35 |q 9409
step
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
turnin Urgent Delivery!##9409 |goto 79.96,48.66
accept Rescue the Survivors!##9283 |goto 79.96,48.66			|only if Draenei
step
talk Keilnei##16499
|tip Inside the building.
accept Hunter Training##9288 |goto Azuremyst Isle 79.88,49.71 |instant
|only if Draenei Hunter
step
talk Aurelon##16501
|tip Inside the building.
accept Paladin Training##9287 |goto Azuremyst Isle 79.69,48.24 |instant
|only if Draenei Paladin
step
talk Kore##16503
|tip Inside the building.
accept Warrior Training##9289 |goto Azuremyst Isle 79.59,49.45 |instant
|only if Draenei Warrior
step
talk Firmanvaar##17089
|tip Inside the building.
accept Shaman Training##9421 |goto Azuremyst Isle 79.28,49.12 |instant
|only if Draenei Shaman
step
talk Proenitus##16477
accept Botanist Taerix##9371 |goto Azuremyst Isle 80.42,45.89
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto 79.14,46.54
accept Volatile Mutations##10302 |goto 79.14,46.54
stickystart "Kill_Volatile_Mutations"
step
cast Gift of the Naaru##28880
|tip Cast it on a Draenei Survivor.
|tip They look like red glowing Draenei laying on the ground around this area.
Save a Draenei Survivor |q 9283/1 |goto 80.33,42.40
|only if haveq(9283)
step
label "Kill_Volatile_Mutations"
kill 8 Volatile Mutation##16516 |q 10302/1 |goto 77.95,43.26
You can find more around [75.32,41.88]
step
Kill enemies around this area
ding 3 |goto 77.95,43.26
You can find more around [75.32,41.88]
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto 79.14,46.54
accept What Must Be Done...##9293 |goto 79.14,46.54
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto 79.07,46.63
stickystart "Collect_Corrupted_Flowers"
step
kill Mutated Root Lasher##16517+
collect 10 Lasher Sample##22934 |q 9293/1 |goto 73.24,50.00
step
label "Collect_Corrupted_Flowers"
click Corrupted Flower##182127+
|tip They look like red and yellow flowers on the ground around this area.
collect 3 Corrupted Flower##24416 |q 9799/1 |goto 73.24,50.00
step
Kill enemies around this area
|tip Getting this far into level 3 will allow you to reach level 4 after turning in quests soon.
ding 3,1000 |goto 73.24,50.00
step
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto 79.07,46.63
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto 79.14,46.54
accept Healing the Lake##9294 |goto 79.14,46.54
step
Enter the building |goto 80.36,46.53 < 10 |walk
talk Jel##16918
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Jel##16918 |goto 80.47,47.35 |q 9283
step
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
turnin Rescue the Survivors!##9283 |goto 79.96,48.66
step
talk Firmanvaar##17089
|tip Inside the building.
accept Call of Earth##9449 |goto Azuremyst Isle 79.28,49.12
|only if Draenei Shaman
step
Enter the Sacred Grove |goto 72.38,41.15 < 20 |only if walking and not subzone("The Sacred Grove")
talk Spirit of the Vale##17087
turnin Call of Earth##9449 |goto 71.31,39.10
accept Call of Earth##9450 |goto 71.31,39.10
|only if Draenei Shaman
step
kill 4 Restless Spirit of Earth##17179 |q 9450/1 |goto 70.32,36.77
|only if Draenei Shaman
step
talk Spirit of the Vale##17087
turnin Call of Earth##9450 |goto 71.31,39.10
accept Call of Earth##9451 |goto 71.31,39.10
|only if Draenei Shaman
step
Leave the Sacred Grove |goto 72.38,41.15 < 20 |only if walking and subzone("The Sacred Grove")
Enter the building |goto 80.38,46.49 < 10 |walk
talk Jel##16918
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Jel##16918 |goto 80.47,47.35 |q 9451
|only if Draenei Shaman
step
talk Firmanvaar##17089
|tip Inside the building.
turnin Call of Earth##9451 |goto 79.28,49.12
|only if Draenei Shaman
step
talk Ryosh##16920
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Ryosh##16920 |goto Azuremyst Isle/0 79.26,50.89 |q 9305 |future
|only if Hunter
step
talk Technician Zhanaa##17071
|tip Outside the building.
accept Spare Parts##9305 |goto Azuremyst Isle 79.42,51.23
step
talk Vindicator Aldar##16535
accept Inoculation##9303 |goto 79.49,51.62
step
click Irradiated Power Crystal
Disperse the Neutralizing Agent |q 9294/1 |goto 77.26,58.76
stickystart "Inoculate_Nestlewood_Owlkins"
step
Follow the path up |goto 81.10,59.01 < 15 |only if walking
Enter the tunnel |goto 82.98,61.67 < 10 |only if walking
click Emitter Spare Part##181283+
|tip They look like pink crystals with golden parts spinning around them on the ground around this area.
collect 4 Emitter Spare Part##22978 |q 9305/1 |goto 85.27,66.49
You can find more up the path around [87.17,63.93]
step
label "Inoculate_Nestlewood_Owlkins"
use the Inoculating Crystal##22962
|tip Use it on Nestlewood Owlkins.
|tip They look like yellow owlkins around this area.
Inoculate #6# Nestlewood Owlkins |q 9303/1 |goto 85.27,66.49
You can find more up the path around [87.17,63.93]
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 85.27,66.49 |q 9294
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 77.71,48.83 |q 9294 |zombiewalk
step
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto 79.14,46.54
step
Enter the building |goto 80.36,46.53 < 10 |walk
talk Jel##16918
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Jel##16918 |goto 80.47,47.35 |q 9303
step
talk Ryosh##16920
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Ryosh##16920 |goto Azuremyst Isle/0 79.26,50.89 |q 9305 |future
|only if Hunter
step
talk Technician Zhanaa##17071
turnin Spare Parts##9305 |goto Azuremyst Isle 79.42,51.23
step
talk Vindicator Aldar##16535
turnin Inoculation##9303 |goto 79.49,51.62
accept The Missing Scout##9309 |goto 79.49,51.62
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 5.
ding 5 |goto 73.41,52.43
step
talk Tolaan##16546
turnin The Missing Scout##9309 |goto 72.00,60.85
accept The Blood Elves##10303 |goto 72.00,60.85
step
kill 10 Blood Elf Scout##16521 |q 10303/1 |goto 70.21,62.11
You can find more up the path that starts at [69.52,62.60]
step
talk Tolaan##16546
turnin The Blood Elves##10303 |goto 72.00,60.85
accept Blood Elf Spy##9311 |goto 72.00,60.85
step
Follow the path up |goto 69.52,62.60 < 15 |only if walking
Continue up the path |goto 68.71,64.38 < 10 |only if walking
kill Surveyor Candress##16522 |q 9311/1 |goto 69.27,65.78
collect Blood Elf Plans##24414 |goto 69.27,65.78 |q 9798 |future
step
use the Blood Elf Plans##24414
accept Blood Elf Plans##9798 |goto 69.27,65.78
step
Kill enemies around this area
|tip Getting this far into level 5 will allow you to reach level 6 after turning in quests soon.
ding 5,1600 |goto 70.21,62.11
You can find more up the path that starts at [69.52,62.60]
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 70.21,62.11 |q 9798
You can find more up the path that starts at [69.52,62.60]
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 77.71,48.83 |q 9798 |zombiewalk
step
Enter the building |goto 80.36,46.53 < 10 |walk
talk Jel##16918
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Jel##16918 |goto 80.47,47.35 |q 9798
step
talk Ryosh##16920
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Ryosh##16920 |goto Azuremyst Isle/0 79.26,50.89 |q 9798
|only if Hunter
step
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto Azuremyst Isle 79.49,51.62
turnin Blood Elf Plans##9798 |goto Azuremyst Isle 79.49,51.62
accept The Emitter##9312 |goto Azuremyst Isle 79.49,51.62
step
talk Technician Zhanaa##17071
turnin The Emitter##9312 |goto 79.42,51.23
accept Travel to Azure Watch##9313 |goto 79.42,51.23
step
Leave Ammen Vale |goto 67.67,53.73 < 30 |only if walking
talk Aeun##16554
accept Word from Azure Watch##9314 |goto 64.49,54.04
step
talk Diktynna##17101
accept Red Snapper - Very Tasty!##9452 |goto 61.05,54.25
step
use the Draenei Fishing Net##23654
|tip Use it next to Schools of Red Snapper
|tip They look like groups of small red fish in the water around this area.
kill Angry Murloc##17102+
|tip Sometimes an Angry Murloc will appear after you use the Draenei Fishing Net.
collect 10 Red Snapper##23614 |q 9452/1 |goto 61.52,57.29
You can find more around: |notinsticky
[62.03,52.09]
[61.25,45.30]
step
talk Diktynna##17101
turnin Red Snapper - Very Tasty!##9452 |goto 61.05,54.25
accept Find Acteon!##9453 |goto 61.05,54.25
step
kill Infected Nightstalker Runt##17202+
|tip They look like black tigers with white stripes around this area.
collect Faintly Glowing Crystal##23678 |goto 55.66,36.96 |q 9455 |future
step
use the Faintly Glowing Crystal##23678
accept Strange Findings##9455
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 55.66,36.96 |q 9455
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 47.85,56.17 |q 9455 |zombiewalk
step
talk Acteon##17110
turnin Find Acteon!##9453 |goto 49.78,51.94
accept The Great Moongraze Hunt##9454 |goto 49.78,51.94
step
talk Anchorite Fateema##17214
accept Medicinal Purpose##9463 |goto 48.39,51.77
|only if Draenei
step
talk Technician Dyvuun##16551
|tip He walks around this area.
turnin Travel to Azure Watch##9313 |goto 48.66,50.23
step
Enter the building |goto 48.77,49.91 < 10 |walk
talk Caregiver Chellan##16553
|tip Inside the building.
turnin Word from Azure Watch##9314 |goto 48.34,49.15
step
talk Caregiver Chellan##16553
|tip Inside the building.
home Azure Watch |goto 48.34,49.15 |q 9506 |future
step
talk Guvan##17482
|tip Inside the building.
accept Help Tavara##9586 |goto Azuremyst Isle 48.60,49.29
|only if Draenei Priest
step
cast Lesser Heal##2050
|tip Cast it on Tavara.
Heal Tavara |q 9586/1 |goto 56.22,48.88
|only if Draenei Priest
step
Enter the building |goto 48.77,49.92 < 10 |walk
talk Guvan##17482
|tip Inside the building.
turnin Help Tavara##9586 |goto 48.60,49.29
|only if Draenei Priest
step
talk Exarch Menelaous##17116
turnin Strange Findings##9455 |goto Azuremyst Isle 47.11,50.60
accept Nightstalker Clean Up, Isle 2...##9456 |goto Azuremyst Isle 47.11,50.60
step
talk Otonambusi##18810
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Otonambusi##18810 |goto 48.05,52.15 |q 9456
stickystart "Collect_Root_Trapper_Vines"
step
kill Moongraze Stag##17200+
collect 6 Moongraze Stag Tenderloin##23676 |q 9454/1 |goto 51.53,58.11
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [53.32,64.44]
step
label "Collect_Root_Trapper_Vines"
kill Root Trapper##17196+
collect 8 Root Trapper Vine##23685 |q 9463/1 |goto 51.53,58.11
You can find more around [53.32,64.44]
|only if haveq(9463) or completedq(9463)
step
Kill enemies around this area
|tip You should already be level 7, or very close.
ding 7 |goto 51.53,58.11
You can find more around [53.32,64.44]
step
talk Admiral Odesyus##17240
accept A Small Start##9506 |goto 47.04,70.21
step
talk "Cookie" McWeaksauce##17246
|tip He walks around this area.
accept Cookie's Jumbo Gumbo##9512 |goto 46.69,70.62
step
talk Logan Daniel##17489
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Logan Daniel##17489 |goto 46.22,70.98 |q 9512
step
talk Blacksmith Calypso##17245
|tip Repair your items.
Visit the Vendor |vendor Blacksmith Calypso##17245 |goto 46.35,71.19 |q 9512
stickystart "Collect_Skittering_Crawler_Meat"
step
click Nautical Map##181674
collect Nautical Map##23739 |q 9506/2 |goto 58.57,66.37
step
click Nautical Compass##181675
collect Nautical Compass##23738 |q 9506/1 |goto 59.57,67.64
step
label "Collect_Skittering_Crawler_Meat"
kill Skittering Crawler##17216+
collect 6 Skittering Crawler Meat##23757 |q 9512/1 |goto 50.19,71.54
You can find more around [46.05,74.26]
step
talk "Cookie" McWeaksauce##17246
|tip He walks around this area.
turnin Cookie's Jumbo Gumbo##9512 |goto 46.69,70.62
step
talk Logan Daniel##17489
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Logan Daniel##17489 |goto 46.22,70.98 |q 9506
step
talk Blacksmith Calypso##17245
|tip Repair your items.
Visit the Vendor |vendor Blacksmith Calypso##17245 |goto 46.35,71.19 |q 9506
step
talk Admiral Odesyus##17240
turnin A Small Start##9506 |goto 47.03,70.21
accept I've Got a Plant##9530 |goto 47.03,70.21
step
talk Priestess Kyleen Il'dinare##17241
accept Reclaiming the Ruins##9513 |goto 47.13,70.28
step
talk Archaeologist Adamant Ironheart##17242
accept Precious and Fragile Things Need Special Handling##9523 |goto 47.24,69.99
stickystart "Collect_Piles_Of_Leaves"
step
click Hollowed Out Tree##181696
|tip They look like tree stumps with a ring of frayed bark around the top of them on the ground around this area.
collect Hollowed Out Tree##23790 |q 9530/1 |goto 48.01,63.25
step
label "Collect_Piles_Of_Leaves"
click Piles of Leaves##6884+
|tip They look like piles of purple leaves on the ground around this area.
collect 5 Pile of Leaves##23791 |q 9530/2 |goto 48.33,64.77
You can find more around [44.53,68.72]
step
talk Admiral Odesyus##17240
turnin I've Got a Plant##9530 |goto 47.03,70.21
accept Tree's Company##9531 |goto 47.03,70.21
step
Kill enemies around this area
|tip Getting this far into level 7 will allow you to reach level 8 after turning in quests soon.
ding 7,3600 |goto 41.38,69.38
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 41.38,69.38 |q 9463
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 47.86,56.18 |q 9463 |zombiewalk
step
talk Anchorite Fateema##17214
turnin Medicinal Purpose##9463 |goto 48.39,51.77
|only if haveq(9463) or completedq(9463)
step
talk Daedal##17215
accept An Alternative Alternative##9473 |goto 48.39,51.48
|only if Draenei
step
talk Otonambusi##18810
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Otonambusi##18810 |goto 48.05,52.15 |q 9454
step
talk Acteon##17110
turnin The Great Moongraze Hunt##9454 |goto 49.78,51.94
accept The Great Moongraze Hunt##10324 |goto 49.78,51.94
step
talk Dulvi##17488
accept The Missing Fisherman##10428 |goto 48.96,51.06
step
talk Cryptographer Aurren##17232
accept Learning the Language##9538 |goto 49.38,50.96
step
use the Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1 |goto 49.38,50.96
step
clicknpc Totem of Akida##17360
turnin Learning the Language##9538 |goto 49.44,50.98
accept Totem of Coo##9539 |goto 49.44,50.98
stickystart "Collect_Moongraze_Buck_Hides"
stickystart "Kill_Infected_Nightstalker_Runts"
step
click Azure Snapdragon##181644+
|tip They look like blue flowers near trees on the ground around this area.
collect 5 Azure Snapdragon Bulb##23692 |q 9473/1 |goto 43.16,45.02
You can find more around [45.07,38.35]
|only if haveq(9473) or completedq(9473)
step
label "Collect_Moongraze_Buck_Hides"
kill Moongraze Buck##17201+
collect 6 Moongraze Buck Hide##23677 |q 10324/1 |goto 43.16,45.02
You can find more around [45.07,38.35]
step
label "Kill_Infected_Nightstalker_Runts"
kill 8 Infected Nightstalker Runt##17202 |q 9456/1 |goto 43.16,45.02
You can find more around [45.07,38.35]
step
clicknpc Totem of Coo##17361
turnin Totem of Coo##9539 |goto 55.23,41.64
accept Totem of Tikti##9540 |goto 55.23,41.64
step
Watch the dialogue
|tip Follow Stillpine Ancestor Coo as he walks.
Gain the Ghost Walk Buff |havebuff spell:30424 |goto 55.55,41.65 |q 9540
step
Watch the dialogue
|tip Jump off the cliff in the direction the arrow is pointing.
|tip You will float down safely to the ground.
clicknpc Totem of Tikti##17362
turnin Totem of Tikti##9540 |goto 64.48,39.77
accept Totem of Yor##9541 |goto 64.48,39.77
step
Watch the dialogue
|tip Follow Stillpine Ancestor Tikti as he walks.
Gain the Embrace of the Serpent Buff |havebuff spell:30430 |goto 63.78,40.23 |q 9541
step
Swim in the water |goto 61.86,43.19 < 50 |only if walking
Continue swimming in the water |goto 61.38,58.60 < 40 |only if walking
clicknpc Totem of Yor##17363
|tip Underwater.
turnin Totem of Yor##9541 |goto 63.11,67.88
accept Totem of Vark##9542 |goto 63.11,67.88
step
Watch the dialogue
|tip Follow Stillpine Ancestor Yor as he walks.
Gain the Shadow of the Forest Buff |havebuff spell:30448 |goto 61.04,69.46 |q 9542
step
Watch the dialogue
|tip Follow Stillpine Ancestor Yor as he walks.
|tip He eventually runs to this location.
clicknpc Totem of Vark##17364
turnin Totem of Vark##9542 |goto 28.10,62.39
accept The Prophecy of Akida##9544 |goto 28.10,62.39
step
Kill Bristlelimb enemies around this area
collect Bristlelimb Key##23801+ |n
click Bristlelimb Cage##1787+
|tip They look like yellow wooden cages on the ground around this area.
Free #8# Stillpine Captives |q 9544/1 |goto 27.39,63.15
You can find more around: |notinsticky
[28.03,66.62]
[25.12,67.50]
stickystart "Kill_Wrathscale_Myrmidons"
stickystart "Kill_Wrathscale_Nagas"
stickystart "Kill_Wrathscale_Sirens"
stickystart "Accept_Rune_Covered_Tablet"
step
click Ancient Relic##181685+
|tip They look like glowing white orbs in small stands on the ground around this area.
collect 8 Ancient Relic##23779 |q 9523/1 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Kill_Wrathscale_Myrmidons"
kill 5 Wrathscale Myrmidon##17194 |q 9513/1 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Kill_Wrathscale_Nagas"
kill 5 Wrathscale Naga##17193 |q 9513/2 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Kill_Wrathscale_Sirens"
kill 5 Wrathscale Siren##17195 |q 9513/3 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Accept_Rune_Covered_Tablet"
Kill Wratchscale enemies around this area |notinsticky
collect Rune Covered Tablet##23759 |n
use the Rune Covered Tablet##23759
accept Rune Covered Tablet##9514 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
use the Tree Disguise Kit##23792
Watch the dialogue
Uncover the Traitor |q 9531/1 |goto 18.49,84.35 |notravel
step
talk Cowlen##17311
|tip On the dock.
turnin The Missing Fisherman##10428 |goto 16.59,94.45
accept All That Remains##9527 |goto 16.59,94.45
step
Kill Owlbeast enemies around this area
collect Remains of Cowlen's Family##23789 |q 9527/1 |goto 15.16,86.80
step
talk Cowlen##17311
turnin All That Remains##9527 |goto 16.59,94.45
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 15.16,86.80 |q 9531
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 47.86,56.18 |q 9531 |zombiewalk
step
talk Admiral Odesyus##17240
turnin Tree's Company##9531 |goto 47.04,70.21
accept Show Gnomercy##9537 |goto 47.04,70.21
step
talk Archaeologist Adamant Ironheart##17242
turnin Precious and Fragile Things Need Special Handling##9523 |goto 47.24,69.99
step
talk Priestess Kyleen Il'dinare##17241
turnin Reclaiming the Ruins##9513 |goto 47.13,70.28
turnin Rune Covered Tablet##9514 |goto 47.13,70.28
step
talk Logan Daniel##17489
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Logan Daniel##17489 |goto 46.22,70.98 |q 9515
step
talk Blacksmith Calypso##17245
|tip Repair your items.
Visit the Vendor |vendor Blacksmith Calypso##17245 |goto 46.35,71.19 |q 9515
step
talk Engineer "Spark" Overgrind##17243
|tip He looks like a gnome that walks on the beach around this area.
Tell him _"It's over, Spark. The admiral knows it was you who betrayed the Alliance. Now you're either going to cooperate with me and tell me everything that you know or we're going to engage in some fisticuff."_
kill Engineer "Spark" Overgrind##17243
collect Traitor's Communication##23899 |q 9537/1 |goto 49.76,70.65
step
talk Admiral Odesyus##17240
turnin Show Gnomercy##9537 |goto 47.04,70.21
accept Deliver Them From Evil...##9602 |goto 47.04,70.21
step
talk Priestess Kyleen Il'dinare##17241
accept Warlord Sriss'tiz##9515 |goto 47.13,70.28
step
Kill enemies around this area
|tip You are about to have to go inside a cave and fight your way to a level 10 enemy.
|tip Being a level higher will help.
|tip You should already be pretty close to reaching level 10.
ding 10 |goto 41.38,69.38
step
Enter the cave |goto 26.91,76.44 < 20 |walk |only if not subzone("Tides' Hollow")
Jump down the hole in the floor to the lower level of the cave |goto 26.39,74.10 < 10 |walk
kill Warlord Sriss'tiz##17298 |q 9515/1 |goto 24.50,74.52
|tip He walks around this area.
|tip Downstairs inside the cave.
step
Allow Enemies to Kill You
|tip Anywhere inside this cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 24.50,74.52 |q 9515
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 47.86,56.18 |q 9515 |zombiewalk
step
talk Priestess Kyleen Il'dinare##17241
turnin Warlord Sriss'tiz##9515 |goto 47.13,70.28
step
talk Logan Daniel##17489
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Logan Daniel##17489 |goto 46.22,70.98 |q 10324
step
talk Blacksmith Calypso##17245
|tip Repair your items.
Visit the Vendor |vendor Blacksmith Calypso##17245 |goto 46.35,71.19 |q 10324
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |havebuff 132331 |goto 41.38,69.38 |q 10324
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff 132331 |goto 47.86,56.18 |q 10324 |zombiewalk
step
Enter the building |goto 49.49,52.29 < 10 |walk
talk Nabek##17930
|tip Inside the building.
|tip Repair your items.
Visit the Vendor |vendor Nabek##17930 |goto 49.58,53.11 |q 10324
step
talk Acteon##17110
turnin The Great Moongraze Hunt##10324 |goto 49.78,51.94
step
talk Ruada##17480
accept Strength of One##9582 |goto Azuremyst Isle 50.02,50.52
|only if Draenei Warrior
step
talk Acteon##17110
accept Seek Huntress Kella Nightbow##9757 |goto Azuremyst Isle 49.78,51.94
|only if Draenei Hunter
step
talk Semid##17481
accept Control##9595 |goto Azuremyst Isle 49.87,49.95
|only if Draenei Mage
step
talk Arugoo the Stillpine##17114
turnin The Prophecy of Akida##9544 |goto Azuremyst Isle 49.37,51.09
accept Stillpine Hold##9559 |goto Azuremyst Isle 49.37,51.09
step
talk Daedal##17215
turnin An Alternative Alternative##9473 |goto 48.39,51.48
|only if haveq(9473) or completedq(9473)
step
talk Exarch Menelaous##17116
turnin Nightstalker Clean Up, Isle 2...##9456 |goto 47.11,50.60
turnin Deliver Them From Evil...##9602 |goto 47.11,50.60
accept Coming of Age##9623 |goto 47.11,50.60
step
talk Torallius the Pack Handler##17584
turnin Coming of Age##9623 |goto The Exodar 81.50,51.46
accept Elekks Are Serious Business##9625 |goto The Exodar 35.26,43.09
step
talk Huntress Kella Nightbow##17614
turnin Seek Huntress Kella Nightbow##9757 |goto Azuremyst Isle 24.18,54.35
accept Taming the Beast##9591 |goto Azuremyst Isle 24.18,54.35
|only if Draenei Hunter
step
use the Taming Totem##23896
|tip Use it on a Barbed Crawler.
|tip They look like crabs underwater around this area.
Tame a Barbed Crawler |q 9591/1 |goto The Veiled Sea/0 20.32,65.09 |notravel
|only if Draenei Hunter
step
talk Huntress Kella Nightbow##17614
turnin Taming the Beast##9591 |goto Azuremyst Isle/0 24.18,54.35 |notravel
accept Taming the Beast##9592 |goto Azuremyst Isle/0 24.18,54.35 |notravel
|only if Draenei Hunter
step
use the Taming Totem##23897
|tip Use it on a Greater Timberstrider.
|tip They look like large birds on the ground around this area.
Tame a Greater Timberstrider |q 9592/1 |goto Azuremyst Isle/0 35.06,35.16
|only if Draenei Hunter
step
talk Huntress Kella Nightbow##17614
turnin Taming the Beast##9592 |goto Azuremyst Isle/0 24.18,54.35
accept Taming the Beast##9593 |goto Azuremyst Isle/0 24.18,54.35
|only if Draenei Hunter
step
use the Taming Totem##23898
|tip Use it on a Nightstalker.
|tip They look like dark grey tigers on the ground around this area.
Tame a Nightstalker |q 9593/1 |goto Azuremyst Isle/0 35.06,35.16
|only if Draenei Hunter
step
talk Huntress Kella Nightbow##17614
turnin Taming the Beast##9593 |goto Azuremyst Isle/0 24.18,54.35
accept Beast Training##9675 |goto Azuremyst Isle/0 24.18,54.35
|only if Draenei Hunter
step
Enter the building |goto The Exodar/0 41.92,72.84 < 15 |walk
talk Ganaar##16712
|tip Inside the building.
turnin Beast Training##9675 |goto The Exodar/0 44.23,86.59
|only if Draenei Hunter
step
Run up the ramp |goto 53.16,33.57 < 30 |walk |only if (zone("The Exodar") and _G.IsIndoors())
Continue up the ramp |goto 64.03,36.04 < 15 |walk |only if (zone("The Exodar") and _G.IsIndoors())
Leave the Exodar |goto 74.26,53.90 < 15 |walk |only if (zone("The Exodar") and _G.IsIndoors())
_NOTE:_
Tame a Nightstalker
|tip Use your "Tame Beast" ability on a Nightstalker.
|tip Try to find one that's level 9.
|tip They look like black tigers with white stripes around this area.
|tip This will be your permanent pet for a while.
Click Here to Continue |confirm |goto Azuremyst Isle 37.24,40.23 |q 9560 |future
You can find more around: |notinsticky
[45.21,27.19]
|only if Draenei Hunter
step
Enter the Exodar |goto The Exodar 33.14,44.01 < 15 |walk
talk Sulaa##17219
|tip Inside the building.
accept Call of Fire##9462 |goto The Exodar/0 32.25,23.87
|only if Draenei Shaman
step
Run up the ramp |goto 53.16,33.57 < 30 |walk |only if (zone("The Exodar") and _G.IsIndoors())
Continue up the ramp |goto 64.03,36.04 < 15 |walk |only if (zone("The Exodar") and _G.IsIndoors())
Leave the Exodar |goto 74.26,53.90 < 15 |walk |only if (zone("The Exodar") and _G.IsIndoors())
Follow the path up |goto Azuremyst Isle 48.49,54.50 < 20 |only if walking
talk Tuluun##17212
turnin Call of Fire##9462 |goto Azuremyst Isle 48.05,50.42
accept Call of Fire##9464 |goto Azuremyst Isle 48.05,50.42
|only if Draenei Shaman
step
talk Moordo##17442
accept Beasts of the Apocalypse!##9560 |goto Azuremyst Isle 44.76,23.91
step
talk Gurf##17441
accept Murlocs... Why Here? Why Now?##9562 |goto 44.62,23.48
step
talk High Chief Stillpine##17440
turnin Stillpine Hold##9559 |goto 46.69,20.61
stickystart "Accept_Bandits"
step
kill Ravager Specimen##17199+
collect 8 Ravager Hide##23845 |q 9560/1 |goto 54.12,20.09
step
click Ravager Cage
kill Death Ravager##17556 |q 9582/1 |goto Azuremyst Isle 54.05,9.84
|only if Draenei Warrior
step
talk Temper##17205
turnin Call of Fire##9464 |goto Azuremyst Isle 59.55,18.12
accept Call of Fire##9465 |goto Azuremyst Isle 59.55,18.12
|only if Draenei Shaman
step
label "Accept_Bandits"
kill Blood Elf Bandit##17591+
|tip They are stealthed, and rare, around this area.
|tip If you don't find one before you finish the Ravager Hide quest, you can skip it.
collect Blood Elf Communication##23910 |n
use the Blood Elf Communication##23910
accept Bandits!##9616 |goto Azuremyst Isle 53.53,19.41
step
talk Parkat Steelfur##17446
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Parkat Steelfur##17446 |goto 46.96,22.01 |q 9560
step
talk Moordo##17442
turnin Beasts of the Apocalypse!##9560 |goto 44.76,23.91
stickystart "Accept_Gurfs_Dignity"
stickystart "Kill_Queldorei_Magewraith"
step
Kill Siltfin enemies around this area
click Stillpine Grain##181757+
|tip They look like brown bags with yellow contents in them on the ground near murloc huts around this area.
collect 5 Stillpine Grain##23849 |q 9562/1 |goto 33.86,25.88
You can find more around [34.71,12.51]
step
label "Accept_Gurfs_Dignity"
kill Murgurgala##17475
|tip He looks like a larger purple murloc that walks up and down the beach around this area.
collect Gurf's Dignity##23850 |n
use Gurf's Dignity##23850
accept Gurf's Dignity##9564 |goto 33.86,25.88
Also check around [34.71,12.51]
step
label "Kill_Queldorei_Magewraith"
Kill Siltfin enemies around this area
|tip Eventually, a Quel'dorei Magewraith will appear and attack you.
kill Quel'dorei Magewraith##17612 |q 9595/1 |goto Azuremyst Isle 33.86,25.88
You can find more around [Azuremyst Isle 34.71,12.51]
|only if Draenei Mage
step
talk Gurf##17441
turnin Gurf's Dignity##9564 |goto Azuremyst Isle 44.62,23.48
turnin Murlocs... Why Here? Why Now?##9562 |goto Azuremyst Isle 44.62,23.48
step
talk Parkat Steelfur##17446
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Parkat Steelfur##17446 |goto 46.96,22.01 |q 9565 |future
step
talk Stillpine the Younger##17445
accept Chieftain Oomooroo##9573 |goto 46.90,21.16
step
talk High Chief Stillpine##17440
accept Search Stillpine Hold##9565 |goto 46.69,20.61
stickystart "Collect_Ritual_Torch"
stickystart "Kill_Crazed_Wildkins"
step
Enter the cave |goto 45.36,18.93 < 15 |walk |only if subzone("Stillpine Hold") and not _G.IsIndoors()
Follow the path up |goto 47.06,16.34 < 10 |walk
Cross the bridge |goto 48.15,14.51 < 10 |walk
kill Chieftain Oomooroo##17448 |q 9573/1 |goto 47.40,14.12
|tip Upstairs inside the cave.
step
click Blood Crystal##181748
|tip Inside the cave.
|tip You will be attacked by 2 owlkins.
turnin Search Stillpine Hold##9565 |goto 50.58,11.56
accept Blood Crystals##9566 |goto 50.58,11.56
step
label "Collect_Ritual_Torch"
kill Crazed Wildkin##17189+
|tip Inside the cave. |notinsticky
collect Ritual Torch##23733 |q 9465/1 |goto Azuremyst Isle 46.69,16.29
|only if Draenei Shaman
step
label "Kill_Crazed_Wildkins"
kill 9 Crazed Wildkin##17189 |q 9573/2 |goto Azuremyst Isle 46.69,16.29
|tip Inside the cave. |notinsticky
step
Leave the cave |goto 45.36,18.93 < 15 |walk |only if subzone("Stillpine Hold") and _G.IsIndoors()
talk High Chief Stillpine##17440
turnin Blood Crystals##9566 |goto 46.69,20.61
step
talk Stillpine the Younger##17445
turnin Chieftain Oomooroo##9573 |goto 46.90,21.16
step
talk Parkat Steelfur##17446
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Parkat Steelfur##17446 |goto 46.96,22.01 |q 9570 |future
step
talk Kurz the Revelator##17443
accept The Kurken is Lurkin'##9570 |goto 46.97,22.27
step
Enter the cave |goto 45.36,18.93 < 15 |walk |only if subzone("Stillpine Hold") and not _G.IsIndoors()
kill The Kurken##17447
|tip It walks around this area.
|tip Inside the cave.
collect The Kurken's Hide##23860 |q 9570/1 |goto 49.76,12.95
step
Leave the cave |goto 45.36,18.93 < 15 |walk |only if subzone("Stillpine Hold") and _G.IsIndoors()
talk Kurz the Revelator##17443
turnin The Kurken is Lurkin'##9570 |goto 46.97,22.27
accept The Kurken's Hide##9571 |goto 46.97,22.27
step
talk Parkat Steelfur##17446
|tip Sell any items you don't need, to clear some bag space.
|tip Buy some ammo, if you need to.										|only if Hunter
Visit the Vendor |vendor Parkat Steelfur##17446 |goto 46.96,22.01 |q 9571
step
talk High Chief Stillpine##17440
accept Warn Your People##9622 |goto 46.69,20.61
step
talk Moordo##17442
turnin The Kurken's Hide##9571 |goto 44.76,23.91
step
talk Temper##17205
turnin Call of Fire##9465 |goto Azuremyst Isle 59.55,18.12
accept Call of Fire##9467 |goto Azuremyst Isle 59.55,18.12
|only if Draenei Shaman
step
use the Fireproof Satchel##24336
collect Ritual Torch##23682 |q 9467
collect Orb of Returning##24335 |q 9467
|only if Draenei Shaman
step
talk Tullas##17483
|tip Inside the building.
accept Jol##10366 |goto Azuremyst Isle 48.36,49.56
|only if Draenei Paladin
step
talk Ruada##17480
turnin Strength of One##9582 |goto Azuremyst Isle 50.02,50.52
accept Behomat##10350 |goto Azuremyst Isle 50.02,50.52
|only if Draenei Warrior
step
talk Exarch Menelaous##17116
turnin Bandits!##9616 |goto Azuremyst Isle 47.11,50.60	|only if haveq(9616) or completedq(9616)
turnin Warn Your People##9622 |goto Azuremyst Isle 47.11,50.60
step
Enter the Exodar |goto The Exodar 33.05,43.96 < 15 |walk
talk Jol##17509
|tip Inside the building.
turnin Jol##10366 |goto The Exodar 23.87,51.49
accept Redemption##9598 |goto The Exodar 23.87,51.49
|only if Draenei Paladin
step
talk Jol##17509
|tip Inside the building.
turnin Redemption##9598 |goto 23.87,51.49
accept Redemption##9600 |goto 23.87,51.49
|only if Draenei Paladin
step
Run up the stairs |goto 28.00,52.42 < 20 |walk
talk Handiir##16773
|tip At the top of the platform.
|tip This will allow you to use two-handed swords.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto 61.17,89.52
|only if Draenei Paladin
step
Enter the Exodar |goto The Exodar 33.05,43.96 < 15 |walk
talk Behomat##17120
|tip Inside the building.
turnin Behomat##10350 |goto The Exodar 55.59,82.27
|only if Draenei Warrior
step
Run up the stairs |goto 28.00,52.42 < 20 |walk
talk Handiir##16773
|tip At the top of the platform.
|tip This will allow you to equip two-handed maces.
Train Two-Handed Maces |complete weaponskill("TH_MACE") > 0 |goto 61.17,89.52
|only if Draenei Warrior
step
click Wickerman Effigy
kill Hauteur##17206
collect Hauteur's Ashes##23688 |q 9467/1 |goto Azuremyst Isle 11.42,82.29
|only if Draenei Shaman
step
use the Orb of Returning##24335
Return to Temper |goto 59.17,18.16 < 30 |noway |c |q 9467
|only if Draenei Shaman
step
talk Temper##17205
turnin Call of Fire##9467 |goto 59.55,18.12
accept Call of Fire##9468 |goto 59.55,18.12
|only if Draenei Shaman
step
talk Tuluun##17212
turnin Call of Fire##9468 |goto 48.05,50.42
accept Call of Fire##9461 |goto 48.05,50.42
|only if Draenei Shaman
step
Enter the Exodar |goto The Exodar 33.15,44.04 < 15 |walk
talk Prophet Velen##17468
|tip Inside the building.
turnin Call of Fire##9461 |goto The Exodar 32.86,54.50
accept Call of Fire##9555 |goto The Exodar 32.86,54.50
|only if Draenei Shaman
step
talk Farseer Nobundo##17204
|tip He walks around this area.
|tip Inside the building.
turnin Call of Fire##9555 |goto 31.28,27.65
|only if Draenei Shaman
step
Run up the stairs |goto 28.00,52.42 < 20 |walk
talk Handiir##16773
|tip At the top of the platform.
|tip This will allow you to equip two-handed maces.
Train Two-Handed Maces |complete weaponskill("TH_MACE") > 0 |goto 61.17,89.52
|only if Draenei Shaman
step
Enter the Exodar |goto The Exodar 33.05,43.96 < 15 |walk
talk Bati##17514
|tip Inside the building.
turnin Control##9595 |goto The Exodar/0 46.35,63.48
|only if Draenei Mage
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Darkshore (11-14)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Bloodmyst Isle (14-20)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Darkshore (20-22)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ashenvale (22-24)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wetlands (24-25)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Redridge Mountains (25-25)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Duskwood (25-27)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Redridge Mountains (27-28)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wetlands (28-30)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Duskwood (30-31)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Stranglethorn Vale (31-32)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Hillsbrad Foothills (32-33)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Arathi Highlands (33-33)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dustwallow Marsh (33-33)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Thousand Needles (33-34)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dustwallow Marsh (34-34)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Stranglethorn Vale (34-35)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Desolace (35-37)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Stranglethorn Vale (37-38)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Swamp of Sorrows (38-39)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Alterac Mountains (39-39)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Arathi Highlands (39-41)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dustwallow Marsh (41-42)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Badlands (42-43)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Stranglethorn Vale (43-44)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Tanaris (44-44)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dustwallow Marsh (44-45)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Stranglethorn Vale (45-46)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Swamp of Sorrows (46-46)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Feralas (46-47)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Tanaris (47-49)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Hinterlands (49-50)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Searing Gorge (50-51)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Un'Goro Crater (51-52)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Western Plaguelands (52-52)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Felwood (52-53)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Winterspring (53-53)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Burning Steppes (53-54)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Un'Goro Crater (54-55)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Winterspring (55-55)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Felwood (55-56)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Winterspring (56-56)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Western Plaguelands (56-57)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Plaguelands (57-58)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Western Plaguelands (58-59)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Silithus (59-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Cloak Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Ring Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Weapon Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Shoulder Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Boots Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Helm Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Legs Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Chest Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Scepter of the Shifting Sands")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Ahn'Qiraj Gear\\Signet Ring of the Bronze Dragonflight")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cenarion Battlegear")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cenarion Field Duty Combat Assignments")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cenarion Field Duty Tactical Assignments")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cenarion Field Duty Logistics Assignments")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Druid Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Priest Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Warrior Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Hunter Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Rogue Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Mage Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Paladin Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Warlock Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Extra Zones\\Westfall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Hunter Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Warrior Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Paladin Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Rogue Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Priest Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Mage Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Warlock Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Druid Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Boosted Characters\\Boosted Shaman Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Hellfire Peninsula (58-62)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Zangarmarsh (62-63)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Terokkar Forest (63-65)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Nagrand (65-67)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Netherstorm (68-70)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Shadowmoon Valley (70-70)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Hellfire Peninsula Group Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Zangarmarsh Group Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Terokkar Forest Group Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Nagrand Group Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Blade's Edge Mountains Group Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Netherstorm Group Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Class Quests\\Shaman Class Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (58-70)\\Isle of Quel'danas")
