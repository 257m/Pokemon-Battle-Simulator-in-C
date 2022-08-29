struct Move MoveList [] = {
{"Nothing",0,0,0,0,0,0,MF_Nothing},
{"Struggle",50,100,1,1,1,0,MF_Struggle},
{"Scratch",40,100,35,1,1,0,MF_Nothing},
{"Water Gun",40,100,25,3,2,0,MF_Nothing},
{"Vine Whip",45,100,35,5,1,0,MF_Nothing},
{"Ember",40,100,25,2,2,0,MF_Ember},
{"Quick Attack",40,100,30,1,1,1,MF_Nothing},
{"Super Attack",120,75,15,1,1,0,MF_Nothing},
{"Stone Edge",100,80,5,13,1,0,MF_Nothing},
{"Gust",40,100,35,10,2,0,MF_Nothing},
{"Thunder Shock",40,100,30,4,2,MF_Nothing},
{"Thunder Wave",0,90,20,4,0,0,MF_Thunder_Wave},
{"Swords Dance",0,100,20,1,0,0,MF_SELFBOOST,{32,0,0,0}},
{"Dragon Dance",0,100,20,15,0,0,MF_SELFBOOST,{16,0,16,0}},
{"Will-O-Wisp",0,90,15,2,0,0,MF_Will_O_Wisp},
{"Spore",0,100,10,5,0,0,MF_Spore},
{"Toxic",0,90,10,8,0,0,MF_Toxic},
{"Freeze",0,60,10,6,0,0,MF_Freeze},
{"Bulk Up",0,100,20,7,0,0,MF_SELFBOOST,{17,0,0,0}},
{"Charm",0,100,20,18,0,0,MF_OTHERBOOST,{160,0,0,0}},
{"Leer",0,100,20,1,0,0,MF_OTHERBOOST,{9,0,0,0}}
};

MoveSlot Empty_slot = {Nothing,5,1};
MoveSlot Struggle_Slot = {Struggle,5,1};