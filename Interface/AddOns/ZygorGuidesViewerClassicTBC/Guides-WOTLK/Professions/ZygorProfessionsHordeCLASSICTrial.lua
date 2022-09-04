local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHCLASSIC") then return end
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
Enter the building |goto Orgrimmar/0 56.48,35.25 < 7 |walk
talk Yelmak##3347
|tip Inside the building.
Train Apprentice Alchemy |skillmax Alchemy,75 |goto Orgrimmar/0 56.84,33.03
stickystart "Collect_Silverleaf_60"
step
label "Begin_Profession_Leveling"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_60"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 60 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 65 Empty Vial##3371 |goto Orgrimmar/0 56.05,34.12 |or
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
talk Yelmak##3347
|tip Inside the building.
Train Journeyman Alchemy |skillmax Alchemy,150 |goto Orgrimmar/0 56.84,33.03
step
talk Yelmak##3347
|tip Inside the building.
Train Lesser Healing Potion |learn Lesser Healing Potion##2337 |goto Orgrimmar/0 56.84,33.03
step
label "Collect_Briarthorn_110"
map Silverpine Forest
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 70 Herbalism to collect these.
collect 65 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 110 |or
'|goto 66.96,79.79 < 20 |noway |c |or
step
map Silverpine Forest
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 70 Herbalism to collect these.
collect 65 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 110 |or
'|goto 49.04,32.38 < 20 |noway |c |next "Collect_Briarthorn_110" |or
step
create 65 Lesser Healing Potion##2337,Alchemy,110
|tip You may need to create more or less of these.
step
talk Yelmak##3347
|tip Inside the building.
Train Healing Potion |learn Healing Potion##3447 |goto Orgrimmar/0 56.84,33.03
stickystart "Collect_Bruiseweed_140"
step
label "Collect_Briarthorn_140"
map Silverpine Forest
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 70 Herbalism to collect these.
collect 35 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 140 |or
'|goto 66.96,79.79 < 20 |noway |c |or
step
map Silverpine Forest
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 70 Herbalism to collect these.
collect 35 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 140 |or
'|goto 49.04,32.38 < 20 |noway |c |next "Collect_Briarthorn_140" |or
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
talk Kor'geld##3348
|tip Inside the building.
buy 35 Leaded Vial##3372 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 140 |or
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
Enter the building |goto Orgrimmar/0 81.56,22.74 < 7 |walk
talk Saru Steelfury##3355
|tip Inside the building.
Train Apprentice Blacksmithing |skillmax Blacksmithing,75 |goto Orgrimmar/0 82.35,22.98
step
label "Begin_Profession_Leveling"
talk Sumi##3356
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto 82.59,23.95 |or
|tip Save this, you will need it later.
'|complete skill("Blacksmithing") >= 375 |or
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 40 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 30 |or
step
create 40 Rough Sharpening Stone##2660,Blacksmithing,30
|tip You may need to create more or less of these.
|tip Each additional Rough Sharpening Stone requires one Rough Stone.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Rough Grinding Stone |learn Rough Grinding Stone##3320 |goto Orgrimmar/0 82.35,22.98
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
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
talk Saru Steelfury##3355
|tip Inside the building.
Train Coarse Sharpening Stone |learn Coarse Sharpening Stone##2665 |goto Orgrimmar/0 82.35,22.98
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
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
talk Saru Steelfury##3355
|tip Inside the building.
Train Journeyman Blacksmithing |skillmax Blacksmithing,150 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Coarse Grinding Stone |learn Coarse Grinding Stone##3326 |goto Orgrimmar/0 82.35,22.98
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
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
talk Saru Steelfury##3355
|tip Inside the building.
Train Runed Copper Belt |learn Runed Copper Belt##2666 |goto Orgrimmar/0 82.35,22.98
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 100 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 100 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 100 |or
step
create 10 Runed Copper Belt##2666,Blacksmithing,100 |goto 82.35,22.98
|tip Stand next to an anvil.
|tip Inside the building.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Silver Rod |learn Silver Rod##7818 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Rough_Grinding_Stone_105"
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
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
create 5 Silver Rod##7818,Blacksmithing,105 |goto 82.35,22.98
|tip Stand next to an anvil.
|tip Inside the building.
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 50 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 110 |or
step
Enter the building |goto Orgrimmar/0 81.62,22.79 < 7 |walk
create 5 Runed Copper Belt##2666,Blacksmithing,110 |goto 82.35,22.98
|tip Stand next to an anvil.
|tip Inside the building.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Rough Bronze Leggings |learn Rough Bronze Leggings##2668 |goto Orgrimmar/0 82.35,22.98
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 45 Copper Ore##2770 |or
|tip Save the ore for the next step.
collect 90 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 125 |or
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 45 Tin Ore##2771 |n
|tip Smelt the Bronze Bars at a forge.
collect 90 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 125 |or
step
create 15 Rough Bronze Leggings##2668,Blacksmithing,125 |goto Orgrimmar/0 82.35,22.98
|tip Stand next to an anvil.
|tip Inside the building.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Heavy Grinding Stone |learn Heavy Grinding Stone##3337 |goto Orgrimmar/0 82.35,22.98
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	78.66,36.13	77.36,41.29	75.00,44.93	72.65,48.07	70.58,55.05
path	69.99,58.40	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15
path	69.15,72.54	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74
path	56.16,71.89	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16
path	40.39,71.86	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64
path	33.70,56.77	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68
path	31.68,45.41	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12
path	20.02,35.80	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65
path	28.65,14.18	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23
path	36.35,24.61	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02
path	48.08,33.60	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13
path	58.19,32.50	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58
path	64.49,26.56	66.77,27.64	70.39,27.07	70.47,30.74	72.89,30.09
path	76.73,29.48	76.70,33.68	79.56,35.45
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
talk Saru Steelfury##3355
|tip Inside the building.
Train Patterned Bronze Bracers |learn Patterned Bronze Bracers##2672 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Coarse_Grinding_Stone_150"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 25 Copper Ore##2770 |or
|tip Save the ore for the next step.
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 150 |or
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 25 Tin Ore##2771 |n
|tip Smelt the Bronze Bars at a forge.
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 150 |or
step
label "Collect_Coarse_Grinding_Stone_150"
collect 20 Coarse Grinding Stone##3478 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 150 |or
step
create 10 Patterned Bronze Bracers##2672,Blacksmithing,150 |goto Orgrimmar/0 82.35,22.98
|tip Stand next to an anvil.
|tip Inside the building.
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
Run up the stairs |goto Orgrimmar/0 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar/0 58.14,53.56 < 7 |walk
talk Zamja##3399
|tip Inside the building.
Train Apprentice Cooking |skillmax Cooking,75 |goto Orgrimmar/0 57.40,53.96
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	46.24,14.08	48.40,14.33	50.51,15.71	52.85,17.40	54.84,19.11
path	55.64,21.23	56.27,24.65	56.55,26.49	56.33,30.28	54.76,33.37
path	53.53,36.24	54.76,39.35	52.82,40.55	51.94,42.55	50.48,43.99
path	48.46,44.47	47.22,43.35	45.66,40.85	45.03,36.20	43.31,33.15
path	41.31,32.48	39.48,33.32	37.75,32.49	36.98,29.96	37.26,26.34
path	37.94,23.38	40.00,20.80	40.35,17.61	42.55,17.05	44.72,17.22
path	45.61,15.87
Kill Boar enemies around this area
collect 55 Chunk of Boar Meat##769 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 50 |or
step
Run up the stairs |goto Orgrimmar/0 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar/0 58.14,53.56 < 7 |walk
create 55 Roasted Boar Meat##2540,Cooking,50 |goto Orgrimmar/0 57.20,53.32
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar/0 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar/0 58.14,53.56 < 7 |walk
talk Zamja##3399
|tip Inside the building.
Train Journeyman Cooking |skillmax Cooking,150 |goto Orgrimmar/0 57.40,53.96
step
Run down the stairs |goto Silverpine Forest 43.09,41.39 < 5 |walk
talk Andrew Hilbert##3556
|tip Downstairs inside the crypt.
buy Recipe: Smoked Bear Meat##6892 |n
use the Recipe: Smoked Bear Meat##6892
Train Smoked Bear Meat |learn Smoked Bear Meat##8607 |goto Silverpine Forest 43.22,40.66
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
Run up the stairs |goto Orgrimmar/0 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar/0 58.14,53.56 < 7 |walk
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
create 30 Smoked Bear Meat##8607,Cooking,80 |goto Orgrimmar/0 57.20,53.32
step
talk Zamja##3399
|tip Inside the building.
Train Boiled Clams |learn Boiled Clams##6499 |goto 57.40,53.96
step
Kill enemies around this area
collect Small Barnacled Clam##5523 |n
use the Small Barnacled Clam##5523
collect 40 Clam Meat##5503 |goto Ashenvale 11.51,28.67 |or
|tip You can also purchase them from the Auction House.
You can find more around here [13.09,25.61]
'|complete skill("Cooking") >= 110 |or
step
Run up the stairs |goto Orgrimmar/0 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar/0 58.14,53.56 < 7 |walk
talk Xen'to##3400
|tip Inside the building.
buy 40 Refreshing Spring Water##159 |goto Orgrimmar/0 57.57,52.90 |or
'|complete skill("Cooking") >= 110 |or
step
create 40 Boiled Clams##6499,Cooking,110 |goto Orgrimmar/0 57.20,53.32
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
step
talk Zamja##3399
|tip Inside the building.
Train Crab Cake |learn Crab Cake##2544 |goto 57.40,53.96
step
label "Collect_Crawler_Meat_130"
map Darkshore
path follow smart; loop off; dist 20
path	35.96,73.13	35.83,71.48	36.59,68.95	36.82,66.80	36.11,65.18
path	36.51,62.47	36.74,60.50	36.04,59.12	36.82,57.15	36.79,54.53
path	36.54,51.15	36.02,48.06	35.72,45.49	35.81,42.27	36.81,38.70
path	36.70,37.48	37.20,36.08	37.26,34.68	40.29,31.37	41.98,32.18
path	42.41,30.58	42.19,28.01	41.82,24.43	42.48,21.08	43.39,21.15
path	44.84,21.63	45.89,20.38	47.44,20.79	48.98,21.11	50.35,21.96
path	52.16,20.84
Kill Crawler enemies along this path
collect 30 Crawler Meat##2674 |or
|tip You can also purchase them from the Auction House.
'|goto 52.16,20.84 < 20 |noway |c |or
'|complete skill("Cooking") >= 130 |or
step
map Darkshore
path follow smart; loop off; dist 20
path	52.16,20.84	50.35,21.96	48.98,21.11	47.44,20.79	45.89,20.38
path	44.84,21.63	43.39,21.15	42.48,21.08	41.82,24.43	42.19,28.01
path	42.41,30.58	41.98,32.18	40.29,31.37	37.26,34.68	37.20,36.08
path	36.70,37.48	36.81,38.70	35.81,42.27	35.72,45.49	36.02,48.06
path	36.54,51.15	36.79,54.53	36.82,57.15	36.04,59.12	36.74,60.50
path	36.51,62.47	36.11,65.18	36.82,66.80	36.59,68.95	35.83,71.48
path	35.96,73.13
Kill Crawler enemies along this path
collect 30 Crawler Meat##2674 |or
|tip You can also purchase them from the Auction House.
'|goto 35.96,73.13 < 20 |noway |c |next "Collect_Crawler_Meat_130"
step
Run up the stairs |goto Orgrimmar/0 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar/0 58.14,53.56 < 7 |walk
talk Xen'to##3400
|tip Inside the building.
buy 30 Mild Spice##2678 |goto Orgrimmar/0 57.57,52.90 |or
'|complete skill("Cooking") >= 130 |or
step
create 30 Crab Cake##2544,Cooking,130 |goto 57.20,53.32
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Chunk of Boar Meat",{
author="support@zygorguides.com",
},[[
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	46.24,14.08	48.40,14.33	50.51,15.71	52.85,17.40	54.84,19.11
path	55.64,21.23	56.27,24.65	56.55,26.49	56.33,30.28	54.76,33.37
path	53.53,36.24	54.76,39.35	52.82,40.55	51.94,42.55	50.48,43.99
path	48.46,44.47	47.22,43.35	45.66,40.85	45.03,36.20	43.31,33.15
path	41.31,32.48	39.48,33.32	37.75,32.49	36.98,29.96	37.26,26.34
path	37.94,23.38	40.00,20.80	40.35,17.61	42.55,17.05	44.72,17.22
path	45.61,15.87
Kill Boar enemies around this area
collect Chunk of Boar Meat##769 |n
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Small Egg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Stringy Wolf Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Meaty Bat Wing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Scorpid Stinger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Coyote Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Strider Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Kodo Meat")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Bear Meat",{
author="support@zygorguides.com",
},[[
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
collect Bear Meat##3173 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crawler Meat",{
author="support@zygorguides.com",
},[[
step
label "Path_One"
map Darkshore
path follow smart; loop off; dist 20
path	35.96,73.13	35.83,71.48	36.59,68.95	36.82,66.80	36.11,65.18
path	36.51,62.47	36.74,60.50	36.04,59.12	36.82,57.15	36.79,54.53
path	36.54,51.15	36.02,48.06	35.72,45.49	35.81,42.27	36.81,38.70
path	36.70,37.48	37.20,36.08	37.26,34.68	40.29,31.37	41.98,32.18
path	42.41,30.58	42.19,28.01	41.82,24.43	42.48,21.08	43.39,21.15
path	44.84,21.63	45.89,20.38	47.44,20.79	48.98,21.11	50.35,21.96
path	52.16,20.84
Kill Crawler enemies along this path
collect Crawler Meat##2674 |n
'|goto 52.16,20.84 < 20 |noway |c
step
map Darkshore
path follow smart; loop off; dist 20
path	52.16,20.84	50.35,21.96	48.98,21.11	47.44,20.79	45.89,20.38
path	44.84,21.63	43.39,21.15	42.48,21.08	41.82,24.43	42.19,28.01
path	42.41,30.58	41.98,32.18	40.29,31.37	37.26,34.68	37.20,36.08
path	36.70,37.48	36.81,38.70	35.81,42.27	35.72,45.49	36.02,48.06
path	36.54,51.15	36.79,54.53	36.82,57.15	36.04,59.12	36.74,60.50
path	36.51,62.47	36.11,65.18	36.82,66.80	36.59,68.95	35.83,71.48
path	35.96,73.13
Kill Crawler enemies along this path
collect Crawler Meat##2674 |n
'|goto 35.96,73.13 < 20 |noway |c |next "Path_One"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Crawler Claw")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Clam Meat",{
author="support@zygorguides.com",
},[[
step
Kill enemies around this area
collect Small Barnacled Clam##5523 |n
use the Small Barnacled Clam##5523
collect Clam Meat##5503 |n |goto Ashenvale 11.51,28.67
You can find more around here [13.09,25.61]
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Murloc Fin")
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
Enter the building |goto Orgrimmar/0 53.42,36.92 < 7 |walk
talk Godan##3345
|tip Inside the building.
Train Apprentice Enchanting |skillmax Enchanting,75 |goto Orgrimmar/0 53.89,38.66
step
label "Begin_Profession_Leveling"
talk Kithas##3346
|tip Inside the building.
buy Copper Rod##6217 |goto 53.87,38.02 |or 3
buy Strange Dust##10940 |goto 53.87,38.02 |or 3
buy Lesser Magic Essence##10938 |goto 53.87,38.02 |or 3
|tip These are limited supply items that can also be purchased from the auction house.
'|complete skill("Enchanting") >= 2 |only if default |or
'|complete skill("Enchanting") >= 12 |only if BloodElf |or
step
create 1 Runed Copper Rod##7421,Enchanting,2 |only if default |or
create 1 Runed Copper Rod##7421,Enchanting,12 |only if BloodElf |or
|tip Save this, you will need it later.
step
cast Disenchant##13262
collect 75 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 75 |only if default |or
'|complete skill("Enchanting") >= 85 |only if BloodElf |or
step
create 75 Enchant Bracer - Minor Health##7418,Enchanting,75 |only if default |or
create 75 Enchant Bracer - Minor Health##7418,Enchanting,85 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Minor Health enchant requires one Strange Dust.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Godan##3345
|tip Inside the building.
Train Journeyman Enchanting |skillmax Enchanting,150 |goto Orgrimmar/0 53.89,38.66
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Minor Stamina |learn Enchant Bracer - Minor Stamina##7457 |goto Orgrimmar/0 53.89,38.66
step
create 20 Enchant Bracer - Minor Health##7418,Enchanting,90 |only if default |or
create 20 Enchant Bracer - Minor Health##7418,Enchanting,100 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Minor Health enchant requires one Strange Dust.
step
cast Disenchant##13262
collect 30 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 90 |only if default |or
'|complete skill("Enchanting") >= 90 |or
step
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,100 |only if default |or
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,110 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
talk Godan##3345
|tip Inside the building.
Train Runed Silver Rod |learn Runed Silver Rod##7795 |goto Orgrimmar/0 53.89,38.66
stickystart "Collect_Greater_Magic_Essence_101"
stickystart "Collect_Silver_Rod_101"
stickystart "Collect_Shadowgem_101"
step
cast Disenchant##13262
collect 6 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Greater_Magic_Essence_101"
cast Disenchant##13262 |notinsticky
collect 3 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Silver_Rod_101"
collect 1 Silver Rod##6338 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Silver bar and 2 Rough Grinding Stones to craft.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Shadowgem_101"
collect 1 Shadowgem##1210 |or
|tip Farm it with Mining or purchase it from the auction house.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
create 1 Runed Silver Rod##7795,Enchanting,101 |only if default |or
create 1 Runed Silver Rod##7795,Enchanting,111 |only if BloodElf |or
|tip Save this, you will need it later.
step
talk Godan##3345
|tip Inside the building.
Train Greater Magic Wand |learn Greater Magic Wand##14807 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 9 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 110 |only if default |or
'|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
Enter the building |goto Orgrimmar 53.42,36.92 < 7 |walk
talk Kithas##3346
|tip Inside the building.
buy 9 Simple Wood##4470 |goto Orgrimmar 53.87,38.02 |or
'|complete skill("Enchanting") >= 110 |only if default |or
'|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
create 9 Greater Magic Wand##14807,Enchanting,110 |only if default |or
create 9 Greater Magic Wand##14807,Enchanting,120 |only if BloodElf |or
step
talk Kulwia##12043
buy Formula: Enchant Cloak - Minor Agility##11039 |goto Stonetalon Mountains 45.39,59.33 |or 2
buy Formula: Enchant Bracer - Lesser Strength##11101 |goto Stonetalon Mountains 45.39,59.33 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
'|complete skill("Enchanting") >= 165 |only if default |or
'|complete skill("Enchanting") >= 175 |only if BloodElf |or
step
use the Formula: Enchant Cloak - Minor Agility##11039
Train Enchant Cloak - Minor Agility |learn Enchant Cloak - Minor Agility##13419
step
cast Disenchant##13262
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 135 |only if default |or
'|complete skill("Enchanting") >= 145 |only if BloodElf |or
step
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,135 |only if default |or
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,145 |only if BloodElf |or
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
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Apprentice Engineering |skillmax Engineering,75 |goto Orgrimmar/0 76.18,25.18
step
label "Begin_Profession_Leveling"
talk Sovik##3413
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto Orgrimmar/0 75.49,25.36 |or
|tip Save this, you will need it for future steps.
'|complete skill("Engineering") >= 300 |or
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 30 |or
step
create 60 Rough Blasting Powder##3918,Engineering,60 total |or
'|complete skill("Engineering") >= 75 |or
step
create 1 Rough Blasting Powder##3918,Engineering,30
|tip Save at least 60 of these, you will need them for future steps.
step
talk Roxxik##11017
|tip Inside the building.
Train Handful of Copper Bolts |learn Handful of Copper Bolts##3922 |goto Orgrimmar/0 76.18,25.18
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 30 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 30 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 50 |or
step
create 30 Handful of Copper Bolts##3922,Engineering,30 total |goto Orgrimmar/0 79.61,22.95 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 75 |or
step
create 30 Handful of Copper Bolts##3922,Engineering,50 |goto Orgrimmar/0 79.61,22.95
|tip Stand next to an anvil.
|tip Save at least 30 of these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Handful of Copper Bolts requires 1 copper bar.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Arclight Spanner |learn Arclight Spanner##7430 |goto Orgrimmar/0 76.18,25.18
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 6 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 6 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 51 or itemcount(6219) < 1 |or
step
create 1 Arclight Spanner##7430,Engineering,51 |goto Orgrimmar/0 79.61,22.95
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Rough Copper Bomb |learn Rough Copper Bomb##3923 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Handful_of_Copper_Bolts_75"
stickystart "Collect_Copper_Bar_75"
stickystart "Collect_Linen_Cloth_75"
step
collect 60 Rough Blasting Powder##4357 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Handful_of_Copper_Bolts_75"
collect 30 Handful of Copper Bolts##4359 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Copper_Bar_75"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 30 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 30 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Linen_Cloth_75"
collect 30 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 75 |or
step
create 30 Rough Copper Bomb##3923,Engineering,75 |goto Orgrimmar/0 79.61,22.95
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Rough Copper Bomb requires 2 Rough Blasting Powder, 1 Handful of Copper Bolts, 1 Copper Bar, and 1 Linen Cloth.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Journeyman Engineering |skillmax Engineering,150 |goto Orgrimmar/0 76.18,25.18
step
talk Roxxik##11017
|tip Inside the building.
Train Coarse Blasting Powder |learn Coarse Blasting Powder##3929 |goto Orgrimmar/0 76.18,25.18
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 95 |or
step
create 60 Coarse Blasting Powder##3929,Engineering,60 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 100 |or
step
create 1 Coarse Blasting Powder##3929,Engineering,95
|tip Save 60 of these, they will be used in a later schematic.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Coarse Dynamite |learn Coarse Dynamite##3931 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Linen_Cloth_100"
step
collect 60 Coarse Blasting Powder##4364 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 100 |or
step
label "Collect_Linen_Cloth_100"
collect 20 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 100 |or
step
create 20 Coarse Dynamite##3931,Engineering,100
|tip You may need to create more or less of these.
|tip Each additional Coarse Dynamite requires 3 Coarse Blasting Powder and 1 Linen Cloth.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Silver Contact |learn Silver Contact##3973 |goto Orgrimmar/0 76.18,25.18
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 75 Mining to collect these.
collect 5 Silver Ore##2775 |n
|tip Smelt the ore at a forge.
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 105 |or
step
create 5 Silver Contact##3973,Engineering,105
step
talk Roxxik##11017
|tip Inside the building.
Train Bronze Tube |learn Bronze Tube##3938 |goto Orgrimmar/0 76.18,25.18
step
label "Collect_Bronze_Bars_125"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 25 Copper Ore##2770 |or
|tip Save these for later.
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 125 |or
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 25 Tin Ore##2771 |n
|tip Smelt the ore at a forge.
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 125 |or
step
talk Sovik##3413
|tip Inside the building.
buy 25 Weak Flux##2880 |goto Orgrimmar/0 75.49,25.36 |or
'|complete skill("Engineering") >= 125 |or
step
create 10 Bronze Tube##3938,Engineering,10 total |goto 79.61,22.95 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 135 |or
step
create 15 Bronze Tube##3938,Engineering,125 |goto 79.61,22.95
|tip Stand next to an anvil.
|tip Save at least 10 of these, you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Bronze Tube requires 2 Bronze Bars and 1 Weak Flux.
step
talk Roxxik##11017
|tip Inside the building.
Train Standard Scope |learn Standard Scope##3978 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Moss_Agate_135"
step
collect 10 Bronze Tube##4371 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 135 |or
step
label "Collect_Moss_Agate_135"
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect Tin Ore nodes and 75 to collect Silver Ore nodes.
collect 10 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 135 |or
step
create 10 Standard Scope##3978,Engineering,135
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("First Aid") > 0 and skill("First Aid") < 375 end,
description="This guide will walk you through leveling your First Aid skill from 1-375.",
},[[
step
talk Arnok##3373
|tip Inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto Orgrimmar/0 34.18,84.58
step
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 50 Linen Cloth##2589 |or
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 40 |or
step
create 50 Linen Bandage##3275,First Aid,40
step
talk Arnok##3373
|tip Inside the building.
Train Heavy Linen Bandage |learn Heavy Linen Bandage##3276 |goto Orgrimmar/0 34.18,84.58
step
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 80 Linen Cloth##2589 |or
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 70 |or
step
create 40 Heavy Linen Bandage##3276,First Aid,70
step
talk Arnok##3373
|tip Inside the building.
Train Journeyman First Aid |skillmax First Aid,150 |goto Orgrimmar/0 34.18,84.58
step
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 50 Linen Cloth##2589 |or
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 80 |or
step
create 25 Heavy Linen Bandage##3276,First Aid,80
step
talk Arnok##3373
|tip Inside the building.
Train Wool Bandage |learn Wool Bandage##3277 |goto Orgrimmar/0 34.18,84.58
step
Follow the path up |goto The Barrens 62.21,7.28 < 15 |only if walking
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect 60 Wool Cloth##2592 |or |goto 60.91,3.82
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 115 |or
step
create 60 Wool Bandage##3277,First Aid,115
step
talk Arnok##3373
|tip Inside the building.
Train Heavy Wool Bandage |learn Heavy Wool Bandage##3278 |goto Orgrimmar/0 34.18,84.58
step
Follow the path up |goto The Barrens 62.21,7.28 < 15 |only if walking
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect 110 Wool Cloth##2592 |or |goto 60.91,3.82
|tip You can also purchase them from the Auction House.
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
talk Lumak##3332
Train Apprentice Fishing |skillmax Fishing,75 |goto Orgrimmar/0 69.80,29.21
step
talk Shankys##3333
buy Fishing Pole##6256 |goto 69.99,29.77 |or
|tip You need to be able to equip a fishing pole in order to fish.
'|complete skill("Fishing") >= 300 |or
step
talk Shankys##3333
buy 10 Shiny Bauble##6529 |goto 69.99,29.77 |or
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
Reach Skill 55 in Fishing |skill Fishing,55 |goto Durotar 41.65,15.66
step
talk Shankys##3333
buy Strong Fishing Pole##6365 |goto Orgrimmar/0 69.99,29.77
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
Reach Skill 75 in Fishing |skill Fishing,75 |goto 69.76,30.11
step
talk Lumak##3332
Train Journeyman Fishing |skillmax Fishing,150 |goto 69.80,29.21
step
talk Shankys##3333
buy 10 Nightcrawlers##6530 |goto 69.99,29.77 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 150 |or
step
Fish in the Water
use the Nightcrawlers##6530+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 150 in Fishing |skill Fishing,150 |goto Stonetalon Mountains/0 46.33,61.29
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
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar/0 56.43,56.78 < 7 |only if walking
Enter the building |goto Orgrimmar/0 54.75,40.57 < 7 |walk
talk Jandi##3404
|tip Inside the building.
Train Apprentice Herbalism |skillmax Herbalism,75 |goto Orgrimmar/0 55.62,39.46
step
map Durotar
path	follow smart;	loop on;	ants curved;	dist 30
path	53.29,45.77	55.68,46.14	56.16,50.10	55.24,54.58	55.03,60.41
path	54.89,63.15	54.79,65.91	54.21,71.92	54.98,76.20	52.08,77.83
path	50.18,74.99	49.93,69.47	51.36,67.29	51.81,64.25	51.58,58.68
path	51.88,55.18	50.35,51.24	50.49,48.42
Reach Skill 75 in Herbalism |skill Herbalism,75
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar/0 56.43,56.78 < 7 |only if walking
Enter the building |goto Orgrimmar/0 54.75,40.57 < 7 |walk
talk Jandi##3404
|tip Inside the building.
Train Journeyman Herbalism |skillmax Herbalism,150 |goto Orgrimmar/0 55.62,39.46
step
map The Barrens
path	follow smart;	loop on;	ants curved;	dist 30
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	43.15,60.77
path	43.09,56.64	43.61,52.80	41.37,48.89	42.58,47.61	41.37,44.96
path	43.42,44.79	43.15,42.53	43.28,39.61	42.28,38.89	41.58,37.21
path	42.55,35.50	42.04,33.21	40.69,29.92	40.86,26.76	40.85,25.65
path	41.14,22.86	40.75,20.98	43.41,19.48	45.37,20.92	46.02,22.67
path	47.72,24.15	50.85,22.99	53.51,23.60	58.76,25.08	60.04,27.81
path	60.07,30.45	59.29,36.79	58.73,39.32
Reach Skill 100 in Herbalism |skill Herbalism,100
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
map The Barrens
path	follow smart;	loop on;	ants curved;	dist 30
path	49.34,61.86	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69
path	49.98,75.97	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76
path	46.10,86.08	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36
path	43.80,75.03	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35
path	45.54,68.99	45.03,65.70	43.83,62.98
Reach Skill 125 in Herbalism |skill Herbalism,125
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Silverleaf",{
author="support@zygorguides.com",
},[[
step
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Silverleaf##765 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Peacebloom",{
author="support@zygorguides.com",
},[[
step
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
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
label "Path_One"
map Silverpine Forest
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Briarthorn##2450 |n
'|goto 66.96,79.79 < 20 |noway |c
step
map Silverpine Forest
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Briarthorn##2450 |n
'|goto 49.04,32.38 < 20 |noway |c |next "Path_One"
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
talk Jo'mah##30706
|tip Inside the building.
Train Apprentice Inscription |skillmax Inscription,75 |goto Orgrimmar/0 56.0,46.2
step
label "Begin_Profession_Leveling_Classic"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
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
talk Jo'mah##30706
|tip Inside the building.
Train Ivory Ink |learn Ivory Ink##3173 |goto Orgrimmar/0 56.0,46.2
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
talk Xantili##30723
buy 16 Light Parchment##39354 |goto Orgrimmar/0 56.0,46.2 |or
'|complete skill("Inscription") >= 35 |or
step
talk Jo'mah##30706
|tip Inside the building.
Train Scroll of Stamina |learn Scroll of Stamina##45382 |goto Orgrimmar/0 56.0,46.2
step
create 16 Scroll of Stamina##45382,Inscription,35
|tip You may need to create more or less of these.
|tip Each additional Scroll of Stamina requires 1 Ivory Ink and 1 Light Parchment.
step
collect 44 Alabaster Pigment##39151 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 53 |or
step
talk Jo'mah##30706
|tip Inside the building.
Train Moonglow Ink |learn Moonglow Ink##52843 |goto Orgrimmar/0 56.0,46.2
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
talk Xantili##30723
buy 44 Light Parchment##39354 |goto Orgrimmar/0 56.0,46.2 |or
'|complete skill("Inscription") >= 75 |or
step
talk Jo'mah##30706
|tip Inside the building.
Train Armor Vellum |learn Armor Vellum##52739 |goto Orgrimmar/0 56.0,46.2
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
talk Jo'mah##30706
|tip Inside the building.
Train Journeyman Inscription |skillmax Inscription,150 |goto Orgrimmar/0 56.0,46.2
step
talk Jo'mah##30706
|tip Inside the building.
Train Midnight Ink |learn Midnight Ink##53462 |goto Orgrimmar/0 56.0,46.2
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.15,37.73	58.67,39.28	59.28,40.67	61.05,41.62	61.87,41.98
path	61.83,43.50	61.73,44.93	62.46,45.59	62.55,47.02	61.37,48.53
path	61.16,49.91	60.17,50.20	58.92,50.02	56.90,50.43	56.86,47.77
path	56.42,45.86	55.99,45.25	56.38,43.40	56.07,41.87	55.04,41.51
path	54.83,42.75	54.03,43.67	53.18,45.13	52.20,45.76	48.47,46.84
path	46.80,43.94	43.45,40.70	43.61,38.41	41.90,37.41	42.70,35.52
path	42.16,33.03	39.72,31.26	39.93,29.78	40.90,27.82	42.44,25.74
path	45.14,25.67	46.02,24.49	45.83,22.32	45.17,21.63	44.47,21.60
path	43.39,20.61	41.18,19.63	40.38,15.78	43.73,15.53	48.89,13.63
path	53.28,14.18	55.37,9.81	57.33,9.22	58.34,7.44	60.18,7.56
path	62.69,8.90	62.42,11.56	62.31,16.47	61.10,19.72	59.62,20.88
path	58.10,21.14	57.12,23.28	58.85,25.07	60.26,28.59	60.58,31.18
path	60.20,34.14	59.26,36.84
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
talk Xantili##30723
buy 20 Light Parchment##39354 |goto Orgrimmar/0 56.0,46.2 |or
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
talk Jo'mah##30706
|tip Inside the building.
Train Lion's Ink |learn Lion's Ink##57704 |goto Orgrimmar/0 56.0,46.2
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
talk Xantili##30723
buy 20 Common Parchment##10648 |goto Orgrimmar/0 56.0,46.2 |or
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
talk Gelanthis##16624
|tip Inside the building.
buy 1 Jeweler's Kit##20815 |goto Silvermoon City/0 90.91,73.35 |or 2
buy 1 Simple Grinder##20824 |goto 90.91,73.35 |or 2
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 375 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Apprentice Jewelcrafting |skillmax Jewelcrafting,75 |goto 90.33,73.83
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 110 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 35 |or
step
create 55 Delicate Copper Wire##25255,Jewelcrafting,55 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 51 |or
step
create 1 Delicate Copper Wire##25255,Jewelcrafting,Jewelcrafting,35
|tip Save these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Delicate Copper Wire requires 2 Copper Bars.
step
talk Kalinda##19775
|tip Inside the building.
Train Tigerseye Band |learn Tigerseye Band##32179 |goto Silvermoon City/0 90.33,73.83
stickystart "Collect_Delicate_Copper_Wire_50"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Copper Ore##2770 |n
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 50 |or
step
label "Collect_Delicate_Copper_Wire_50"
collect 15 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |or
step
create 15 Tigerseye Band##32179,Jewelcrafting,50
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Journeyman Jewelcrafting |skillmax Jewelcrafting,150 |goto Silvermoon City/0 90.33,73.83
step
talk Kalinda##19775
|tip Inside the building.
Train Bronze Setting |learn Bronze Setting##25278 |goto 90.33,73.83
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 50 Copper Ore##2770 |or
|tip Save the ore if you're farming.
collect 100 Bronze Bar##2841 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 80
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 50 Tin Ore##2771 |n
|tip Smelt the ore at a forge.
collect 100 Bronze Bar##2841 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 80 |or
step
create 50 Bronze Setting##25278,Jewelcrafting,50 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 150 |or
step
create 1 Bronze Setting##25278,Jewelcrafting,80
|tip Save these, you will need them for future steps.
step
talk Kalinda##19775
|tip Inside the building.
Train Gloom Band |learn Gloom Band##25287 |goto Silvermoon City/0 90.33,73.83
stickystart "Collect_Bronze_Setting_100"
stickystart "Collect_Delicate_Copper_Wire_100"
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 40 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 100 |or
step
label "Collect_Bronze_Setting_100"
collect 20 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |or
step
label "Collect_Delicate_Copper_Wire_100"
collect 40 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |or
step
create 20 Gloom Band##25287,Jewelcrafting,100
|tip You may need to create more or less of these.
|tip Each additional Gloom Band requires 2 Shadowgems and 1 Delicate Copper Wire.
step
talk Kalinda##19775
|tip Inside the building.
Train Ring of Twilight Shadows |learn Ring of Twilight Shadows##25318 |goto Silvermoon City/0 90.33,73.83
stickystart "Collect_Shadowgem_110"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect 10 Copper Ore##2770 |n
|tip Save the ore if you're gathering.
collect 20 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 110 |or
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 10 Tin Ore##2771 |n
|tip Smelt the ore at a forge.
collect 20 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 110 |or
step
label "Collect_Shadowgem_110"
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 20 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 110 |or
step
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110
step
talk Kalinda##19775
|tip Inside the building.
Train Heavy Stone Statue |learn Heavy Stone Statue##32807 |goto Silvermoon City/0 90.33,73.83
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	78.66,36.13	77.36,41.29	75.00,44.93	72.65,48.07	70.58,55.05
path	69.99,58.40	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15
path	69.15,72.54	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74
path	56.16,71.89	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16
path	40.39,71.86	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64
path	33.70,56.77	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68
path	31.68,45.41	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12
path	20.02,35.80	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65
path	28.65,14.18	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23
path	36.35,24.61	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02
path	48.08,33.60	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13
path	58.19,32.50	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58
path	64.49,26.56	66.77,27.64	70.39,27.07	70.47,30.74	72.89,30.09
path	76.73,29.48	76.70,33.68	79.56,35.45
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 125 Mining to collect these.
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 120 |or
step
create 10 Heavy Stone Statue##32807,Jewelcrafting,120
step
talk Jandia##4877
|tip Inside the building.
buy 1 Design: Pendant of the Agate Shield##20970 |goto Thousand Needles/0 46.0,51.6 |or
'|complete skill("Jewelcrafting") >= 150 |or
step
use the Design: Pendant of the Agate Shield##20970
Train Pendant of the Agate Shield |learn Pendant of the Agate Shield##25610
stickystart "Collect_Bronze_Setting_150"
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect 30 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 150 |or
step
label "Collect_Bronze_Setting_150"
collect 30 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |or
step
create 30 Pendant of the Agate Shield##25610,Jewelcrafting,150
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
Enter the building |goto Orgrimmar/0 62.22,45.65 < 5 |walk
talk Karolek##3365
|tip Inside the building.
Train Apprentice Leatherworking |skillmax Leatherworking,75 |goto Orgrimmar/0 62.80,44.15
step
label "Begin_Profession_Leveling"
Kill enemies around this area
|tip Skin their corpses.
collect 57 Ruined Leather Scraps##2934 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
You can find more around [39.47,17.22]
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
Kill enemies around this area
|tip Skin their corpses.
collect 40 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 45 |or
step
create 40 Light Armor Kit##2152,Leatherworking,45
|tip You may need to create more or less of these.
|tip Each additional Light Armor Kit requires 1 Light Leather.
step
Kill enemies around this area
|tip Skin their corpses.
collect 42 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 55 |or
step
talk Tamar##3366
|tip Inside the building.
buy 21 Coarse Thread##2320 |goto Orgrimmar/0 63.05,45.53 |or
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
talk Karolek##3365
|tip Inside the building.
Train Journeyman Leatherworking |skillmax Leatherworking,150 |goto Orgrimmar/0 62.80,44.15
step
talk Karolek##3365
|tip Inside the building.
Train Embossed Leather Gloves |learn Embossed Leather Gloves##3756 |goto Orgrimmar/0 62.80,44.15
step
Kill enemies around this area
|tip Skin their corpses.
collect 165 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 100 |or
step
talk Tamar##3366
|tip Inside the building.
buy 180 Coarse Thread##2320 |goto Orgrimmar/0 63.05,45.53 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 100 |or
step
create 55 Embossed Leather Gloves##3756,Leatherworking,100
|tip You may need to create more or less of these.
|tip Each additional Embossed Leather Glove requires 3 Light Leather and 2 Coarse Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Fine Leather Belt |learn Fine Leather Belt##3763 |goto Orgrimmar/0 62.80,44.15
step
Kill enemies around this area
|tip Skin their corpses.
collect 210 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 125 |or
step
talk Tamar##3366
|tip Inside the building.
buy 70 Coarse Thread##2320 |goto Orgrimmar/0 63.05,45.53 |or
|tip You bought these in a previous step.
'|complete skill("Leatherworking") >= 125 |or
step
create 35 Fine Leather Belt##3763,Leatherworking,125
|tip You may need to create more or less of these.
|tip Each additional Fine Leather Belt requires 6 Light Leather and 2 Coarse Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Dark Leather Boots |learn Dark Leather Boots##2167 |goto Orgrimmar/0 62.80,44.15
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 72 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.12,31.76
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 137 |or
step
talk Tamar##3366
|tip Inside the building.
buy 36 Fine Thread##2321 |goto Orgrimmar/0 63.05,45.53 |or 2
buy 18 Gray Dye##4340 |goto Orgrimmar/0 63.05,45.53 |or 2
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
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 72.94,27.48 < 7 |walk
talk Makaru##3357
|tip Inside the building.
Train Apprentice Miner |skillmax Mining,75 |goto Orgrimmar/0 73.12,26.08
step
talk Gorina##3358
|tip Inside the building.
buy Mining Pick##2901 |goto 73.31,26.60
|tip You must have a Mining Pick in your bags to be able to gather ore.
step
map Durotar
path	follow smart;	loop on;	ants curved;	dist 30
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Reach Skill 65 in Mining |skill Mining,65
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
|tip You can smelt Copper Ore from skill level 1-47 for additional points.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 72.94,27.48 < 7 |walk
talk Makaru##3357
|tip Inside the building.
Train Journeyman Miner |skillmax Mining,150 |goto Orgrimmar/0 73.12,26.08
step
map The Barrens
path	follow smart;	loop on;	ants curved;	dist 30
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
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
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Copper Ore##2770 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rough Stone",{
author="support@zygorguides.com",
},[[
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Rough Stone##2835 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Tin Ore",{
author="support@zygorguides.com",
},[[
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect Tin Ore##2771 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Coarse Stone",{
author="support@zygorguides.com",
},[[
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect Coarse Stone##2836 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Silver Ore",{
author="support@zygorguides.com",
},[[
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 75 Mining to collect these.
collect Silver Ore##2775 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Moss Agate",{
author="support@zygorguides.com",
},[[
step
map The Barrens
path follow smart; loop on; ants curved; dist 20
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
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
path	78.66,36.13	77.36,41.29	75.00,44.93	72.65,48.07	70.58,55.05
path	69.99,58.40	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15
path	69.15,72.54	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74
path	56.16,71.89	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16
path	40.39,71.86	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64
path	33.70,56.77	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68
path	31.68,45.41	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12
path	20.02,35.80	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65
path	28.65,14.18	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23
path	36.35,24.61	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02
path	48.08,33.60	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13
path	58.19,32.50	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58
path	64.49,26.56	66.77,27.64	70.39,27.07	70.47,30.74	72.89,30.09
path	76.73,29.48	76.70,33.68	79.56,35.45
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
Enter the building |goto Orgrimmar/0 62.23,45.64 < 7 |walk
talk Thuwd##7088
|tip Inside the building.
Train Apprentice Skinning |skillmax Skinning,75 |goto Orgrimmar/0 63.36,45.41
step
talk Tamar##3366
|tip Inside the building.
buy Skinning Knife##7005 |goto 63.04,45.53
|tip You must have a Skinning Knife in your bags to be able to skin enemies.
step
Kill enemies around this area
|tip Only beast enemies, or certain humanoid enemies such as yetis or worgen, will be skinnable.
|tip Skin their corpses.
Reach Skill 75 in Skinning |skill Skinning,75 |goto Durotar 44.13,18.79
You can find more around: |notinsticky
[Durotar 39.38,18.92]
[Durotar 36.57,24.98]
[Durotar 38.33,35.20]
[Durotar 53.64,14.77]
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to become a Journeyman in a profession.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 62.23,45.64 < 7 |walk
talk Thuwd##7088
|tip Inside the building.
Train Journeyman Skinning |skillmax Skinning,150 |goto Orgrimmar/0 63.36,45.41
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
Reach Skill 90 in Skinning |skill Skinning,90 |goto The Barrens 53.93,30.27
You can find more around: |notinsticky
[The Barrens 53.44,33.96]
[The Barrens 50.98,33.32]
[The Barrens 49.67,29.89]
step
Kill enemies around this area
|tip Skin their corpses.
Reach Skill 130 in Skinning |skill Skinning,130 |goto 45.77,56.23
You can find more around: |notinsticky
[46.67,50.16]
[49.90,53.28]
[48.92,58.67]
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Green Whelp Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Black Whelp Scale")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Ruined Leather Scraps",{
author="support@zygorguides.com",
},[[
step
Kill enemies around this area
|tip Skin their corpses.
collect Ruined Leather Scraps##2934 |n |goto Durotar 43.89,17.49
You can find more around [39.47,17.22]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Light Leather",{
author="support@zygorguides.com",
},[[
step
Kill enemies around this area
|tip Skin their corpses.
collect Light Leather##2318 |n |goto Durotar 43.89,17.49
You can find more around [39.47,17.22]
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
Enter the building |goto Orgrimmar/0 61.38,50.37 < 7 |walk
talk Magar##3363
|tip Inside the building.
Train Apprentice Tailoring |skillmax Tailoring,75 |goto Orgrimmar/0 63.65,49.93
step
label "Begin_Profession_Leveling"
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 204 Linen Cloth##2589 |or
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
talk Magar##3363
|tip Inside the building.
Train Linen Belt |learn Linen Belt##8776 |goto Orgrimmar/0 63.65,49.93
step
collect 40 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 70 |or
step
talk Borya##3364
|tip Inside the building.
buy 55 Coarse Thread##2320 |goto Orgrimmar/0 63.08,51.45 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 70 |or
step
create 40 Linen Belt##8776,Tailoring,70
|tip You may need to make a few more of these.
|tip Each additional Linen Belt requires 1 Bolt of Linen Cloth and 1 Coarse Thread.
step
talk Magar##3363
|tip Inside the building.
Train Reinforced Linen Cape |learn Reinforced Linen Cape##2397 |goto Orgrimmar/0 63.65,49.93
step
collect 10 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Borya##3364
|tip Inside the building.
buy 15 Coarse Thread##2320 |goto Orgrimmar/0 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
create 5 Reinforced Linen Cape##2397,Tailoring,75
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Magar##3363
|tip Inside the building.
Train Journeyman Tailoring |skillmax Tailoring,150 |goto Orgrimmar/0 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Woolen Cloth |learn Bolt of Woolen Cloth##2964 |goto Orgrimmar/0 63.65,49.93
step
Follow the path up |goto The Barrens 62.21,7.28 < 15 |only if walking
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect 135 Wool Cloth##2592 |or |goto 60.91,3.82
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
talk Magar##3363
|tip Inside the building.
Train Simple Kilt |learn Simple Kilt##12046 |goto Orgrimmar/0 63.65,49.93
step
collect 52 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 110 |or
step
talk Borya##3364
|tip Inside the building.
buy 43 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 110 |or
step
create 13 Simple Kilt##12046,Tailoring,110
|tip You may need to make a few more of these.
|tip Each additional Simple Kilt requires 4 Bolts of Linen Cloth and 1 Fine Thread.
step
talk Magar##3363
|tip Inside the building.
Train Double-stitched Woolen Shoulders |learn Double-stitched Woolen Shoulders##3848 |goto Orgrimmar/0 63.65,49.93
step
collect 45 Bolt of Woolen Cloth##2997 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Borya##3364
|tip Inside the building.
buy 30 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Linen Cloth",{
author="support@zygorguides.com",
},[[
step
Follow the path |goto Orgrimmar/0 52.00,57.84 < 15 |only if walking
Follow the path down |goto 56.07,41.08 < 10 |only if walking
Enter the Ragefire Chasm dungeon |goto 52.75,48.86 < 7 |c
|tip You may need a group for this.
step
Kill Ragefire enemies throughout the dungeon
collect Linen Cloth##2589 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Wool Cloth",{
author="support@zygorguides.com",
},[[
step
Follow the path up |goto The Barrens 62.21,7.28 < 15 |only if walking
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect Wool Cloth##2592 |n |goto 60.91,3.82
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
