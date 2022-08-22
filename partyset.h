struct MyPokemon Pokemon1 = {&Charmander,5,20,Focus_Sash,&Jolly,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Dragon_Dance,0,1.6},{&Vine_Whip,0,1.6},
0,180,92,4,0,236};

struct MyPokemon Pokemon2 = {&Pidgey,5,20,Focus_Sash,&Naive,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Super_Attack,0,1.6},{&Gust,0,1.6},
0,236,36,4,0,228};

struct MyPokemon Pokemon3 = {&Bulbasaur,5,22,Leftovers,&Impish,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Super_Attack,0,1.6},{&Vine_Whip,0,1.6}
,76,44,204,156,0,0};

struct MyPokemon Pokemon4 = {&Squirtle,5,21,Leftovers,&Impish,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Bulk_Up,0,1.6},{&Vine_Whip,0,1.6},
4,212,156,36,84,12};

struct MyPokemon Pokemon5 = {&Charmander,5,0,Focus_Sash,&Jolly,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Vine_Whip,0,1.6},{&Ember,0,1.6},
0,180,92,4,0,236};

struct MyPokemon Pokemon6 = {&Pidgey,5,20,Focus_Sash,&Naive,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Super_Attack,0,1.6},{&Gust,0,1.6},
0,236,36,4,0,228};

struct MyPokemon EnemyPokemon1 = {&Charmander,5,20,Focus_Sash,&Jolly,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Swords_Dance,0,1.6},{&Vine_Whip,0,1.6},
0,180,92,4,0,236};

struct MyPokemon EnemyPokemon2 = {&Pidgey,5,20,Focus_Sash,&Naive,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Super_Attack,0,1.6},{&Gust,0,1.6},
0,236,36,4,0,228};

struct MyPokemon EnemyPokemon3 = {&Bulbasaur,5,22,Leftovers,&Impish,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Super_Attack,0,1.6},{&Vine_Whip,0,1.6}
,76,44,204,156,0,0};

struct MyPokemon EnemyPokemon4 = {&Squirtle,5,21,Focus_Sash,&Impish,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Bulk_Up,0,1.6},{&Will_O_Wisp,0,1.6}, 4,212,156,36,84,12};

struct MyPokemon EnemyPokemon5 = {&Charmander,5,20,Focus_Sash,&Jolly,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Vine_Whip,0,1.6},{&Ember,0,1.6},
0,180,92,4,0,236};

struct MyPokemon EnemyPokemon6 = {&Pidgey,5,20,Focus_Sash,&Naive,31,31,31,31,31,31,
{&Quick_Attack,0,1.6},{&Stone_Edge,0,1.6},{&Super_Attack,0,1.6},{&Gust,0,1.6},
0,236,36,4,0,228};

struct Party PlayerParty = {&Pokemon1,&Pokemon2,&Pokemon3,&Pokemon4,&Pokemon5,&Pokemon6};

struct Party EnemyParty =
{&EnemyPokemon1,&EnemyPokemon2,&EnemyPokemon3,&EnemyPokemon4,&EnemyPokemon5,&EnemyPokemon6};