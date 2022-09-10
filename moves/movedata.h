const struct Move MoveList [] = {
{"Nothing",0,0,0,NOTYPE,0,0,MF_Nothing,{0,0,0,0,0},0},
{"Struggle",50,101,1,NOTYPE,1,0,MF_Struggle,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED},
{"Scratch",40,100,35,NORMAL,1,0,MF_Nothing,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Water Gun",40,100,25,WATER,2,0,MF_Nothing,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Vine Whip",45,100,35,GRASS,1,0,MF_Nothing,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Ember",40,100,25,FIRE,2,0,MF_OTHERSTATUS,{STATUS_BURN,10,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Quick Attack",40,100,30,NORMAL,1,1,MF_Nothing,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Super Attack",120,75,15,NORMAL,1,0,MF_Nothing,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Stone Edge",100,80,5,ROCK,1,0,MF_Nothing,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Gust",40,100,35,FLYING,2,0,MF_Nothing,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Thunder Shock",40,100,30,ELECTRIC,2,0,MF_OTHERSTATUS,{STATUS_PARALYSIS,10,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Thunder Wave",0,90,20,ELECTRIC,0,0,MF_OTHERSTATUS,{STATUS_PARALYSIS,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Swords Dance",0,101,20,NORMAL,0,0,MF_STATMOD,{STAT1_2_STAT2_0,0,0,0,100},0},
{"Dragon Dance",0,101,20,DRAGON,0,0,MF_STATMOD,{STAT1_1_STAT2_0,0,STAT1_1_STAT2_0,0,100},0},
{"Will-O-Wisp",0,90,15,FIRE,0,0,MF_OTHERSTATUS,{STATUS_BURN,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Spore",0,100,10,GRASS,0,0,MF_OTHERSTATUS,{STATUS_SLEEP,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED | FLAG_POWDER_MOVE},
{"Toxic",0,90,10,POISON,0,0,MF_OTHERSTATUS,{STATUS_TOXIC,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Freeze",0,60,10,ICE,0,0,MF_OTHERSTATUS,{STATUS_FREEZE,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Bulk Up",0,101,20,FIGHTING,0,0,MF_STATMOD,{STAT1_1_STAT2_1,0,0,0,100},0},
{"Charm",0,100,20,FAIRY,0,0,MF_STATMOD,{160,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Leer",0,100,20,NORMAL,0,0,MF_STATMOD,{9,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Flash",0,100,20,NORMAL,0,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Kinesis",0,85,15,PSYCHIC,0,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Leaf Tornado",65,90,10,GRASS,2,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,148},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Mirror Shot",65,85,10,STEEL,2,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Mud Bomb",65,85,10,GROUND,2,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Mud-Slap",20,100,10,GROUND,2,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Muddy Water",95,85,10,WATER,2,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Night Daze",85,95,10,DARK,2,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,168},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Octazooka",65,85,10,WATER,2,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,178},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Sand Attack",0,100,15,GROUND,0,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED},
{"Smoke Screen",0,100,20,NORMAL,0,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED},
{"Aurora Beam",65,100,20,ICE,2,0,MF_STATMOD,{STAT1_n1_STAT2_0,0,0,0,138},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Baby-Doll Eyes",0,100,30,FAIRY,0,1,MF_STATMOD,{STAT1_n1_STAT2_0,0,0,0,228},FLAG_PROTECT_AFFECTED},
{"Breaking Swipe",60,100,15,DRAGON,1,0,MF_STATMOD,{STAT1_n1_STAT2_0,0,0,0,228},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Protect",0,101,10,NORMAL,0,4,MF_PROTECT,{0,0,0,0,0},0},
{"Mercury Shot",70,90,15,STEEL,2,0,MF_OTHERSTATUS,{STATUS_POISON,20,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Superpower",120,100,5,FIGHTING,1,0,MF_STATMOD,{STAT1_n1_STAT2_n1,0,0,0,100},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Dragon Tail",60,90,10,DRAGON,1,-6,MF_ROAR,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Roar",0,101,20,NORMAL,0,-6,MF_ROAR,{0,0,0,0,0},0},
};

MoveSlot Empty_slot = {Nothing,5,1};
MoveSlot Struggle_Slot = {Struggle,5,1};