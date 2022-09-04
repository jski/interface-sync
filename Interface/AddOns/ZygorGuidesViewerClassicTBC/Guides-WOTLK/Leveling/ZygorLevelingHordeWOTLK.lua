local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHLK") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12) & Death Knight (55-58)\\Death Knight Starter (55-58)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Death Knight",
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return (raceclass('DeathKnight') and not completedq(13189)) end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13189) end,
},[[
step
talk The Lich King##25462
|tip On the upper floor of the floating building.
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave 51.34,35.18
step
talk Instructor Razuvious##28357
|tip He walks around this area, on the upper floor of the floating building.
turnin In Service Of The Lich King##12593 |goto 48.27,28.38
accept The Emblazoned Runeblade##12619 |goto 48.27,28.38
step
click Battle-worn Sword##190584+
|tip They look like swords leaning up against objects around this area.
|tip On the upper floor of the floating building.
collect Battle-worn Sword##38607 |goto 47.82,27.77 |q 12619
step
use the Battle-worn Sword##38607
|tip Next to a Runeforge.
|tip They look like large skulls with grey metal pipes connected to them, next to the wall around this area.
|tip On the upper floor of the floating building.
collect Runebladed Sword##38631 |q 12619/1 |goto 47.88,27.54
step
talk Instructor Razuvious##28357
|tip He walks around this area, on the upper floor of the floating building.
turnin The Emblazoned Runeblade##12619 |goto 48.27,28.38
accept Runeforging: Preparation For Battle##12842 |goto 48.27,28.38
step
cast Runeforging##53428
|tip Next to a Runeforge.
|tip They look like large skulls with grey metal pipes connected to them, next to the wall around this area.
|tip On the upper floor of the floating building.
Engrave the Rune
|tip Choose the rune you prefer and click the "Engrave" button.
|tip Select the sword you received in the previous step.
Emblazon Your Weapon |q 12842/1 |goto 47.88,27.54
step
talk Instructor Razuvious##28357
|tip He walks around this area, on the upper floor of the floating building.
turnin Runeforging: Preparation For Battle##12842 |goto 48.27,28.38
accept The Endless Hunger##12848 |goto 48.27,28.38
step
click Acherus Soul Prison##8115+
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
|tip On the upper floor of the floating building.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.87,29.67
step
talk Instructor Razuvious##28357
|tip He walks around this area, on the upper floor of the floating building.
turnin The Endless Hunger##12848 |goto 48.27,28.38
accept The Eye Of Acherus##12636 |goto 48.27,28.38
step
talk The Lich King##25462
|tip On the upper floor of the floating building.
turnin The Eye Of Acherus##12636 |goto 51.34,35.18
accept Death Comes From On High##12641 |goto 51.34,35.18
step
click Eye of Acherus Control Mechanism##191609
Take Control of the Eye of Acherus |havebuff spell:51852 |goto 52.13,35.21 |q 12641
step
Watch the dialogue
|tip You will automatically fly away while controlling the Eye of Acherus.
Reach New Avalon |complete subzone("New Avalon") |q 12641
step
_Fly to the Northeast:_
Locate the Blacksmith Building
|tip Stay floating high, so the soldiers on the ground will not attack you.
Use the _"Siphon of Acherus"_ ability |petaction 1
|tip Near the red arrow bouncing above the blacksmith building.
Analyze the New Avalon Forge |q 12641/1
step
_Fly to the South:_
Locate the Fort Building
|tip Stay floating high, so the soldiers on the ground will not attack you.
Use the _"Siphon of Acherus"_ ability |petaction 1
|tip Near the red arrow bouncing above the fort building.
Analyze the Scarlet Hold |q 12641/3
step
_Fly to the West:_
Locate the Town Hall Building
|tip Stay floating high, so the soldiers on the ground will not attack you.
Use the _"Siphon of Acherus"_ ability |petaction 1
|tip Near the red arrow bouncing above the town hall building.
Analyze the New Avalon Town Hall |q 12641/2
step
_Fly to the South:_
Locate the Church Building
|tip Stay floating high, so the soldiers on the ground will not attack you.
Use the _"Siphon of Acherus"_ ability |petaction 1
|tip Near the red arrow bouncing above the church building.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the _"Recall Eye of Acherus"_ ability |petaction 5
Recall the Eye of Acherus |nobuff spell:51852 |q 12641
step
talk The Lich King##25462
|tip On the upper floor of the floating building.
turnin Death Comes From On High##12641 |goto 51.34,35.18
accept The Might Of The Scourge##12657 |goto 51.34,35.18
step
Teleport to the Hall of Command |complete subzone("Hall of Command") |goto 50.49,33.37 |q 12657
|tip Walk onto the teleport pad.
|tip On the upper floor of the floating building.
step
talk Highlord Darion Mograine##28444
|tip On the bottom floor of the floating building.
turnin The Might Of The Scourge##12657 |goto 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto 48.88,29.76
step
talk Lord Thorval##28472
|tip He walks around this area, on the bottom floor of the floating building.
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.48,26.56 |instant
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area on a skeletal bird mount.
|tip On the bottom floor of the floating building.
turnin Report To Scourge Commander Thalanor##12850 |goto 51.10,34.63
accept The Scarlet Harvest##12670 |goto 51.10,34.63
step
clicknpc Scourge Gryphon##29488
|tip On the upper floor of the floating building.
Begin Flying to Death's Breach |ontaxi |goto 50.96,36.15 |q 12670
step
Fly Down to Death's Breach |offtaxi |goto 53.20,31.14 |q 12670 |notravel
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
accept Grand Theft Palomino##12680 |goto 52.51,34.61
step
talk Olrun the Battlecaller##29047
|tip She flies close to the ground around this area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406+
|tip They look like NPCs wearing brown robes.
|tip You can find them all around the Death's Breach area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
|tip They will eventually surrender.
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 52.51,34.46
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
accept Tonight We Dine In Havenshire##12679 |goto 52.96,37.27
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
stickystart "Saronite_Arrows"
step
click Havenshire Horse+
|tip They look like various color horses.
|tip You can find them all around the Havenshire Stables area.
|tip Be careful to avoid Stable Master Kitrik.
|tip He's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.93,42.21 |q 12680
step
Follow the path up to Death's Breach |goto 51.60,42.66 < 60 |only if walking and not subzone("Death's Breach")
Successfully Steal a Horse |q 12680/1 |goto 52.51,34.61
|tip Use the "Deliver Stolen Horse" ability next to Salanar the Horseman.
|tip He walks back and forth along this path.
stickystop "Slay_Scarlet_Crusaders"
stickystop "Citizens_Of_Havenshire"
stickystop "Saronite_Arrows"
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Grand Theft Palomino##12680 |goto 52.51,34.61
accept Into the Realm of Shadows##12687 |goto 52.51,34.61
step
kill Dark Rider of Acherus##28768+
|tip They ride around on dark colored horses with horns and white glowing feet.
|tip You can find them all around the Havenshire area.
clicknpc Acherus Deathcharger##28302
|tip The horse next to you that the Dark Rider of Acherus was riding on.
Steal an Acherus Deathcharger |invehicle |goto 54.27,44.54 |q 12687
step
Watch the dialogue
|tip Use the "Horseman's Call" ability on your action bar.
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Into the Realm of Shadows##12687 |goto 52.51,34.61
step
_NOTE:_
You Can Now Mount Up
|tip You just earned your ground mount.
|tip When you need to travel now, you can use your mount to move faster.
|tip Press Shift+P to open your Mounts window and move your horse to your action bar.
Click Here to Continue |confirm |q 12678
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
stickystart "Saronite_Arrows"
step
click Abandoned Mail##190917
|tip It looks like a rolled up scroll on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.26,46.15 |instant
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area
|tip They look like human soldiers with red and white armor, or civilians chopping wood.
|tip You can find them all around the northern part of the Havenshire area. |notinsticky
Slay #10# Scarlet Crusaders |q 12678/1 |goto 55.17,43.39
step
label "Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 57.10,47.55
|tip They look like humans running south.
|tip You can find them all around the southern part of the Havenshire area. |notinsticky
step
label "Saronite_Arrows"
click Saronite Arrow##190691+
|tip They look like green glowing arrows stuck in the ground around this area.
|tip You can find them all around the northern and southern parts of the Havenshire area. |notinsticky
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 57.10,47.55
step
Follow the path up to Death's Breach |goto 51.60,42.66 < 60 |only if walking and not subzone("Death's Breach")
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 52.96,37.27
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.27,33.97
accept Gothik the Harvester##12697 |goto 52.27,33.97
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
use the Gift of the Harvester##39253
|tip Use it on Scarlet Miners.
|tip They appear at the entrance of the mine, but you can find them throughout.
Gather _5_ Scarlet Ghouls
|tip The miners have a chance to become a friendly ghoul that will begin following you.
|tip Some of them may turn into ghosts and attack you.
Click Here Once You Have 5 Ghouls |confirm |c |goto 58.29,30.92 |q 12698
step
Leave the mine |goto 58.25,30.97 < 15 |walk |only if subzone("Havenshire Mine") and _G.IsIndoors()
Follow the path up to Death's Breach |goto 55.79,31.11 < 30 |only if not subzone("Death's Breach")
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
|tip Bring the ghouls to this location.
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.07,35.03
accept An Attack Of Opportunity##12700 |goto 54.07,35.03
step
talk Hargus the Gimp##28760
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hargus the Gimp##28760 |goto 52.90,35.21 |q 12700
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.27,33.97
accept Massacre At Light's Point##12701 |goto 52.27,33.97
step
click Inconspicuous Mine Car##190767
Hide in the Inconspicuous Mine Cart |invehicle |goto 58.52,33.00 |q 12701
step
Watch the dialogue
|tip A Scarlet Miner will bring you down to the beach in the cart.
Ride to the Scarlet Fleet Ship |outvehicle |goto 67.80,38.65 |q 12701 |notravel
step
click Scarlet Cannon##176216
|tip On the deck of the ship.
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar to kill the soldiers on the beach nearby.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.73,39.01
step
Call for a Skeletal Gryphon |ontaxi |goto 67.73,39.01 |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
|tip A skeletal gryphon will pick you up and fly you away.
step
Escape to Death's Breach |offtaxi |goto 52.57,34.45 |q 12701 |notravel
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.27,33.97
accept Victory At Death's Breach!##12706 |goto 52.27,33.97
step
clicknpc Scourge Gryphon##29501
Begin Flying to Acherus |ontaxi |goto 53.09,32.48 |q 12706
step
Fly Up to Archerus |offtaxi |goto 51.09,34.63 |q 12706 |notravel
step
talk Highlord Darion Mograine##28444
|tip On the upper floor of the floating building.
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488
|tip On the upper floor of the floating building.
Begin Flying to Death's Breach |ontaxi |goto 50.96,36.15 |q 12714
step
Fly Down to Death's Breach |offtaxi |goto 53.20,31.14 |q 12714 |notravel
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.46,36.56
accept The Crypt of Remembrance##12715 |goto 53.46,36.56
step
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.89,52.40
step
Enter the crypt and run down the stairs |goto 54.11,58.14 < 10 |walk |only if not (subzone("Crypt of Remembrance") and _G.IsIndoors())
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Collect_Crusader_Skulls"
stickystart "Kill_Citizens_Of_New_Avalaon"
step
Run up the stairs and leave the crypt |complete not (subzone("Crypt of Remembrance") and _G.IsIndoors()) |goto 54.34,58.13 |q 12719
step
Enter the building |goto 53.20,71.01 < 10 |walk |only if not (subzone("New Avalon Town Hall") and _G.IsIndoors())
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
|tip Inside the building.
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
Leave the building |goto 53.20,71.01 < 10 |walk |only if subzone("New Avalon Town Hall") and _G.IsIndoors()
Enter the crypt and run down the stairs |goto 54.11,58.14 < 10 |walk |only if not (subzone("Crypt of Remembrance") and _G.IsIndoors())
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
Run up the stairs and leave the crypt |complete not (subzone("Crypt of Remembrance") and _G.IsIndoors()) |goto 54.34,58.13 |q 12716
step
Enter the building |goto 61.46,60.73 < 15 |walk
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
Enter the building |goto 57.68,64.37 < 10 |walk
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.86,61.84
step
use the Ornately Jeweled Box##39418
collect Keleseth's Persuader##39371 |q 12720 |only if Frost
collect Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
step
Equip Keleseth's Persuaders |equipped Keleseth's Persuader##39371 |q 12720 |only if Frost
Equip Keleseth's Persuader |equipped Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
|tip Equip both of Keleseth's Persuaders in your bag. |only if Frost
|tip Equip the Keleseth's Persuader in your bag. |only if Blood or Unholy
step
Leave the building |goto 57.68,64.37 < 10 |walk |only if subzone("New Avalon") and _G.IsIndoors()
Kill Scarlet enemies around this area
|tip They look like soldiers with red and white armor.
|tip You can find them all around the New Avalon area. |notinsticky
|tip Try not to kill them too fast.
|tip Stop attacking when they start talking.
|tip Eventually one of the enemies will give you information.
|tip You must have Keleseth's Persuader weapon(s) equipped to get the enemies to talk to you.
Reveal the "Crimson Dawn" |q 12720/1 |goto 56.75,67.50
You can find more around [56.27,75.81]
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |q 12720
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area
|tip They look like soldiers with red and white armor.
|tip You can find them all around the New Avalon area. |notinsticky
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 56.75,67.50
You can find more around [56.27,75.81]
step
label "Collect_Crusader_Skulls"
Kill enemies around this area
|tip You can kill soldiers or civilians.
|tip You can find them all around the New Avalon area. |notinsticky
collect 10 Crusader Skull##39328 |q 12716/3 |goto 56.75,67.50
You can find more around [56.27,75.81]
step
label "Kill_Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 56.75,67.50
|tip They look like human civilians in regular clothes.
|tip They are mostly inside the buildings.
|tip You can find them all around the New Avalon area. |notinsticky
You can find more around [56.27,75.81]
step
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.89,52.40
accept Noth's Special Brew##12717 |goto 55.89,52.40
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto 56.15,51.98
step
click Plague Cauldron##190936
|tip Turn in the "More Skulls For Brew!" quest to get more potions of Noth's Special Brew.
|tip Keep doing this until you don't have enough skulls to get more potions.
Create More Noth's Special Brew |complete itemcount(39328) < 20 |goto 56.15,51.98
|only if itemcount(39328) >= 20
step
_Destroy These Items:_
|tip They are no longer needed.
trash Crusader Skull##39328
step
Enter the crypt and run down the stairs |goto 54.11,58.14 < 10 |walk |only if not (subzone("Crypt of Remembrance") and _G.IsIndoors())
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
Run up the stairs and leave the crypt |complete not (subzone("Crypt of Remembrance") and _G.IsIndoors()) |goto 54.34,58.13 |q 12716
Enter the building |goto 56.14,79.97 < 10 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Enter the building |goto 61.10,68.06 < 15 |walk |only if not (subzone("Scarlet Hold") and _G.IsIndoors())
Run down the stairs |goto 62.77,68.63 < 7 |walk
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto 62.96,67.85
accept Bloody Breakout##12727 |goto 62.96,67.85
step
Kill the enemies that attack in waves
|tip Downstairs in the building.
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It appears on the ground where you killed High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto 62.91,68.10
step
click New Avalon Patrol Schedule##191084
|tip It looks like a thick book sitting on a long table.
|tip Upstairs inside the building, in a large room.
collect New Avalon Patrol Schedule##39504|q 12724/1 |goto 62.99,68.31
step
Leave the building |goto 61.10,68.06 < 15 |walk |only if subzone("Scarlet Hold") and _G.IsIndoors()
Enter the building |goto 56.14,79.97 < 10 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 52.97,81.95
accept A Special Surprise##12742 |goto 52.97,81.95 |only Human
accept A Special Surprise##12743 |goto 52.97,81.95 |only NightElf
accept A Special Surprise##12744 |goto 52.97,81.95 |only Dwarf
accept A Special Surprise##12745 |goto 52.97,81.95 |only Gnome
accept A Special Surprise##12746 |goto 52.97,81.95 |only Draenei
accept A Special Surprise##12739 |goto 52.97,81.95 |only Tauren
accept A Special Surprise##12747 |goto 52.97,81.95 |only BloodElf
accept A Special Surprise##12748 |goto 52.97,81.95 |only Orc
accept A Special Surprise##12749 |goto 52.97,81.95 |only Troll
accept A Special Surprise##12750 |goto 52.97,81.95 |only Scourge
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Valok the Righteous##29070 |q 12746/1 |goto 54.55,83.42
|only Draenei
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.25,83.91
|only NightElf
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.93,83.81
|only Gnome
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.53,83.79
|only Human
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54.02,83.28
|only Dwarf
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.51,83.87
|only Tauren
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.29
|only BloodElf
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.27
|only Orc
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.77
|only Troll
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Antoine Brack##29071 |q 12750/1 |goto 53.54,83.30
|only Scourge
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 52.97,81.95 |only Human
turnin A Special Surprise##12743 |goto 52.97,81.95 |only NightElf
turnin A Special Surprise##12744 |goto 52.97,81.95 |only Dwarf
turnin A Special Surprise##12745 |goto 52.97,81.95 |only Gnome
turnin A Special Surprise##12746 |goto 52.97,81.95 |only Draenei
turnin A Special Surprise##28649 |goto 52.97,81.95 |only Worgen
turnin A Special Surprise##12739 |goto 52.97,81.95 |only Tauren
turnin A Special Surprise##12747 |goto 52.97,81.95 |only BloodElf
turnin A Special Surprise##12748 |goto 52.97,81.95 |only Orc
turnin A Special Surprise##12749 |goto 52.97,81.95 |only Troll
turnin A Special Surprise##12750 |goto 52.97,81.95 |only Scourge
turnin A Special Surprise##28650 |goto 52.97,81.95 |only Goblin
accept A Sort Of Homecoming##12751 |goto 52.97,81.95
step
Enter the building |goto 56.14,79.97 < 10 |walk
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
step
use the Makeshift Cover##39645
Watch the dialogue
|tip A Scarlet Courier walks up to you on a horse.
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.97,78.57
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.97,78.57
step
Enter the building |goto 56.14,79.97 < 10 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
Follow the path down to the beach |goto 60.63,80.73 < 70 |only if walking and not subzone("King's Harbor")
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
Follow the path up back to the orchard |goto 62.92,85.10 < 50 |only if walking
Enter the building |goto 56.14,79.97 < 10 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
Watch the dialogue
|tip Orbaz Bloodbane will create a portal.
|tip Upstairs inside the building.
click Portal to Acherus##8046
Return to Acherus |complete subzone("Acherus: The Ebon Hold") |goto 56.18,80.04 |q 12757
step
talk Highlord Darion Mograine##28444
|tip On the bottom floor of the floating building.
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488
|tip On the upper floor of the floating building.
Begin Flying to Death's Breach |ontaxi |goto 50.96,36.15 |q 12778
step
Fly Down to Death's Breach |offtaxi |goto 53.20,31.14 |q 12778 |notravel
step
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
use the Horn of the Frostbrood##39700
Summon a Frostbrood Vanquisher |invehicle |q 12779
stickystart "Kill_Scarlet_Soldiers_12779"
step
kill Scarlet Ballista##29104+
|tip They look like large brown wooden crossbow machines.
|tip They are up on the walls or on the ground all around the New Avalon area.
|tip Use the abilities on your action bar.
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 57.70,59.97
You can find more around [57.72,70.29]
step
label "Kill_Scarlet_Soldiers_12779"
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 57.72,70.29
|tip They look like humans wearing red and white armor.
|tip You can find them all around the New Avalon area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |complete subzone("Death's Breach") |goto 53.57,36.85 |q 12779
|tip Fly back to Death's Breach manually with the dragon.
|tip Don't click the red arrow to stop controlling the dragon until you get back to Death's Breach.
step
Release the Frostbrood Vanquisher |outvehicle |goto 53.57,36.85 |q 12779
|tip Click the red arrow on your action bar.
step
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
talk Hargus the Gimp##28760
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hargus the Gimp##28760 |goto 52.90,35.21 |q 12800
step
_Destroy These Items:_
|tip They are no longer needed.
trash Crusader Skull##39328
step
Run through the tunnel |goto 49.08,28.31 < 20 |only if walking and not subzone("Browman Mill")
Follow the path down |goto 39.91,19.41 < 30 |only if walking and not subzone("Browman Mill")
talk Scourge Commander Thalanor##31082
|tip He walks around this area.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then another player already started the battle.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord.  Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, then another player already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here Once the Battle Begins |confirm |c |goto 34.44,31.10 |q 12801
|tip Highlord Darion Mograine will start yelling when the battle is beginning.
step
Kill enemies around this area
|tip Follow your allies into battle and help them fight.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.11,39.16
accept Taking Back Acherus##13165 |goto 39.11,39.16
step
cast Death Gate##50977
|tip Click the purple portal that appears nearby.
Return to Acherus |complete subzone("Acherus: The Ebon Hold") |q 13165
step
talk Highlord Darion Mograine##29173
|tip On the bottom floor of the floating building.
turnin Taking Back Acherus##13165 |goto Eastern Plaguelands 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto Eastern Plaguelands 83.44,49.46
stickystart "Slay_Scourge_13166"
step
Walk onto the teleport pad to go to the upper floor |goto 83.19,48.90 < 7 |walk
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37
|tip He looks like a larger abomination that walks around this area.
|tip On the upper floor of the floating building.
step
label "Slay_Scourge_13166"
Kill enemies around this area
|tip On the upper floor of the floating building. |notinsticky
Slay #10# Scourge |q 13166/2 |goto 81.99,46.37
step
Walk onto the teleport pad to go to the bottom floor |goto 83.28,49.12 < 7 |walk
talk Highlord Darion Mograine##31084
|tip On the bottom floor of the floating building.
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Warchief's Blessing##13189 |goto 83.44,49.46
step
clicknpc Portal to Orgrimmar##103191
|tip On the bottom floor of the floating building.
Teleport to Orgrimmar |complete zone("Durotar") |goto 84.55,50.46 |q 13189
step
Enter the building |goto Orgrimmar 40.30,36.96 < 15 |walk
talk Thrall ##4949
|tip Inside the building.
turnin Warchief's Blessing##13189 |goto 31.61,37.83
]])
