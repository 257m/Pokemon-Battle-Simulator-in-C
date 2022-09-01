struct Move MoveList [] = {
{"Nothing",0,0,0,NOTYPE,0,0,MF_Nothing,{0,0,0,0},0},
{"Struggle",50,100,1,NOTYPE,1,0,MF_Struggle,{0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED},
{"Scratch",40,100,35,NORMAL,1,0,MF_Nothing,{0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Water Gun",40,100,25,WATER,2,0,MF_Nothing,{0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Vine Whip",45,100,35,GRASS,1,0,MF_Nothing,{0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Ember",40,100,25,FIRE,2,0,MF_OTHERSTATUS,{STATUS_BURN,10,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Quick Attack",40,100,30,NORMAL,1,1,MF_Nothing,{0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Super Attack",120,75,15,NORMAL,1,0,MF_Nothing,{0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Stone Edge",100,80,5,ROCK,1,0,MF_Nothing,{0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Gust",40,100,35,FLYING,2,0,MF_Nothing,{0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Thunder Shock",40,100,30,ELECTRIC,2,MF_Nothing,{0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Thunder Wave",0,90,20,ELECTRIC,0,0,MF_OTHERSTATUS,{STATUS_PARALYSIS,100,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Swords Dance",0,100,20,NORMAL,0,0,MF_SELFBOOST,{32,0,0,0},0},
{"Dragon Dance",0,100,20,DRAGON,0,0,MF_SELFBOOST,{16,0,16,0},0},
{"Will-O-Wisp",0,90,15,FIRE,0,0,MF_OTHERSTATUS,{STATUS_BURN,100,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Spore",0,100,10,GRASS,0,0,MF_OTHERSTATUS,{STATUS_SLEEP,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED | FLAG_POWDER_MOVE},
{"Toxic",0,90,10,POISON,0,0,MF_OTHERSTATUS,{STATUS_TOXIC,100,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Freeze",0,60,10,ICE,0,0,MF_OTHERSTATUS,{STATUS_FREEZE,100,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Bulk Up",0,100,20,FIGHTING,0,0,MF_SELFBOOST,{17,0,0,0},0},
{"Charm",0,100,20,FAIRY,0,0,MF_OTHERBOOST,{160,0,0,0},0},
{"Leer",0,100,20,NORMAL,0,0,MF_OTHERBOOST,{9,0,0,0},0}
};

MoveSlot Empty_slot = {Nothing,5,1};
MoveSlot Struggle_Slot = {Struggle,5,1};