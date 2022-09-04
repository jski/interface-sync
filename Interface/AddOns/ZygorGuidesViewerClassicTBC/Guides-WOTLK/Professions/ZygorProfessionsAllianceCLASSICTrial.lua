local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsACLASSIC") then return end
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Alchemy (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Alchemy") > 0 and skill("Alchemy") < 375 end,
description="This guide will walk you through leveling your Alchemy skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Apprentice Alchemy |skillmax Alchemy,75 |goto Stormwind City/0 55.66,86.09
stickystart "Collect_Silverleaf_60"
step
label "Begin_Profession_Leveling"
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_60"
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 60 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 65 Empty Vial##3371 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 60 |or
step
create 65 Minor Healing Potion##118,Alchemy,65 total |or
|tip Save these, you will need them later.
'|complete skill("Alchemy") >= 60 |or
step
create 1 Minor Healing Potion##118,Alchemy,60
|tip You may need to create more of these.
|tip Save 65 of these, you will need them later.
|tip Each additional one requires one Peacebloom, one Silverleaf, and one Empty Vial.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Journeyman Alchemy |skillmax Alchemy,150 |goto Stormwind City/0 55.66,86.09
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Lesser Healing Potion |learn Lesser Healing Potion##2337 |goto Stormwind City/0 55.66,86.09
step
collect 65 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 110 |or
step
create 65 Lesser Healing Potion##2337,Alchemy,110
|tip You may need to create more or less of these.
stickystart "Collect_Bruiseweed_140"
step
map Loch Modan
path follow smart; loop on; ants curved; dist 20
path	50.11,70.98	56.14,64.90	60.73,61.95	63.09,57.29	64.59,43.34
path	58.98,33.49	55.48,28.48	53.87,22.04	57.70,16.70	61.33,17.00
path	63.45,23.61	63.96,28.94	67.27,33.55	71.77,36.88	74.64,31.08
path	76.86,42.55	75.17,53.91	77.54,57.68	77.01,64.32	78.39,70.75
path	76.62,73.82	73.00,71.84	67.09,75.89	58.35,76.95	55.16,77.71
path	51.86,73.52
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 70 Herbalism to collect these.
collect 35 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Bruiseweed_140"
map Ashenvale
path follow smart; loop off; dist 20
path	30.47,44.71	27.77,48.81	25.72,50.64	28.38,54.47	34.66,54.20
path	35.41,56.86	34.85,58.62	32.71,59.66	34.71,59.96	38.06,62.62
path	40.48,61.75	39.97,65.16	41.82,64.95	43.85,63.15	47.09,61.20
path	48.42,60.26	49.98,59.22	54.29,60.93	56.36,63.51	57.82,64.38
path	59.14,70.90	60.56,73.42	69.78,74.49	71.98,73.86	74.94,73.92
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 100 Herbalism to collect these.
collect 35 Bruiseweed##2453 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 140 |or
'|goto 74.94,73.92 < 20 |noway |c |or
step
map Ashenvale
path follow smart; loop off; dist 20
path	74.94,73.92	71.98,73.86	69.78,74.49	60.56,73.42	59.14,70.90
path	57.82,64.38	56.36,63.51	54.29,60.93	49.98,59.22	48.42,60.26
path	47.09,61.20	43.85,63.15	41.82,64.95	39.97,65.16	40.48,61.75
path	38.06,62.62	34.71,59.96	32.71,59.66	34.85,58.62	35.41,56.86
path	34.66,54.20	28.38,54.47	25.72,50.64	27.77,48.81	30.47,44.71
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 100 Herbalism to collect these.
collect 35 Bruiseweed##2453 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 140 |or
'|goto 30.47,44.71 < 20 |noway |c |next "Collect_Bruiseweed_140" |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 35 Leaded Vial##3372 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 140 |or
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Healing Potion |learn Healing Potion##3447 |goto Stormwind City/0 55.66,86.09
step
create 35 Healing Potion##3447,Alchemy,140
|tip You may need to create more or less of these.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Blacksmithing (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Blacksmithing") > 0 and skill("Blacksmithing") < 375 end,
description="This guide will walk you through leveling your Blacksmithing skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Therum Deepforge##5511
Train Apprentice Blacksmithing |skillmax Blacksmithing,75 |goto Stormwind City/0 63.65,36.96
step
label "Begin_Profession_Leveling"
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 40 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 30 |or
step
talk Kaita Deepforge##5512
buy Blacksmith Hammer##5956 |goto Stormwind City/0 63.24,37.56 |or
|tip Save this, you will need it later.
'|complete skill("Blacksmithing") >= 375 |or
step
create 40 Rough Sharpening Stone##2660,Blacksmithing,30
|tip You may need to create more or less of these.
|tip Each additional Rough Sharpening Stone requires one Rough Stone.
step
talk Therum Deepforge##5511
Train Rough Grinding Stone |learn Rough Grinding Stone##3320 |goto Stormwind City/0 63.65,36.96
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 110 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 65 |or
step
create 55 Rough Grinding Stone##3320,Blacksmithing,65
|tip You may need to create more or less of these.
|tip Each additional Rough Grinding Stone requires two Rough Stone.
|tip Save 10 of these, you will need them later.
step
talk Therum Deepforge##5511
Train Coarse Sharpening Stone |learn Coarse Sharpening Stone##2665 |goto Stormwind City/0 63.65,36.96
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 25 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 75 |or
step
create 25 Coarse Sharpening Stone##2665,Blacksmithing,75
|tip You may need to create more or less of these.
|tip Each additional Coarse Sharpening Stone requires one Coarse Stone.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Therum Deepforge##5511
Train Journeyman Blacksmithing |skillmax Blacksmithing,150 |goto Stormwind City/0 63.65,36.96
step
talk Therum Deepforge##5511
Train Coarse Grinding Stone |learn Coarse Grinding Stone##3326 |goto Stormwind City/0 63.65,36.96
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 90 |or
step
create 30 Coarse Grinding Stone##3326,Blacksmithing,30 total |or
'|complete skill("Blacksmithing") >= 90 |or
step
create 1 Coarse Grinding Stone##3326,Blacksmithing,90
|tip You may need to create more of these.
|tip Each additional Coarse Grinding Stone requires two Coarse Stone.
|tip Save 30 of these, you will need them later.
step
talk Therum Deepforge##5511
Train Runed Copper Belt |learn Runed Copper Belt##2666 |goto Stormwind City/0 63.65,36.96
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 100 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 100 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 100 |or
step
create 10 Runed Copper Belt##2666,Blacksmithing,100 |goto 52.36,42.55
|tip Stand next to an anvil.
step
talk Therum Deepforge##5511
Train Silver Rod |learn Silver Rod##7818 |goto Stormwind City/0 63.65,36.96
stickystart "Collect_Rough_Grinding_Stone_105"
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 75 Mining to collect these.
collect Silver Ore##2775 |n
|tip Smelt the ore at a forge.
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 105 |or
step
label "Collect_Rough_Grinding_Stone_105"
collect 10 Rough Grinding Stone##3470 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 105 |or
step
create 5 Silver Rod##7818,Blacksmithing,105 |goto 52.36,42.55
|tip Stand next to an anvil.
|tip Inside the building.
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 50 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 50 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 110 |or
step
create 5 Runed Copper Belt##2666,Blacksmithing,110 |goto 52.36,42.55
|tip Stand next to an anvil.
step
talk Therum Deepforge##5511
Train Rough Bronze Leggings |learn Rough Bronze Leggings##2668 |goto Stormwind City/0 63.65,36.96
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 45 Copper Ore##2770 |or
|tip Save the ore for later.
collect 90 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 125 |or
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 45 Tin Ore##2771 |n
|tip Smelt the Copper and Tin Ore into Bronze at a forge.
collect 90 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 125 |or
step
create 15 Rough Bronze Leggings##2668,Blacksmithing,125 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
step
talk Therum Deepforge##5511
Train Heavy Grinding Stone |learn Heavy Grinding Stone##3337 |goto Stormwind City/0 63.65,36.96
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	76.64,42.59	75.00,44.93	72.65,48.07	70.58,55.05	69.99,58.40
path	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15	69.15,72.54
path	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74	56.16,71.89
path	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16	40.39,71.86
path	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64	33.70,56.77
path	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68	31.68,45.41
path	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12	20.02,35.80
path	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65	28.65,14.18
path	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23	36.35,24.61
path	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02	48.08,33.60
path	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13	58.19,32.50
path	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58	64.49,26.56
path	66.77,27.64	70.39,27.07	70.47,30.74	71.07,38.63
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 125 Mining to collect these.
collect 90 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 140 |or
step
create 30 Heavy Grinding Stone##3337,Blacksmithing,30 total |or
'|complete skill("Blacksmithing") >= 140 |or
step
create 1 Heavy Grinding Stone##3337,Blacksmithing,140
|tip You may need to create more of these.
|tip Each additional Heavy Grinding Stone requires three Heavy Stone.
|tip Save 30 of these, you will need them later.
step
talk Therum Deepforge##5511
Train Patterned Bronze Bracers |learn Patterned Bronze Bracers##2672 |goto Stormwind City/0 63.65,36.96
stickystart "Collect_Coarse_Grinding_Stone_150"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 25 Copper Ore##2770 |or
|tip Save these for the next step.
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 150 |or
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 25 Tin Ore##2771 |n
|tip Smelt the Copper and Tin Ore into Bronze at a forge.
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 150 |or
step
label "Collect_Coarse_Grinding_Stone_150"
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 20 Coarse Grinding Stone##3478 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 150 |or
step
create 10 Patterned Bronze Bracers##2672,Blacksmithing,150 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Cooking") > 0 and skill("Cooking") < 375 end,
description="This guide will walk you through leveling your Cooking skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Stormwind City/0 75.11,55.32 < 5 |walk
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Apprentice Cooking |skillmax Cooking,75 |goto Stormwind City/0 78.17,53.09
step
kill Stonetusk Boar##113
collect 55 Chunk of Boar Meat##769 |n |goto Elwynn Forest 41.81,87.22
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
You can find more around this area [32.96,84.95]
'|complete skill("Cooking") >= 50 |or
step
Enter the building |goto 71.64,39.92 < 5 |walk
Run down the stairs |goto 74.90,37.61 < 5 |walk
|tip Stand next to the Warm Fire.
|tip Downstairs inside the building.
create 55 Roasted Boar Meat##2540,Cooking,50 |goto 78.41,52.76
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Stormwind City/0 75.11,55.32 < 5 |walk
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Journeyman Cooking |skillmax Cooking,150 |goto Stormwind City/0 78.17,53.09
step
Enter the building |goto Loch Modan 35.23,47.74 < 5 |walk
talk Drac Roughcut##1465
|tip Inside the building.
buy Recipe: Smoked Bear Meat##6892 |n
use the Recipe: Smoked Bear Meat##6892
Train Smoked Bear Meat |learn Smoked Bear Meat##8607 |goto Loch Modan 35.57,49.15
step
map Darkshore
path follow smart; loop on; ants curved; dist 20
path	45.52,35.10	46.86,35.15	47.88,33.99	48.82,34.11	49.47,33.15
path	49.81,31.71	49.00,30.97	48.64,29.50	49.29,27.40	48.64,27.07
path	48.40,25.88	48.18,24.49	47.62,23.22	46.59,22.69	45.54,23.42
path	44.37,23.40	44.27,24.98	43.83,26.43	44.32,27.91	43.94,29.27
path	44.78,30.11	45.40,31.46	44.78,32.44	43.97,32.76	42.43,32.68
path	41.39,33.60	41.66,35.17	42.07,37.43	42.42,39.82	43.17,41.92
path	44.41,42.90	45.25,43.21	45.48,41.84
Kill Bear enemies along this path
collect 30 Bear Meat##3173 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 80 |or
step
Enter the building |goto Stormwind City/0 75.11,55.32 < 5 |walk
|tip Stand next to the Warm Fire.
|tip Downstairs inside the building.
create 30 Smoked Bear Meat##8607,Cooking,80 |goto Stormwind City/0 78.41,52.76
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Boiled Clams |learn Boiled Clams##6499 |goto 78.17,53.09
step
Kill Murloc enemies around this area
|tip They are found all along the coastline.
collect Small Barnacled Clam##5523 |n
use the Small Barnacled Clam##5523
collect 40 Clam Meat##5503 |goto Westfall 37.26,15.67 |or
|tip They are inside of the Small Barnacled Clams.
|tip You can also purchase them from the Auction House.
You can find more around here [31.16,26.10]
'|complete skill("Cooking") >= 110 |or
step
Enter the building |goto Stormwind City/0 75.11,55.32 < 5 |walk
talk Erika Tate##5483
|tip Downstairs inside the building.
buy 40 Refreshing Spring Water##159 |goto 76.06,36.76 |or
'|complete skill("Cooking") >= 110 |or
step
create 40 Boiled Clams##6499,Cooking,110 |goto 78.41,52.76
|tip Stand next to the Warm Fire.
|tip Downstairs inside the building.
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Crab Cake |learn Crab Cake##2544 |goto 78.17,53.09
step
map Westfall
path follow smart; loop off; dist 20
path	51.32,9.67	49.06,10.01	44.72,8.70	41.78,10.34	38.85,13.51
path	36.20,18.29	33.45,22.08	31.88,24.30
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect 30 Crawler Meat##2674 |or
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 130 |or
step
Enter the building |goto Stormwind City/0 75.11,55.32 < 5 |walk
talk Erika Tate##5483
|tip Downstairs inside the building.
buy 30 Mild Spice##2678 |goto 76.06,36.76 |or
'|complete skill("Cooking") >= 130 |or
step
create 30 Crab Cake##2544,Cooking,130 |goto 78.41,52.76
|tip Stand next to the Warm Fire.
|tip Downstairs inside the building.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Chunk of Boar Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Small Egg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Small Spider Leg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Stringy Wolf Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Crag Boar Rib")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Spider Ichor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Coyote Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Boar Intestines")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Stringy Vulture Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Strider Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Kodo Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Murloc Eye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Bear Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Goretusk Snout")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Goretusk Liver")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Crawler Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Crawler Claw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Boar Ribs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Crocolisk Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Tough Condor Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Soft Frenzy Flesh")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Raw Loch Frenzy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Murloc Fin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Lean Wolf Flank")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Big Bear Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Raptor Egg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Thunder Lizard Tail")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Tangy Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Tender Crocolisk Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Lion Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Stag Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Gooey Spider Leg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Mystery Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Red Wolf Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Turtle Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Tiger Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Raptor Flesh")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Buzzard Wing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Giant Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Essence of Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Living Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Essence of Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Essence of Air")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Essence of Earth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Essence of Undeath")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Heart of the Wild")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Ichor of Undeath")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Heart of Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Globe of Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Core of Earth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Breath of Wind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Elemental Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Elemental Earth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Elemental Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Elemental Air")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Enchanting (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Enchanting") > 0 and skill("Enchanting") < 375 end,
description="This guide will walk you through leveling your Enchanting skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Stormwind City/0 43.68,63.87 < 5 |walk
talk Lucan Cordell##1317
|tip Inside the building.
Train Apprentice Enchanting |skillmax Enchanting,75 |goto Stormwind City/0 42.94,64.65
step
label "Begin_Profession_Leveling"
talk Jessara Cordell##1318
|tip Inside the building.
buy Copper Rod##6217 |goto 42.81,64.39 |or 3
buy Strange Dust##10940 |goto 42.81,64.39 |or 3
buy Lesser Magic Essence##10938 |goto 42.81,64.39 |or 3
|tip These are limited supply items that can also be purchased from the auction house.
'|complete skill("Enchanting") >= 2 |or
step
create 1 Runed Copper Rod##7421,Enchanting,2
|tip Save this, you will need it later.
step
cast Disenchant##13262
collect 95 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 75 |or
step
create 75 Enchant Bracer - Minor Health##7418,Enchanting,75
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Minor Health enchant requires one Strange Dust.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Journeyman Enchanting |skillmax Enchanting,150 |goto Stormwind City/0 42.94,64.65
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchant Bracer - Minor Stamina |learn Enchant Bracer - Minor Stamina##7457 |goto Stormwind City/0 42.94,64.65
step
create 20 Enchant Bracer - Minor Health##7418,Enchanting,90
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Minor Health enchant requires one Strange Dust.
step
cast Disenchant##13262
collect 30 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 90 |or
step
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,100
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Runed Silver Rod |learn Runed Silver Rod##7795 |goto Stormwind City/0 42.94,64.65
stickystart "Collect_Greater_Magic_Essence_101"
stickystart "Collect_Silver_Rod_101"
stickystart "Collect_Shadowgem_101"
step
cast Disenchant##13262
collect 6 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 101 |or
step
label "Collect_Greater_Magic_Essence_101"
cast Disenchant##13262 |notinsticky
collect 3 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 101 |or
step
label "Collect_Silver_Rod_101"
collect 1 Silver Rod##6338 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Silver bar and 2 Rough Grinding Stones to craft.
'|complete skill("Enchanting") >= 101 |or
step
label "Collect_Shadowgem_101"
collect 1 Shadowgem##1210 |or
|tip Farm it with Mining or purchase it from the auction house.
'|complete skill("Enchanting") >= 101 |or
step
create 1 Runed Silver Rod##7795,Enchanting,101
|tip Save this, you will need it later.
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Greater Magic Wand |learn Greater Magic Wand##14807 |goto Stormwind City/0 42.94,64.65
step
cast Disenchant##13262
collect 9 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 110 |or
step
Enter the building |goto Stormwind City/0 43.68,63.87 < 5 |walk
talk Jessara Cordell##1318
|tip Inside the building.
buy 9 Simple Wood##4470 |goto Stormwind City/0 42.81,64.39 |or
'|complete skill("Enchanting") >= 110 |or
step
create 9 Greater Magic Wand##14807,Enchanting,110
step
Enter the building |goto Ashenvale 35.64,50.99 < 10 |walk
talk Dalria##3954
|tip Inside the building.
buy Formula: Enchant Cloak - Minor Agility##11039 |goto Ashenvale 35.12,52.12 |or 2
buy Formula: Enchant Bracer - Lesser Strength##11101 |goto Ashenvale 35.12,52.12 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
'|complete skill("Enchanting") >= 165 |or
step
use the Formula: Enchant Cloak - Minor Agility##11039
Train Enchant Cloak - Minor Agility |learn Enchant Cloak - Minor Agility##13419
step
cast Disenchant##13262
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 135 |or
step
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,135
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Strange Dust",{
author="support@zygorguides.com",
},[[
step
Disenchant level 5-20 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Small Glimmering Shards instead of Strange Dust.
collect Strange Dust##10940 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Magic Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 3-12 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Strange Dust instead of Lesser Magic Essence.
collect Lesser Magic Essence##10938 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Magic Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 9-21 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Strange Dust instead of Greater Magic Essence.
|tip You can turn 3 Lesser Magic Essences into a Greater Magic Essence.
collect Greater Magic Essence##10939 |n
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Lesser Eternal Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Greater Eternal Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Small Brilliant Shard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Large Brilliant Shard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Illusion Dust")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Astral Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 20-25 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Lesser Astral Essence##10998 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Astral Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 20-30 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Greater Astral Essence##11082 |n
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Soul Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Lesser Mystic Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Greater Mystic Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Vision Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Lesser Nether Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Greater Nether Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Dream Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Greater Nether Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Lesser Nether Essence")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Engineering (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Engineering") > 0 and skill("Engineering") < 375 end,
description="This guide will walk you through leveling your Engineering skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilliam Sparkspindle##5518
Train Apprentice Engineering |skillmax Engineering,75 |goto Stormwind City/0 62.08,30.31
step
label "Begin_Profession_Leveling"
talk Billibub Cogspinner##5519
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto Stormwind City/0 62.39,29.88 |or
|tip Save this, you will need it for future steps.
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 30 |only if default |or
'|complete skill("Engineering") >= 45 |only if Gnome |or
step
create 60 Rough Blasting Powder##3918,Engineering,60 total |or
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
create 1 Rough Blasting Powder##3918,Engineering,30 |only if default |or
create 1 Rough Blasting Powder##3918,Engineering,45 |only if Gnome |or
|tip Save at least 60 of these, you will need them for future steps.
step
talk Lilliam Sparkspindle##5518
Train Handful of Copper Bolts |learn Handful of Copper Bolts##3922 |goto Stormwind City/0 62.08,30.31
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 30 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 30 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 50 |only if default |or
'|complete skill("Engineering") >= 65 |only if Gnome |or
step
create 30 Handful of Copper Bolts##3922,Engineering,30 total |goto Stormwind City/0 62.08,30.31 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
create 30 Handful of Copper Bolts##3922,Engineering,50 |goto Stormwind City/0 62.08,30.31 |only if default |or
create 30 Handful of Copper Bolts##3922,Engineering,65 |goto Stormwind City/0 62.08,30.31 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save at least 30 of these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Handful of Copper Bolts requires 1 copper bar.
step
talk Lilliam Sparkspindle##5518
Train Arclight Spanner |learn Arclight Spanner##7430 |goto Stormwind City/0 62.08,30.31
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 6 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 6 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 51 or itemcount(6219) < 1 |only if default |or
'|complete skill("Engineering") >= 66 or itemcount(6219) < 1 |only if Gnome |or
step
create 1 Arclight Spanner##7430,Engineering,51 |goto Stormwind City/0 62.08,30.31 |only if default |or
create 1 Arclight Spanner##7430,Engineering,66 |goto Stormwind City/0 62.08,30.31 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
step
talk Lilliam Sparkspindle##5518
Train Rough Copper Bomb |learn Rough Copper Bomb##3923 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Handful_of_Copper_Bolts_75"
stickystart "Collect_Copper_Bar_75"
stickystart "Collect_Linen_Cloth_75"
step
collect 60 Rough Blasting Powder##4357 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Handful_of_Copper_Bolts_75"
collect 30 Handful of Copper Bolts##4359 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Copper_Bar_75"
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 30 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 30 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Linen_Cloth_75"
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 30 Linen Cloth##2589 |or |goto Westfall 44.55,25.01
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
create 30 Rough Copper Bomb##3923,Engineering,75 |goto Stormwind City/0 62.08,30.31 |only if default |or
create 30 Rough Copper Bomb##3923,Engineering,90 |goto Stormwind City/0 62.08,30.31 |only if Gnome |or
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Rough Copper Bomb requires 2 Rough Blasting Powder, 1 Handful of Copper Bolts, 1 Copper Bar, and 1 Linen Cloth.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilliam Sparkspindle##5518
Train Journeyman Engineering |skillmax Engineering,150 |goto Stormwind City/0 62.08,30.31
step
talk Lilliam Sparkspindle##5518
Train Coarse Blasting Powder |learn Coarse Blasting Powder##3929 |goto Stormwind City/0 62.08,30.31
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 95 |only if default |or
'|complete skill("Engineering") >= 110 |only if Gnome |or
step
create 60 Coarse Blasting Powder##3929,Engineering,60 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
create 1 Coarse Blasting Powder##3929,Engineering,95 |only if default |or
create 1 Coarse Blasting Powder##3929,Engineering,110 |only if Gnome |or
|tip Save 60 of these, they will be used in a later schematic.
step
talk Lilliam Sparkspindle##5518
Train Coarse Dynamite |learn Coarse Dynamite##3931 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Linen_Cloth_100"
step
collect 60 Coarse Blasting Powder##4364 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
label "Collect_Linen_Cloth_100"
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 20 Linen Cloth##2589 |or |goto Westfall 44.55,25.01
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
create 20 Coarse Dynamite##3931,Engineering,100 |only if default |or
create 20 Coarse Dynamite##3931,Engineering,115 |only if Gnome |or
|tip You may need to create more or less of these.
|tip Each additional Coarse Dynamite requires 3 Coarse Blasting Powder and 1 Linen Cloth.
step
talk Lilliam Sparkspindle##5518
Train Silver Contact |learn Silver Contact##3973 |goto Stormwind City/0 62.08,30.31
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 75 Mining to collect these.
collect 5 Silver Ore##2775 |n
|tip Smelt the ore at a forge.
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 105 |only if default |or
'|complete skill("Engineering") >= 120 |only if Gnome |or
step
create 5 Silver Contact##3973,Engineering,105 |only if default |or
create 5 Silver Contact##3973,Engineering,120 |only if Gnome |or
step
talk Lilliam Sparkspindle##5518
Train Bronze Tube |learn Bronze Tube##3938 |goto Stormwind City/0 62.08,30.31
step
label "Collect_Bronze_Bar_125"
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 25 Copper Ore##2770 |or
|tip Save these for later.
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 125 |only if default |or
'|complete skill("Engineering") >= 140 |only if Gnome |or
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 25 Tin Ore##2771 |n
|tip Combine the Copper and Tin Ore at a forge.
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 125 |only if default |or
'|complete skill("Engineering") >= 140 |only if Gnome |or
step
talk Billibub Cogspinner##5519
|tip Inside the building.
buy 25 Weak Flux##2880 |goto Stormwind City/0 62.39,29.88 |or
'|complete skill("Engineering") >= 125 |only if default |or
'|complete skill("Engineering") >= 140 |only if Gnome |or
step
create 10 Bronze Tube##3938,Engineering,10 total |goto Stormwind City/0 62.08,30.31 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
create 15 Bronze Tube##3938,Engineering,125 |goto Stormwind City/0 62.08,30.31 |only if default |or
create 15 Bronze Tube##3938,Engineering,140 |goto Stormwind City/0 62.08,30.31 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save at least 10 of these, you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Bronze Tube requires 2 Bronze Bars and 1 Weak Flux.
step
talk Lilliam Sparkspindle##5518
Train Standard Scope |learn Standard Scope##3978 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Moss_Agate_135"
step
collect 10 Bronze Tube##4371 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
label "Collect_Moss_Agate_135"
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect Tin Ore nodes and 75 to collect Silver Ore nodes.
collect 10 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
create 10 Standard Scope##3978,Engineering,135 |only if default |or
create 10 Standard Scope##3978,Engineering,150 |only if Gnome |or
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("First Aid") > 0 and skill("First Aid") < 375 end,
description="This guide will walk you through leveling your First Aid skill from 1-375.",
},[[
step
talk Shaina Fuller##2327
|tip Inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto Stormwind City/0 53.01,44.64
step
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 50 Linen Cloth##2589 |or |goto Westfall 44.55,25.01
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 40 |or
step
create 50 Linen Bandage##3275,First Aid,40
step
talk Shaina Fuller##2327
|tip Inside the building.
Train Heavy Linen Bandage |learn Heavy Linen Bandage##3276 |goto Stormwind City/0 53.01,44.64
step
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 80 Linen Cloth##2589 |or |goto Westfall 44.55,25.01
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 70 |or
step
create 40 Heavy Linen Bandage##3276,First Aid,70
step
talk Shaina Fuller##2327
|tip Inside the building.
Train Journeyman First Aid |skillmax First Aid,150 |goto Stormwind City/0 53.01,44.64
step
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 50 Linen Cloth##2589 |or |goto Westfall 44.55,25.01
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 80 |or
step
create 25 Heavy Linen Bandage##3276,First Aid,80
step
talk Shaina Fuller##2327
|tip Inside the building.
Train Wool Bandage |learn Wool Bandage##3277 |goto Stormwind City/0 53.01,44.64
step
Follow the road up |goto Redridge Mountains 35.71,43.17 < 15 |only if walking
Continue following the road |goto 47.06,30.39 < 15 |only if walking
Follow the path up |goto 40.87,15.00 < 10 |only if walking
Kill Blackrock enemies around this area
collect 60 Wool Cloth##2592 |or |goto 36.22,9.93
|tip You can also purchase them from the Auction House.
You can find more inside the cave at [33.21,6.91]
'|complete skill("First Aid") >= 115 |or
step
create 60 Wool Bandage##3277,First Aid,115
step
talk Shaina Fuller##2327
|tip Inside the building.
Train Heavy Wool Bandage |learn Heavy Wool Bandage##3278 |goto Stormwind City/0 53.01,44.64
step
Follow the road up |goto Redridge Mountains 35.71,43.17 < 15 |only if walking
Continue following the road |goto 47.06,30.39 < 15 |only if walking
Follow the path up |goto 40.87,15.00 < 10 |only if walking
Kill Blackrock enemies around this area
collect 110 Wool Cloth##2592 |or |goto 36.22,9.93
|tip You can also purchase them from the Auction House.
You can find more inside the cave at [33.21,6.91]
'|complete skill("First Aid") >= 150 |or
step
create 55 Heavy Wool Bandage##3278,First Aid,150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Fishing (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Fishing") > 0 and skill("Fishing") < 300 end,
description="This guide will walk you through leveling your Fishing skill from 1-300.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Arnold Leland##5493
Train Apprentice Fishing |skillmax Fishing,75 |goto Stormwind City/0 45.64,58.43
step
talk Catherine Leland##5494
buy Fishing Pole##6256 |goto 45.77,58.58 |or
|tip You need to be able to equip a fishing pole in order to fish.
'|complete skill("Fishing") >= 300 |or
step
talk Catherine Leland##5494
buy 10 Shiny Bauble##6529 |goto 45.77,58.58 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 55 |or
step
Fish in the Water
|tip Use the "Fishing" skill in your spell book.
|tip Equip the Fishing Pole in your bags.
use the Shiny Bauble##6529+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 55 in Fishing |skill Fishing,55 |goto Elwynn Forest 33.70,62.97
step
talk Catherine Leland##5494
buy Strong Fishing Pole##6365 |goto Stormwind City/0 45.77,58.58
|tip This is a limited supply item.
|tip If she doesn't have it for sale, check the Auction House.
|tip If you can't get one, you can skip this step.
step
Fish in the Water
|tip Equip the "Strong Fishing Pole", if you were able to get one.
use the Shiny Bauble##6529+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 75 in Fishing |skill Fishing,75 |goto 45.96,58.53
step
talk Arnold Leland##5493
Train Journeyman Fishing |skillmax Fishing,150 |goto 45.64,58.43
step
talk Catherine Leland##5494
buy 10 Nightcrawlers##6530 |goto 45.77,58.58 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 150 |or
step
Fish in the Water
use the Nightcrawlers##6530+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 150 in Fishing |skill Fishing,150 |goto Redridge Mountains 29.69,56.28
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Golden Darter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Figluster's Mudfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Icefin Bluefish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Brilliant Smallfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Slitherskin Mackerel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Rainbow Fin Albacore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Longjaw Mud Snapper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Sagefish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Bristle Whisker Catfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Mithril Head Trout")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Rockscale Cod")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Sunscale Salmon")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Herbalism (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Herbalism") > 0 and skill("Herbalism") < 375 end,
description="This guide will walk you through leveling your Herbalism skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Tannysa##5566
Train Apprentice Herbalism |skillmax Herbalism,75 |goto Stormwind City/0 44.74,77.11
step
map Elwynn Forest
path	follow smart;	loop on;	ants curved;	dist 30
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
Reach Skill 50 in Herbalism |skill Herbalism,50
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
map Elwynn Forest
path	follow smart;	loop on;	ants curved;	dist 30
path	37.69,50.56	37.74,52.72	40.46,52.58	44.68,49.88	47.75,50.98
path	50.11,53.78	51.22,59.12	53.58,60.05	55.86,57.19	58.11,58.67
path	61.20,55.26	63.90,54.16	65.95,58.60	68.39,54.25	67.30,49.51
path	66.94,46.11	64.93,39.76	68.35,38.37	73.03,36.59	78.22,39.11
path	80.09,41.77	81.52,47.88	81.14,54.53	84.76,60.10	88.26,63.13
path	89.58,67.45	86.13,79.13	83.85,81.99	79.68,75.80	74.93,72.40
path	71.73,71.92	66.40,71.08	64.94,72.55	60.59,74.44	58.98,78.43
path	55.19,81.63	51.23,81.44	50.22,73.66	44.38,68.40	42.59,67.01
path	39.55,56.74
Reach Skill 75 in Herbalism |skill Herbalism,75
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Tannysa##5566
Train Journeyman Herbalism |skillmax Herbalism,150 |goto Stormwind City/0 44.74,77.11
step
map Loch Modan
path	follow smart;	loop on;	ants curved;	dist 30
path	40.49,37.53	40.59,34.21	40.62,31.51	42.55,17.23	47.47,22.19
path	50.74,28.53	55.34,27.94	56.36,15.76	62.98,23.92	65.54,30.38
path	68.61,50.11	63.36,56.97	56.49,65.33	49.71,69.45	42.94,61.42
path	40.69,53.45	38.36,47.24	35.90,38.71
Reach Skill 115 in Herbalism |skill Herbalism,115
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	46.75,25.55	51.58,29.02	56.21,30.36	59.67,33.23	62.46,34.02
path	61.92,38.94	58.55,43.68	56.51,48.27	44.88,34.82	41.25,33.98
path	35.44,31.57	31.52,36.24	26.99,34.94	18.37,36.35	13.78,37.41
path	14.84,33.80	18.22,32.79	19.10,26.35	21.55,27.19	24.28,28.73
path	27.93,30.36	32.61,27.99	35.45,24.60	38.43,23.41	40.84,24.23
Reach Skill 140 in Herbalism |skill Herbalism,140
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Silverleaf")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Peacebloom",{
author="support@zygorguides.com",
},[[
step
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Peacebloom##2447 |n
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Earthroot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Mageroyal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Stranglekelp")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Briarthorn",{
author="support@zygorguides.com",
},[[
step
map Loch Modan
path follow smart; loop on; ants curved; dist 20
path	50.11,70.98	56.14,64.90	60.73,61.95	63.09,57.29	64.59,43.34
path	58.98,33.49	55.48,28.48	53.87,22.04	57.70,16.70	61.33,17.00
path	63.45,23.61	63.96,28.94	67.27,33.55	71.77,36.88	74.64,31.08
path	76.86,42.55	75.17,53.91	77.54,57.68	77.01,64.32	78.39,70.75
path	76.62,73.82	73.00,71.84	67.09,75.89	58.35,76.95	55.16,77.71
path	51.86,73.52
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Briarthorn##2450 |n
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Swiftthistle")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Bruiseweed",{
author="support@zygorguides.com",
},[[
step
label "Bruiseweed_1"
map Ashenvale
path follow smart; loop off; dist 20
path	30.47,44.71	27.77,48.81	25.72,50.64	28.38,54.47	34.66,54.20
path	35.41,56.86	34.85,58.62	32.71,59.66	34.71,59.96	38.06,62.62
path	40.48,61.75	39.97,65.16	41.82,64.95	43.85,63.15	47.09,61.20
path	48.42,60.26	49.98,59.22	54.29,60.93	56.36,63.51	57.82,64.38
path	59.14,70.90	60.56,73.42	69.78,74.49	71.98,73.86	74.94,73.92
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 100 Herbalism skill to gather these.
collect Bruiseweed##2453 |n
'|goto 74.94,73.92 < 20 |noway |c
step
map Ashenvale
path follow smart; loop off; dist 20
path	74.94,73.92	71.98,73.86	69.78,74.49	60.56,73.42	59.14,70.90
path	57.82,64.38	56.36,63.51	54.29,60.93	49.98,59.22	48.42,60.26
path	47.09,61.20	43.85,63.15	41.82,64.95	39.97,65.16	40.48,61.75
path	38.06,62.62	34.71,59.96	32.71,59.66	34.85,58.62	35.41,56.86
path	34.66,54.20	28.38,54.47	25.72,50.64	27.77,48.81	30.47,44.71
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 100 Herbalism skill to gather these.
collect Bruiseweed##2453 |n
'|goto 30.47,44.71 < 20 |noway |c |next "Bruiseweed_1"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Wild Steelbloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Grave Moss")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Kingsblood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Liferoot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Fadeleaf")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Goldthorn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Khadgar's Whisker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Wintersbite")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Wildvine")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Firebloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Purple Lotus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Arthas' Tears")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Sungrass")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Blindweed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Ghost Mushroom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Gromsblood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Golden Sansam")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Dreamfoil")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Mountain Silversage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Plaguebloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Icecap")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Black Lotus")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Inscription (1-350)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Inscription") > 0 and skill("Inscription") < 350 end,
description="This guide will walk you through leveling your Inscription skill from 1-350.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Apprentice Inscription |skillmax Inscription,75 |goto Stormwind City/0 49.82,74.82
step
label "Begin_Profession_Leveling_Classic"
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 62 Alabaster Pigment##39151 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Alabaster Pigment can be Milled from Earthroot, Peacebloom, and Silverleaf.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 19 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Ivory Ink |learn Ivory Ink##3173 |goto Stormwind City/0 49.82,74.82
step
create 18 Ivory Ink##52738,Inscription,18 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Inscription") >= 19 |or
step
create 1 Ivory Ink##52738,Inscription,19
|tip Save at least 18 of these, you will need them for future steps.
step
collect 16 Ivory Ink##37101 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 35 |or
step
talk Stanly McCormick##30730
buy 16 Light Parchment##39354 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 35 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Scroll of Stamina |learn Scroll of Stamina##45382 |goto Stormwind City/0 49.82,74.82
step
create 16 Scroll of Stamina##45382,Inscription,35
|tip You may need to create more or less of these.
|tip Each additional Scroll of Stamina requires 1 Ivory Ink and 1 Light Parchment.
step
collect 44 Alabaster Pigment##39151 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 53 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Moonglow Ink |learn Moonglow Ink##52843 |goto Stormwind City/0 49.82,74.82
step
create 22 Moonglow Ink##52843,Inscription,22 total
|tip Save these, you will need them for future steps.
step
create 1 Moonglow Ink##52843,Inscription,53
|tip Save at least 22 of these, you will need them for future steps.
step
collect 22 Moonglow Ink##39469 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 75 |or
step
talk Stanly McCormick##30730
buy 44 Light Parchment##39354 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 75 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Armor Vellum |learn Armor Vellum##52739 |goto Stormwind City/0 49.82,74.82
step
create 22 Armor Vellum##52739,Inscription,75
|tip You may need to create more or less of these.
|tip Each additional Armor Vellum requires 1 Moonglow Ink and 2 Light Parchment.
|tip Save these and place high-value enchants on them.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Journeyman Inscription |skillmax Inscription,150 |goto Stormwind City/0 49.82,74.82
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Midnight Ink |learn Midnight Ink##53462 |goto Stormwind City/0 49.82,74.82
step
map Loch Modan
path follow smart; loop off; dist 20
path	48.03,68.82	51.47,69.31	54.73,67.89	59.35,63.18	62.24,59.85
path	64.11,54.95	67.40,49.93	67.83,45.31	66.61,41.14	63.02,31.38
path	61.91,22.17	59.73,16.49	55.46,15.29	53.28,10.94	49.72,14.09
path	46.36,14.30	42.83,10.59	41.13,12.44	41.23,14.88	40.17,23.46
path	40.38,29.51	40.99,35.44	40.87,42.34
click Mageroyal##1620+
|tip They look like bushy pink flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 42 Dusky Pigment##39334 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Dusky Pigment can be Milled from Briarthorn, Bruiseweed, Mageroyal, Stranglekelp, and Swiftthistle.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 80 |or
step
create 21 Midnight Ink##53462,Inscription,21 total
|tip Save at least 20 of these, you will need them for future steps.
step
create 1 Midnight Ink##53462,Inscription,80
|tip You may need to create more or less of these.
|tip Each additional Midnight Ink requires 2 Dusky Pigment.
step
collect 20 Midnight Ink##53462 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 100 |or
step
talk Stanly McCormick##30730
buy 20 Light Parchment##39354 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 100 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 100 Inscription Skill |skill Inscription,100
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	46.75,25.55	51.58,29.02	56.21,30.36	59.67,33.23	62.46,34.02
path	61.92,38.94	58.55,43.68	56.51,48.27	44.88,34.82	41.25,33.98
path	35.44,31.57	31.52,36.24	26.99,34.94	18.37,36.35	13.78,37.41
path	14.84,33.80	18.22,32.79	19.10,26.35	21.55,27.19	24.28,28.73
path	27.93,30.36	32.61,27.99	35.45,24.60	38.43,23.41	40.84,24.23
click Kingsblood##1624+
|tip They look like bushy purple, pink, and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 80 Golden Pigment##39338 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Golden Pigment can be Milled from Grave Moss, Kingsblood, Liferoot, and Wild Steelbloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 105 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Lion's Ink |learn Lion's Ink##57704 |goto Stormwind City/0 49.82,74.82
step
create 40 Lion's Ink##57704,Inscription,40 total
|tip Save these, you will need them for future steps.
step
create 1 Lion's Ink##57704,Inscription,105
|tip You may need to create more or less of these.
|tip Each additional Lion's Ink requires 2 Dusky Pigment.
step
collect 20 Lion's Ink##43116 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 125 |or
step
talk Stanly McCormick##30730
buy 20 Common Parchment##10648 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 125 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 125 Inscription Skill |skill Inscription,125
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Jewelcrafting (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Jewelcrafting") > 0 and skill("Jewelcrafting") < 375 end,
description="This guide will walk you through leveling your Jewelcrafting skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
label "Begin_Profession_Leveling"
talk Arred##17512
buy 1 Jeweler's Kit##20815 |goto The Exodar/0 45.08,26.13 |or 2
buy 1 Simple Grinder##20824 |goto 45.08,26.13 |or 2
|tip Save this, you will need it for future steps.
'|complete skill("Jewelcrafting") >= 375 |only if default |or
'|complete skill("Jewelcrafting") >= 380 |only if Draenei |or
step
talk Farii##19778
Train Apprentice Jewelcrafting |skillmax Jewelcrafting,75 |goto 44.87,24.23
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 110 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 35 |only if default |or
'|complete skill("Jewelcrafting") >= 40 |only if Draenei |or
step
create 55 Delicate Copper Wire##25255,Jewelcrafting,55 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 51 |only if default |or
'|complete skill("Jewelcrafting") >= 56 |only if Draenei |or
step
create 1 Delicate Copper Wire##25255,Jewelcrafting,35 |only if default |or
create 1 Delicate Copper Wire##25255,Jewelcrafting,40 |only if Draenei |or
|tip Save these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Delicate Copper Wire requires 2 Copper Bars.
step
talk Farii##19778
Train Tigerseye Band |learn Tigerseye Band##32179 |goto The Exodar/0 44.87,24.23
stickystart "Collect_Delicate_Copper_Wire_50"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
label "Collect_Delicate_Copper_Wire_50"
collect 15 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
create 15 Tigerseye Band##32179,Jewelcrafting,50 |only if default |or
create 15 Tigerseye Band##32179,Jewelcrafting,55 |only if Draenei |or
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Farii##19778
Train Journeyman Jewelcrafting |skillmax Jewelcrafting,150 |goto The Exodar/0 44.87,24.23
step
talk Farii##19778
Train Bronze Setting |learn Bronze Setting##25278 |goto The Exodar/0 44.87,24.23
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 50 Copper Ore##2770 |or
|tip Save these for the next step.
collect 100 Bronze Bar##2841 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 80 |only if default |or
'|complete skill("Jewelcrafting") >= 85 |only if Draenei |or
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 50 Tin Ore##2771 |n
|tip Smelt the ore at a forge.
collect 100 Bronze Bar##2841 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 80 |only if default |or
'|complete skill("Jewelcrafting") >= 85 |only if Draenei |or
step
create 50 Bronze Setting##25278,Jewelcrafting,50 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
create 1 Bronze Setting##25278,Jewelcrafting,80 |only if default |or
create 1 Bronze Setting##25278,Jewelcrafting,85 |only if Draenei |or
|tip Save these, you will need them for future steps.
step
talk Farii##19778
Train Gloom Band |learn Gloom Band##25287 |goto The Exodar/0 44.87,24.23
stickystart "Collect_Bronze_Setting_100"
stickystart "Collect_Delicate_Copper_Wire_100"
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 40 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 100 |or |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
step
label "Collect_Bronze_Setting_100"
collect 20 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
step
label "Collect_Delicate_Copper_Wire_100"
collect 40 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
step
create 20 Gloom Band##25287,Jewelcrafting,100 |only if default |or
create 20 Gloom Band##25287,Jewelcrafting,105 |only if Draenei |or
|tip You may need to create more or less of these.
|tip Each additional Gloom Band requires 2 Shadowgems and 1 Delicate Copper Wire.
step
talk Farii##19778
Train Ring of Twilight Shadows |learn Ring of Twilight Shadows##25318 |goto The Exodar/0 44.87,24.23
stickystart "Collect_Shadowgem_110"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 10 Copper Ore##2770 |or
|tip Save these for later.
collect 20 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 10 Tin Ore##2771 |n
|tip Smelt the ore at a forge.
collect 20 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
label "Collect_Shadowgem_110"
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 20 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110 |only if default |or
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,115 |only if Draenei |or
step
talk Farii##19778
Train Heavy Stone Statue |learn Heavy Stone Statue##32807 |goto The Exodar/0 44.87,24.23
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	76.64,42.59	75.00,44.93	72.65,48.07	70.58,55.05	69.99,58.40
path	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15	69.15,72.54
path	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74	56.16,71.89
path	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16	40.39,71.86
path	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64	33.70,56.77
path	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68	31.68,45.41
path	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12	20.02,35.80
path	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65	28.65,14.18
path	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23	36.35,24.61
path	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02	48.08,33.60
path	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13	58.19,32.50
path	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58	64.49,26.56
path	66.77,27.64	70.39,27.07	70.47,30.74	71.07,38.63
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 125 Mining to collect these.
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 120 |only if default |or
'|complete skill("Jewelcrafting") >= 125 |only if Draenei |or
step
create 10 Heavy Stone Statue##32807,Jewelcrafting,120 |only if default |or
create 10 Heavy Stone Statue##32807,Jewelcrafting,125 |only if Draenei |or
step
talk Neal Allen##1448
|tip Inside the building.
buy 1 Design: Pendant of the Agate Shield##20970 |goto Wetlands/0 10.6,56.8 |or
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
use the Design: Pendant of the Agate Shield##20970
Train Pendant of the Agate Shield |learn Pendant of the Agate Shield##25610
stickystart "Collect_Bronze_Setting_150"
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 30 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
label "Collect_Bronze_Setting_150"
collect 30 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
create 30 Pendant of the Agate Shield##25610,Jewelcrafting,150 |only if default |or
create 30 Pendant of the Agate Shield##25610,Jewelcrafting,155 |only if Draenei |or
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leatherworking (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Leatherworking") > 0 and skill("Leatherworking") < 375 end,
description="This guide will walk you through leveling your Leatherworking skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Apprentice Leatherworking |skillmax Leatherworking,75 |goto Stormwind City/0 71.68,62.99
step
label "Begin_Profession_Leveling"
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 57 Ruined Leather Scraps##2934 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
'|complete skill("Leatherworking") >= 20 |or
step
create 19 Light Leather##2881,19 total |or
|tip Save these, you will need them for future steps.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
'|complete skill("Leatherworking") >= 20 |or
step
create 1 Light Leather##2881,Leatherworking,20
|tip Save at least 19 of these, you will need them for future steps.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 40 Light Leather##2318 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 45 |or
step
create 40 Light Armor Kit##2152,Leatherworking,45
|tip You may need to create more or less of these.
|tip Each additional Light Armor Kit requires 1 Light Leather.
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 42 Light Leather##2318 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 55 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 21 Coarse Thread##2320 |goto Stormwind City/0 71.57,62.76 |or
'|complete skill("Leatherworking") >= 55 |or
step
create 21 Handstitched Leather Cloak##9058,Leatherworking,55
|tip You may need to create more or less of these.
|tip Each additional Handstitched Leather Cloak requires 2 Light Leather and 1 Coarse Thread.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Journeyman Leatherworking |skillmax Leatherworking,150 |goto Stormwind City/0 71.68,62.99
step
talk Simon Tanner##5564
|tip Inside the building.
Train Embossed Leather Gloves |learn Embossed Leather Gloves##3756 |goto Stormwind City/0 71.68,62.99
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 165 Light Leather##2318 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 100 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 180 Coarse Thread##2320 |goto Stormwind City/0 71.57,62.76 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 100 |or
step
create 55 Embossed Leather Gloves##3756,Leatherworking,100
|tip You may need to create more or less of these.
|tip Each additional Embossed Leather Glove requires 3 Light Leather and 2 Coarse Thread.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Fine Leather Belt |learn Fine Leather Belt##3763 |goto Stormwind City/0 71.68,62.99
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 210 Light Leather##2318 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 125 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 70 Coarse Thread##2320 |goto Stormwind City/0 71.57,62.76 |or
|tip You bought these in a previous step.
'|complete skill("Leatherworking") >= 125 |or
step
create 35 Fine Leather Belt##3763,Leatherworking,125
|tip You may need to create more or less of these.
|tip Each additional Fine Leather Belt requires 6 Light Leather and 2 Coarse Thread.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Dark Leather Boots |learn Dark Leather Boots##2167 |goto Stormwind City/0 71.68,62.99
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 72 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.12,31.76
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 137 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 36 Fine Thread##2321 |goto Stormwind City/0 71.57,62.76 |or 2
buy 18 Gray Dye##4340 |goto Stormwind City/0 71.57,62.76 |or 2
'|complete skill("Leatherworking") >= 137 |or
step
create 18 Dark Leather Boots##2167,Leatherworking,137
|tip You may need to create more or less of these.
|tip Each additional Dark Leather Boot requires 4 Medium Leather, 2 Fine Thread, and 1 Gray Dye.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Lockpicking\\Lockpicking (1-300)")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Mining") > 0 and skill("Mining") < 375 end,
description="This guide will walk you through leveling your Mining skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Stormwind City/0 52.41,16.18 < 5 |walk
talk Gelman Stonehand##5513
|tip Upstairs inside the building.
Train Apprentice Mining |skillmax Mining,75 |goto Stormwind City/0 51.19,17.31
step
talk Brooke Stonebraid##5514
|tip Inside the building.
buy Mining Pick##2901 |goto 51.02,16.86
|tip You must have a Mining Pick in your bags to be able to gather ore.
step
map Elwynn Forest
path	follow smart;	loop on;	ants curved;	dist 10
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Reach Skill 65 in Mining |skill Mining,65
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
|tip You can smelt Copper Ore from skill level 1-47 for additional points.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Stormwind City/0 52.41,16.18 < 5 |walk
talk Gelman Stonehand##5513
|tip Upstairs inside the building.
Train Journeyman Mining |skillmax Mining,150 |goto Stormwind City/0 51.19,17.31
step
map Wetlands
path	follow smart;	loop on;	ants curved;	dist 10
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Reach Skill 125 in Mining |skill Mining,125
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
|tip You can smelt Bronze Bars with leftover Tin and Copper Bars from skill level 65-90 for additional points.
|tip You can smelt Silver Ore from skill level 75-112 for additional points.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Copper Ore",{
author="support@zygorguides.com",
},[[
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Copper Ore##2770 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rough Stone",{
author="support@zygorguides.com",
},[[
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Rough Stone##2835 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Tin Ore",{
author="support@zygorguides.com",
},[[
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect Tin Ore##2771 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Coarse Stone",{
author="support@zygorguides.com",
},[[
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect Coarse Stone##2836 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Silver Ore",{
author="support@zygorguides.com",
},[[
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 75 Mining to collect these.
collect Silver Ore##2775 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Moss Agate",{
author="support@zygorguides.com",
},[[
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	34.74,16.82	36.33,18.75	39.75,20.23	43.44,23.27	46.05,22.77
path	48.20,23.86	49.91,23.03	53.21,23.66	55.80,22.78	57.30,23.64
path	58.74,23.33	60.36,21.58	61.25,24.78	63.07,26.13	64.55,28.11
path	63.58,30.34	64.11,33.78	65.20,39.01	67.23,42.83	71.03,45.91
path	70.92,50.14	67.86,53.66	67.02,56.69	66.31,60.65	66.18,65.59
path	67.37,73.31	59.48,72.47	57.49,74.14	56.16,78.29	54.13,78.16
path	54.29,74.22	54.19,68.98	56.08,60.41	56.30,58.46	55.28,53.86
path	53.93,48.40	52.05,43.80	48.11,40.65	44.62,39.47	42.08,40.16
path	38.66,37.95	34.42,38.78
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect Tin Ore nodes and 75 to collect Silver Ore nodes.
collect Moss Agate##1206 |n
|tip These are a rare drop from Tin and Silver Ore nodes.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Iron Ore")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Heavy Stone",{
author="support@zygorguides.com",
},[[
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	76.64,42.59	75.00,44.93	72.65,48.07	70.58,55.05	69.99,58.40
path	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15	69.15,72.54
path	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74	56.16,71.89
path	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16	40.39,71.86
path	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64	33.70,56.77
path	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68	31.68,45.41
path	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12	20.02,35.80
path	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65	28.65,14.18
path	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23	36.35,24.61
path	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02	48.08,33.60
path	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13	58.19,32.50
path	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58	64.49,26.56
path	66.77,27.64	70.39,27.07	70.47,30.74	71.07,38.63
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 125 Mining to collect these.
collect Heavy Stone##2838 |n
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Gold Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Mithril Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Solid Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Truesilver Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Dark Iron Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Thorium Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Dense Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Guardian Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Elementium Ore")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Skinning (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Skinning") > 0 and skill("Skinning") < 375 end,
description="This guide will walk you through leveling your Skinning skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Ironforge/0 41.98,33.37 < 7 |only if walking
Enter the building |goto Ironforge/0 40.36,35.48 < 5 |walk
talk Balthus Stoneflayer##6291
|tip Downstairs inside the building.
Train Apprentice Skinning |skillmax Skinning,75 |goto Ironforge/0 39.86,32.51
step
talk Bombus Finespindle##5128
|tip Downstairs inside the building.
buy Skinning Knife##7005 |goto 39.61,34.47
|tip You must have a Skinning Knife in your bags to be able to skin enemies.
step
map Dun Morogh
path follow loose;	loop;	ants curved;	dist 30
path	43.96,46.88		40.38,47.16		36.62,45.87		32.97,48.03
path	28.87,48.65		29.08,43.33		32.55,37.52		39.71,31.71
path	43.35,31.77		44.37,36.99
Kill enemies around this area
|tip Skin their corpses.
Reach Skill 75 in Skinning |skill Skinning,75
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to become a Journeyman in a profession.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Ironforge/0 41.98,33.37 < 7 |only if walking
Enter the building |goto Ironforge/0 40.36,35.48 < 5 |walk
talk Balthus Stoneflayer##6291
|tip Downstairs inside the building.
Train Journeyman Skinning |skillmax Skinning,150 |goto Ironforge/0 39.86,32.51
step
Kill enemies around this area
|tip Skin their corpses.
Reach Skill 125 in Skinning |skill Skinning,125 |goto Loch Modan 54.84,37.76
You can find more around: |notinsticky
[Loch Modan 63.58,38.31]
[Loch Modan 74.11,40.81]
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Green Whelp Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Black Whelp Scale")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Ruined Leather Scraps",{
author="support@zygorguides.com",
},[[
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect Ruined Leather Scraps##2934 |n |goto Elwynn Forest 41.58,86.96
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Light Leather",{
author="support@zygorguides.com",
},[[
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect Light Leather##2318 |n |goto Elwynn Forest 41.58,86.96
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Thin Kodo Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Light Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Slimy Murloc Scale")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Medium Leather",{
author="support@zygorguides.com",
},[[
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect Medium Leather##2319 |n |goto Hillsbrad Foothills 46.12,31.76
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Medium Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Heavy Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Raptor Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Heavy Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Turtle Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Thick Murloc Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Thick Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Thick Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Worn Dragonscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Scorpid Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Devilsaur Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Rugged Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Warbear Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Green Dragonscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Blue Dragonscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Rugged Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Black Dragonscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Heavy Scorpid Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Core Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Scale of Onyxia")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Red Dragonscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Primal Bat Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Primal Tiger Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Dreamscale")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Tailoring (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Tailoring") > 0 and skill("Tailoring") < 375 end,
description="This guide will walk you through leveling your Tailoring skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train professions.
|tip Use the leveling guides to accomplish this.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Apprentice Tailoring |skillmax Tailoring,75 |goto Stormwind City/0 53.07,81.34
step
label "Begin_Profession_Leveling"
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 204 Linen Cloth##2589 |or |goto Westfall 44.55,25.01
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 50 |or
step
create 102 Bolt of Linen Cloth##2963,Tailoring,102 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 51 |or
step
create 1 Bolt of Linen Cloth##2963,Tailoring,45
|tip Save at least 102 of these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Bolt of Linen Cloth requires 2 Linen Cloth.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Linen Belt |learn Linen Belt##8776 |goto Stormwind City/0 53.07,81.34
step
collect 40 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 70 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 40 Coarse Thread##2320 |goto Stormwind City/0 53.14,81.75 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 70 |or
step
create 40 Linen Belt##8776,Tailoring,70
|tip You may need to make a few more of these.
|tip Each additional Linen Belt requires 1 Bolt of Linen Cloth and 1 Coarse Thread.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Reinforced Linen Cape |learn Reinforced Linen Cape##2397 |goto Stormwind City/0 53.07,81.34
step
collect 10 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 15 Coarse Thread##2320 |goto Stormwind City/0 53.14,81.75 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
create 5 Reinforced Linen Cape##2397,Tailoring,75
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Journeyman Tailoring |skillmax Tailoring,150 |goto Stormwind City/0 53.07,81.34
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Bolt of Woolen Cloth |learn Bolt of Woolen Cloth##2964 |goto Stormwind City/0 53.07,81.34
step
Follow the road up |goto Redridge Mountains 35.71,43.17 < 15 |only if walking
Continue following the road |goto 47.06,30.39 < 15 |only if walking
Follow the path up |goto 40.87,15.00 < 10 |only if walking
Kill Blackrock enemies around this area
collect 135 Wool Cloth##2592 |or |goto 36.22,9.93
You can find more inside the cave at [33.21,6.91]
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 100 |or
step
create 45 Bolt of Woolen Cloth##2964,Tailoring,45 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 106 |or
step
create 1 Bolt of Woolen Cloth##2964,Tailoring,100
|tip Save at least 45 of these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Bolt of Woolen Cloth requires 3 Wool Cloth.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Simple Kilt |learn Simple Kilt##12046 |goto Stormwind City/0 53.07,81.34
step
collect 52 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 110 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 43 Fine Thread##2321 |goto Stormwind City/0 53.14,81.75 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 110 |or
step
create 13 Simple Kilt##12046,Tailoring,110
|tip You may need to make a few more of these.
|tip Each additional Simple Kilt requires 4 Bolts of Linen Cloth and 1 Fine Thread.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Double-stitched Woolen Shoulders |learn Double-stitched Woolen Shoulders##3848 |goto Stormwind City/0 53.07,81.34
step
collect 45 Bolt of Woolen Cloth##2997 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 30 Fine Thread##2321 |goto Stormwind City/0 53.14,81.75 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Linen Cloth",{
author="support@zygorguides.com",
},[[
step
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect Linen Cloth##2589 |n |goto Westfall 44.55,25.01
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Wool Cloth",{
author="support@zygorguides.com",
},[[
step
Follow the road up |goto Redridge Mountains 35.71,43.17 < 15 |only if walking
Continue following the road |goto 47.06,30.39 < 15 |only if walking
Follow the path up |goto 40.87,15.00 < 10 |only if walking
Kill Blackrock enemies around this area
collect Wool Cloth##2592 |n |goto 36.22,9.93
You can find more inside the cave at [33.21,6.91]
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Silk Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Mageweave Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Runecloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Felcloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Mooncloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Spider's Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Thick Spider's Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Shadow Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Ironweb Spider Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Flask of Mojo")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Righteous Orb")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Demonic Rune")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Dark Rune")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Sharp Claw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Ogre Tannin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Small Venom Sac")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Huge Venom Sac")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Iridescent Pearl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Black Pearl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Golden Pearl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Giant Egg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Zesty Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Specialization\\Armorsmith\\Armorsmith Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Specialization\\Weaponsmith\\Weaponsmith Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Specialization\\Weaponsmith\\Master Axesmith Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Specialization\\Weaponsmith\\Master Hammersmith Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Specialization\\Weaponsmith\\Master Swordsmith Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Specialization\\How to Change Blacksmithing Specialization")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Specialization\\Gnomish Engineering\\Gnomish Engineering Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Specialization\\Gnomish Engineering\\Gnome Engineer Membership Card Renewal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Specialization\\Goblin Engineering\\Goblin Engineering Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Specialization\\Goblin Engineering\\Goblin Engineer Membership Card Renewal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Specialization\\How to Change Engineering Specialization")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Leatherworking\\Specialization\\Dragonscale Leatherworking\\Dragonscale Leatherworking Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Leatherworking\\Specialization\\Elemental Leatherworking\\Elemental Leatherworking Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Leatherworking\\Specialization\\Tribal Leatherworking\\Tribal Leatherworking Questline")
