const struct Move MoveList [] = {
{{115,232,132,184,224},0,0,0,NOTYPE,STATUS,0,MF_Nothing << 5,{0,0,0,0,0},0},
{{157,37,83,157,133},50,101,0,NOTYPE,1,0,MF_Struggle << 5,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED},
{{152,228,26,13},40,100,6,NORMAL,PHYSICAL,0,MF_Nothing << 5,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{184,104,89,108,245,112},40,100,4,WATER,SPECIAL,0,MF_Nothing << 5,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{178,92,93,221,9,128},45,100,6,GRASS,PHYSICAL,0,MF_Nothing << 5,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{43,68,89},40,100,4,FIRE,SPECIAL,0,MF_OTHERSTATUS << 5,{STATUS_BURN,10,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{141,82,53,236,52,160,70,176},40,100,5,NORMAL,PHYSICAL,1,MF_Nothing << 5,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{157,96,89,108,52,160,70,176},120,75,2,NORMAL,PHYSICAL,0,MF_Nothing << 5,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{157,30,226,236,164,57,64},100,80,0,ROCK,PHYSICAL,0,MF_Nothing << 5,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED | FLAG_HIGH_CRIT},
{{61,103,64},40,100,6,FLYING,SPECIAL,0,MF_Nothing << 5,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{162,42,226,22,91,154,30,53,128},40,100,5,ELECTRIC,SPECIAL,0,MF_OTHERSTATUS << 5,{STATUS_PARALYSIS,10,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{162,42,226,22,91,184,108,80},0,90,3,ELECTRIC,STATUS,0,MF_OTHERSTATUS << 5,{STATUS_PARALYSIS,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{157,223,34,79,100,11,134,80},0,101,3,NORMAL,STATUS,0,MF_STATMOD << 5,{STAT1_2_STAT2_0,0,0,0,100},0},
{{36,130,119,187,100,11,134,80},0,101,3,DRAGON,STATUS,0,MF_STATMOD << 5,{STAT1_1_STAT2_0,0,STAT1_1_STAT2_0,0,100},0},
{{186,88,206,63,151,76,224},0,90,2,FIRE,STATUS,0,MF_OTHERSTATUS << 5,{STATUS_BURN,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{156,31,34,128},0,100,1,GRASS,STATUS,0,MF_OTHERSTATUS << 5,{STATUS_SLEEP,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED | FLAG_POWDER_MOVE},
{{163,240,145,128},0,90,1,POISON,STATUS,0,MF_OTHERSTATUS << 5,{STATUS_TOXIC,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{52,138,93,20},0,60,1,ICE,STATUS,0,MF_OTHERSTATUS << 5,{STATUS_FREEZE,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{21,88,189,214},0,101,3,FIGHTING,STATUS,0,MF_STATMOD << 5,{STAT1_1_STAT2_1,0,0,0,100},0},
{{26,3,38,128},0,100,3,FAIRY,STATUS,0,MF_STATMOD << 5,{160,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{97,75,32},0,100,3,NORMAL,STATUS,0,MF_STATMOD << 5,{9,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{51,3,52},0,100,3,NORMAL,STATUS,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{90,92,89,166,96},0,85,2,PSYCHIC,STATUS,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{97,66,109,209,242,112,72,240},65,90,1,GRASS,SPECIAL,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,148},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{106,101,39,203,115,67,232},65,85,1,STEEL,SPECIAL,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{109,73,177,61,162},65,85,1,GROUND,SPECIAL,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{109,73,201,176,48},20,100,1,GROUND,SPECIAL,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{109,72,76,238,225,161,100},95,85,1,WATER,SPECIAL,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{114,78,138,108,129,209,64},85,95,1,DARK,SPECIAL,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,168},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{120,232,29,61,235,8},65,85,1,WATER,SPECIAL,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,178},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{152,92,77,134,148,8,214},0,100,2,GROUND,STATUS,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED},
{{155,94,178,238,99,145,74,224},0,100,3,NORMAL,STATUS,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED},
{{13,100,249,7,98,40,90},65,100,3,ICE,SPECIAL,0,MF_STATMOD << 5,{STAT1_n1_STAT2_0,0,0,0,138},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{16,69,158,17,236,102,203,146,204},0,100,5,FAIRY,STATUS,1,MF_STATMOD << 5,{STAT1_n1_STAT2_0,0,0,0,228},FLAG_PROTECT_AFFECTED},
{{20,138,21,165,199,220,238,152,20},60,100,2,DRAGON,PHYSICAL,0,MF_STATMOD << 5,{STAT1_n1_STAT2_0,0,0,0,228},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{132,159,66,142,128},0,101,1,NORMAL,STATUS,4,MF_PROTECT << 5,{0,0,0,0,0},0},
{{105,100,58,203,59,154,31,64},70,90,2,STEEL,SPECIAL,0,MF_OTHERSTATUS << 5,{STATUS_POISON,20,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{157,96,89,65,247,44,128},120,100,0,FIGHTING,PHYSICAL,0,MF_STATMOD << 5,{STAT1_n1_STAT2_n1,0,0,0,100},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{36,130,119,187,116,10,88},60,90,1,DRAGON,PHYSICAL,-6,MF_ROAR << 5,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{147,195,32},0,101,3,NORMAL,STATUS,-6,MF_ROAR << 5,{0,0,0,0,0},0},
{{72,210,54,23,99,144,102,128},85,90,1,ICE,PHYSICAL,0,MF_OTHERSTATUS << 5,{STATE_FLINCH,30},FLAG_PROTECT_AFFECTED},
{{27,220,106,204,187,144,114},0,100,1,GHOST,STATUS,0,MF_OTHERSTATUS << 5,{STATE_CONFUSION,100},FLAG_PROTECT_AFFECTED},
{{49,67,68,22,91,32,92,50,128},0,101,2,FLYING,STATUS,0,MF_STATMOD << 5,{STAT1_n2_STAT2_0,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{60,159,118},0,101,2,NORMAL,STATUS,0,MF_STATMOD << 5,{STAT1_n1_STAT2_0,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{101,90,151,62,179,217,216,251,128},0,101,4,LIGHT,STATUS,0,MF_STATMOD << 5,{0,STAT1_1_STAT2_0,STAT1_1_STAT2_0,0,100},0},
{{40,101,68,70,161,89,64},100,100,1,GROUND,PHYSICAL,0,MF_Nothing << 5,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{58,78,29,146,65,75,128},75,100,1,GRASS,SPECIAL,0,MF_DRAININGMOVE << 5,{50},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{19,18,226,37,199,217,152,25,160},120,101,0,LIGHT,SPECIAL,0,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n3,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{19,18,226,78,146,74,202},75,90,2,LIGHT,PHYSICAL,5,MF_STATMOD << 5,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{185,69,177,48,51,160},80,100,2,BUG,SPECIAL,0,(MF_STATMOD << 5) | MF_OTHERSTATUS,{0,0,STAT1_n1_STAT2_0,0,178,STATE_CONFUSION,50,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{75,25,89,165,238,217,146,86,16},0,101,3,NOTYPE,STATUS,0,(MF_EDGECASE << 5) | MF_OTHERSTATUS,{10,0,0,0,0,STATE_CONFUSION,100,0,0,0},0},
{{35,234,38,23,101,33,202},120,100,1,NORMAL,PHYSICAL,0,(MF_DRAININGMOVE << 5),{33,128},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{21,117,57,37,199},75,90,4,SOUND,SPECIAL,0,MF_OTHERSTATUS << 5,{STATE_CONFUSION,100},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{{155,131},40,95,7,SOUND,SPECIAL,0,FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED}
};

MoveSlot Empty_slot = {Nothing,1,1};
MoveSlot Struggle_Slot = {Struggle,1,1};