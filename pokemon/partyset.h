struct MyPokemon Pokemon1 = {ILLSONAR,100,20,Focus_Sash,Levitate,Jolly,31,0,0,31,31,31,
{{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
0,0,0,252,252,4};

struct MyPokemon Pokemon2 = {HORIGHNILE,100,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{{Luminous_Glow,0,3},{Blinding_Flash,0,3},{Blindstrike,0,3},{Quick_Attack,0,3}},
4,0,0,252,0,252};

struct MyPokemon Pokemon3 = {DAROASINAUGHT,100,22,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{{Night_Daze,0,3},{Will_O_Wisp,0,3},{Super_Attack,0,3},{Confuse_Ray,0,3}}
,0,252,0,152,0,104};

struct MyPokemon Pokemon4 = {FAETERNAERT,100,21,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{{Luminous_Glow,0,3},{Blinding_Flash,0,3},{Charm,0,3},{Baby_Doll_Eyes,0,3}},
4,0,0,252,252,0};

struct MyPokemon Pokemon5 = {BOLTYENA,100,20,Focus_Sash,Blaze,Jolly,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Super_Attack,0,3},{Superpower,0,3},{Blindstrike,0,3}},
0,252,4,0,0,252};

struct MyPokemon Pokemon6 = {BULICAYJAL,100,20,Focus_Sash,Aerilate,Jolly,31,31,31,31,31,31,
{{Double_Edge,0,3},{Super_Attack,0,3},{Icicle_Crash,0,3},{Quick_Attack,0,3}},
0,252,4,0,0,252};

struct MyPokemon EnemyPokemon1 = {ILLSONAR,100,20,Focus_Sash,Levitate,Jolly,31,0,0,31,31,31,
{{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
0,0,0,252,252,4};

struct MyPokemon EnemyPokemon2 = {HORIGHNILE,100,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{{Luminous_Glow,0,3},{Blinding_Flash,0,3},{Blindstrike,0,3},{Quick_Attack,0,3}},
4,0,0,252,0,252};

struct MyPokemon EnemyPokemon3 = {DAROASINAUGHT,100,22,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{{Night_Daze,0,3},{Will_O_Wisp,0,3},{Super_Attack,0,3},{Confuse_Ray,0,3}}
,0,252,0,152,0,104};

struct MyPokemon EnemyPokemon4 = {FAETERNAERT,100,21,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{{Luminous_Glow,0,3},{Blinding_Flash,0,3},{Charm,0,3},{Baby_Doll_Eyes,0,3}},
4,0,0,252,252,0};

struct MyPokemon EnemyPokemon5 = {BOLTYENA,100,20,Focus_Sash,Blaze,Jolly,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Super_Attack,0,3},{Superpower,0,3},{Blindstrike,0,3}},
0,252,4,0,0,252};

struct MyPokemon EnemyPokemon6 = {BULICAYJAL,100,20,Focus_Sash,Aerilate,Jolly,31,31,31,31,31,31,
{{Double_Edge,0,3},{Super_Attack,0,3},{Icicle_Crash,0,3},{Quick_Attack,0,3}},
0,252,4,0,0,252};


struct Party Parties [2] = {{&Pokemon1,&Pokemon2,&Pokemon3,&Pokemon4,&Pokemon5,&Pokemon6},{&EnemyPokemon1,&EnemyPokemon2,&EnemyPokemon3,&EnemyPokemon4,&EnemyPokemon5,&EnemyPokemon6}};