struct Move Nothing = {"Nothing",0,0,0,0,0,0,&Nothingf};
struct Move Struggle = {"Struggle",50,100,1,0,1,0,&Strugglef};
struct Move Scratch = {"Scratch",40,100,35,1,1,0,&Scratchf};
struct Move Water_Gun = {"Water Gun",40,100,25,3,2,0,&Water_Gunf};
struct Move Vine_Whip = {"Vine Whip",45,100,35,5,1,0,&Vine_Whipf};
struct Move Ember = {"Ember",40,100,25,2,2,0,&Emberf};
struct Move Quick_Attack = {"Quick Attack",40,100,30,1,1,1,&Quick_Attackf};
struct Move Super_Attack = {"Super Attack",120,70,15,1,1,0,&Super_Attackf};
struct Move Stone_Edge = {"Stone Edge",100,80,5,13,1,0,&Stone_Edgef};
struct Move Gust = {"Gust",40,100,35,10,2,0,&Gustf};
struct Move Thunder_Shock = {"Thunder Shock",40,100,30,4,2,0,&Thunder_Shockf};
struct Move Thunder_Wave = {"Thunder Wave",0,90,20,4,0,0,&Thunder_Wavef};
struct Move Swords_Dance = {"Swords Dance",0,100,20,1,0,0,&Swords_Dancef,{2,0,0,0,0,0,0},100};
struct Move Dragon_Dance = {"Dragon Dance",0,100,20,15,0,0,&Dragon_Dancef,{1,0,0,0,1,0,0},100};
struct Move Will_O_Wisp = {"Will-O-Wisp",0,90,15,2,0,0,&Will_O_Wispf,{0,0,0,0,0,0,0},100};
struct Move Spore = {"Spore",0,100,10,5,0,0,&Sporef,
{0,0,0,0,0,0,0},100};
struct Move Toxic = {"Toxic",0,90,10,8,0,0,&Toxicf,
{0,0,0,0,0,0,0},100};

MoveSlot Empty_slot = {&Nothing,5,1};
MoveSlot Struggle_Slot = {&Struggle,5,1};