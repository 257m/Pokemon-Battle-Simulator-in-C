struct MyPokemon Pokemon1 = {VENUSAUR,100,20,Focus_Sash,Levitate,Jolly,31,31,31,31,31,31,
{{Giga_Drain,0,3},{Stone_Edge,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
0,180,92,4,0,236};

struct MyPokemon Pokemon2 = {48,100,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{{Luminous_Glow,0,3},{Blinding_Flash,0,3},{Super_Attack,0,3}},{Mud_Slap,0,3},
0,236,36,4,0,228};

struct MyPokemon Pokemon3 = {15,100,22,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Vine_Whip,0,3}}
,76,44,204,156,0,0};

struct MyPokemon Pokemon4 = {32,100,21,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Bulk_Up,0,3},{Vine_Whip,0,3}},
4,212,156,36,84,12};

struct MyPokemon Pokemon5 = {28,100,20,Focus_Sash,Blaze,Jolly,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Vine_Whip,0,3},{Ember,0,3}},
0,180,92,4,0,236};

struct MyPokemon Pokemon6 = {35,100,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Gust,0,3}},
0,236,36,4,0,228};

struct MyPokemon EnemyPokemon1 = {BLASTOISE,100,20,Focus_Sash,Levitate,Jolly,31,31,31,31,31,31,
{{Protect,0,3},{Stone_Edge,0,3},{Mercury_Shot,0,3},{Earthquake,0,3}},
0,180,92,4,0,236};

struct MyPokemon EnemyPokemon2 = {19,100,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Sand_Attack,0,3}},
0,236,36,4,0,228};

struct MyPokemon EnemyPokemon3 = {4,100,22,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Vine_Whip,0,3}}
,76,44,204,156,0,0};

struct MyPokemon EnemyPokemon4 = {25,100,21,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Bulk_Up,0,3},{Will_O_Wisp,0,3}}, 4,212,156,36,84,12};

struct MyPokemon EnemyPokemon5 = {30,100,20,Focus_Sash,Blaze,Jolly,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Vine_Whip,0,3},{Ember,0,3}},
0,180,92,4,0,236};

struct MyPokemon EnemyPokemon6 = {29,100,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Gust,0,3}},
0,236,36,4,0,228};

struct Party Parties [2] = {{&Pokemon1,&Pokemon2,&Pokemon3,&Pokemon4,&Pokemon5,&Pokemon6},{&EnemyPokemon1,&EnemyPokemon2,&EnemyPokemon3,&EnemyPokemon4,&EnemyPokemon5,&EnemyPokemon6}};