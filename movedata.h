struct Move MoveList [] = {
{"Nothing",0,0,0,0,0,0,&Nothingf},
{"Struggle",50,100,1,1,1,0,&Strugglef},
{"Scratch",40,100,35,1,1,0,&Scratchf},
{"Water Gun",40,100,25,3,2,0,&Water_Gunf},
{"Vine Whip",45,100,35,5,1,0,&Vine_Whipf},
{"Ember",40,100,25,2,2,0,&Emberf},
{"Quick Attack",40,100,30,1,1,1,&Quick_Attackf},
{"Super Attack",120,75,15,1,1,0,&Super_Attackf},
{"Stone Edge",100,80,5,13,1,0,&Stone_Edgef},
{"Gust",40,100,35,10,2,0,&Gustf},
{"Thunder Shock",40,100,30,4,2,0,&Thunder_Shockf},
{"Thunder Wave",0,90,20,4,0,0,&Thunder_Wavef},
{"Swords Dance",0,100,20,1,0,0,&Swords_Dancef},
{"Dragon Dance",0,100,20,15,0,0,&Dragon_Dancef},
{"Will-O-Wisp",0,90,15,2,0,0,&Will_O_Wispf},
{"Spore",0,100,10,5,0,0,&Sporef},
{"Toxic",0,90,10,8,0,0,&Toxicf},
{"Freeze",0,60,10,6,0,0,&Freezef},
{"Bulk Up",0,100,20,7,0,0,&Bulk_Upf},
{"Charm",0,100,20,18,0,0,&Charmf},
{"Leer",0,100,20,1,0,0,&Leerf}
};

MoveSlot Empty_slot = {Nothing,5,1};
MoveSlot Struggle_Slot = {Struggle,5,1};