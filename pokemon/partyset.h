struct MyPokemon Pokemon1 = {&Charmander,5,20,Focus_Sash,Blaze,Jolly,31,31,31,31,31,31,
{Dragon_Tail,0,3},{Stone_Edge,0,3},{Baby_Doll_Eyes,0,3},{Vine_Whip,0,3},
0,180,92,4,0,236};

struct MyPokemon Pokemon2 = {&Pidgey,5,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Mud_Slap,0,3},
0,236,36,4,0,228};

struct MyPokemon Pokemon3 = {&Bulbasaur,5,22,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Vine_Whip,0,3}
,76,44,204,156,0,0};

struct MyPokemon Pokemon4 = {&Squirtle,5,21,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Bulk_Up,0,3},{Vine_Whip,0,3},
4,212,156,36,84,12};

struct MyPokemon Pokemon5 = {&Charmander,5,20,Focus_Sash,Blaze,Jolly,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Vine_Whip,0,3},{Ember,0,3},
0,180,92,4,0,236};

struct MyPokemon Pokemon6 = {&Pidgey,5,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Gust,0,3},
0,236,36,4,0,228};

struct MyPokemon EnemyPokemon1 = {&Charmander,5,20,Leftovers,Blaze,Jolly,31,31,31,31,31,31,
{Protect,0,3},{Stone_Edge,0,3},{Swords_Dance,0,3},{Mud_Slap,0,3},
0,180,92,4,0,236};

struct MyPokemon EnemyPokemon2 = {&Pidgey,5,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Sand_Attack,0,3},
0,236,36,4,0,228};

struct MyPokemon EnemyPokemon3 = {&Bulbasaur,5,22,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Vine_Whip,0,3}
,76,44,204,156,0,0};

struct MyPokemon EnemyPokemon4 = {&Squirtle,5,21,Leftovers,Blaze,Impish,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Bulk_Up,0,3},{Will_O_Wisp,0,3}, 4,212,156,36,84,12};

struct MyPokemon EnemyPokemon5 = {&Charmander,5,20,Focus_Sash,Blaze,Jolly,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Vine_Whip,0,3},{Ember,0,3},
0,180,92,4,0,236};

struct MyPokemon EnemyPokemon6 = {&Pidgey,5,20,Focus_Sash,Blaze,Naive,31,31,31,31,31,31,
{Quick_Attack,0,3},{Stone_Edge,0,3},{Super_Attack,0,3},{Gust,0,3},
0,236,36,4,0,228};

struct Party Parties [2] = {{&Pokemon1,&Pokemon2,&Pokemon3,&Pokemon4,&Pokemon5,&Pokemon6},{&EnemyPokemon1,&EnemyPokemon2,&EnemyPokemon3,&EnemyPokemon4,&EnemyPokemon5,&EnemyPokemon6}};