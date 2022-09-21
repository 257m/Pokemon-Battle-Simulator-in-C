const struct Move MoveList [] = {
{"Nothing",0,0,0,NOTYPE,STATUS,0,MF_Nothing,{0,0,0,0,0},0},
{"Struggle",50,101,1,NOTYPE,1,0,MF_Struggle,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED},
{"Scratch",40,100,35,NORMAL,PHYSICAL,0,MF_Nothing,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Water Gun",40,100,25,WATER,SPECIAL,0,MF_Nothing,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Vine Whip",45,100,35,GRASS,PHYSICAL,0,MF_Nothing,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Ember",40,100,25,FIRE,SPECIAL,0,MF_OTHERSTATUS,{STATUS_BURN,10,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Quick Attack",40,100,30,NORMAL,PHYSICAL,1,MF_Nothing,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Super Attack",120,75,15,NORMAL,PHYSICAL,0,MF_Nothing,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Stone Edge",100,80,5,ROCK,PHYSICAL,0,MF_Nothing,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED | FLAG_HIGH_CRIT},
{"Gust",40,100,35,FLYING,SPECIAL,0,MF_Nothing,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Thunder Shock",40,100,30,ELECTRIC,SPECIAL,0,MF_OTHERSTATUS,{STATUS_PARALYSIS,10,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Thunder Wave",0,90,20,ELECTRIC,STATUS,0,MF_OTHERSTATUS,{STATUS_PARALYSIS,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Swords Dance",0,101,20,NORMAL,STATUS,0,MF_STATMOD,{STAT1_2_STAT2_0,0,0,0,100},0},
{"Dragon Dance",0,101,20,DRAGON,STATUS,0,MF_STATMOD,{STAT1_1_STAT2_0,0,STAT1_1_STAT2_0,0,100},0},
{"Will-O-Wisp",0,90,15,FIRE,STATUS,0,MF_OTHERSTATUS,{STATUS_BURN,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Spore",0,100,10,GRASS,STATUS,0,MF_OTHERSTATUS,{STATUS_SLEEP,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED | FLAG_POWDER_MOVE},
{"Toxic",0,90,10,POISON,STATUS,0,MF_OTHERSTATUS,{STATUS_TOXIC,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Freeze",0,60,10,ICE,STATUS,0,MF_OTHERSTATUS,{STATUS_FREEZE,100,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Bulk Up",0,101,20,FIGHTING,STATUS,0,MF_STATMOD,{STAT1_1_STAT2_1,0,0,0,100},0},
{"Charm",0,100,20,FAIRY,STATUS,0,MF_STATMOD,{160,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Leer",0,100,20,NORMAL,STATUS,0,MF_STATMOD,{9,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Flash",0,100,20,NORMAL,STATUS,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Kinesis",0,85,15,PSYCHIC,STATUS,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Leaf Tornado",65,90,10,GRASS,SPECIAL,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,148},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Mirror Shot",65,85,10,STEEL,SPECIAL,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Mud Bomb",65,85,10,GROUND,SPECIAL,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Mud-Slap",20,100,10,GROUND,SPECIAL,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Muddy Water",95,85,10,WATER,SPECIAL,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,158},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Night Daze",85,95,10,DARK,SPECIAL,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,168},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Octazooka",65,85,10,WATER,SPECIAL,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,178},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Sand Attack",0,100,15,GROUND,STATUS,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED},
{"Smoke Screen",0,100,20,NORMAL,STATUS,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED},
{"Aurora Beam",65,100,20,ICE,SPECIAL,0,MF_STATMOD,{STAT1_n1_STAT2_0,0,0,0,138},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Baby-Doll Eyes",0,100,30,FAIRY,STATUS,1,MF_STATMOD,{STAT1_n1_STAT2_0,0,0,0,228},FLAG_PROTECT_AFFECTED},
{"Breaking Swipe",60,100,15,DRAGON,PHYSICAL,0,MF_STATMOD,{STAT1_n1_STAT2_0,0,0,0,228},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Protect",0,101,10,NORMAL,STATUS,4,MF_PROTECT,{0,0,0,0,0},0},
{"Mercury Shot",70,90,15,STEEL,SPECIAL,0,MF_OTHERSTATUS,{STATUS_POISON,20,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Superpower",120,100,5,FIGHTING,PHYSICAL,0,MF_STATMOD,{STAT1_n1_STAT2_n1,0,0,0,100},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Dragon Tail",60,90,10,DRAGON,PHYSICAL,-6,MF_ROAR,{0,0,0,0,0},FLAG_MAKES_CONTACT | FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Roar",0,101,20,NORMAL,STATUS,-6,MF_ROAR,{0,0,0,0,0},0},
{"Icicle Crash",85,90,10,ICE,PHYSICAL,0,MF_OTHERSTATUS,{STATE_FLINCH,30},FLAG_PROTECT_AFFECTED},
{"Confuse Ray",0,100,10,GHOST,STATUS,0,MF_OTHERSTATUS,{STATE_CONFUSION,100},FLAG_PROTECT_AFFECTED},
{"Feather Dance",0,101,15,FLYING,STATUS,0,MF_STATMOD,{STAT1_n2_STAT2_0,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Growl",0,101,15,NORMAL,STATUS,0,MF_STATMOD,{STAT1_n1_STAT2_0,0,0,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Luminous Glow",0,101,25,LIGHT,STATUS,0,MF_STATMOD,{0,STAT1_1_STAT2_0,STAT1_1_STAT2_0,0,100},0},
{"Earthquake",100,100,10,GROUND,PHYSICAL,0,MF_Nothing,{0,0,0,0,0},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Giga Drain",75,100,10,GRASS,SPECIAL,0,MF_DRAININGMOVE,{50},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Blinding Flash",120,101,5,LIGHT,SPECIAL,0,MF_STATMOD,{0,0,STAT1_0_STAT2_n3,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
{"Blindstrike",75,90,15,LIGHT,PHYSICAL,5,MF_STATMOD,{0,0,STAT1_0_STAT2_n1,0,228},FLAG_PROTECT_AFFECTED | FLAG_TYPE_IMMUNITY_AFFECTED},
};

MoveSlot Empty_slot = {Nothing,1,1};
MoveSlot Struggle_Slot = {Struggle,1,1};