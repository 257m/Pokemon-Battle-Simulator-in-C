#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

char c[64];
char d[64];

int stratt (a,b) {
  strcpy(c,"");
  strcpy(d,"");
  strcpy(c,a);
  strcpy(d,b);
  strcat(c,d);
   return c;
}

struct PokemonDex {
char Name[20];
int Type1;
int Type2;
int Hp;
int Atk;
int Def;
int SpA;
int SpD;
int Spe;
};

struct PokemonDex NoPoke = {"NoPoke",0,0,0,0,0,0,0,0};
struct PokemonDex Charmander = {"Charmander",2,0,39,52,43,60,50,65};
struct PokemonDex Bulbasaur = {"Bulbasaur",5,8,45,49,49,65,65,45};
struct PokemonDex Squirtle =
{"Squirtle",3,0,44,48,65,50,64,43};

float TypeChart[19][19] = {
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 },

{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,0.5 ,0 ,1 ,1 ,0.5 ,1 },

{1 ,1 ,0.5 ,0.5 ,1 ,2 ,2 ,1 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,0.5 ,1 ,2 ,1 },

{1 ,1 ,2 ,0.5 ,1 ,0.5 ,1 ,1 ,1 ,2 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1 ,1 ,1 },

{1 ,1 ,1 ,2 ,0.5 ,0.5 ,1 ,1 ,1 ,0 ,2 ,1 ,1 ,1 ,1 ,0.5 ,1 ,1 ,1 },

{1 ,1 ,0.5 ,2 ,1 ,0.5 ,1 ,1 ,0.5 ,2 ,0.5 ,1 ,0.5 ,2 ,1 ,0.5 ,1 ,0.5 ,1 },

{1 ,1 ,0.5 ,0.5 ,1 ,2 ,0.5 ,1 ,1 ,2 ,2 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1},

{1 ,2 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1 ,0.5 ,0.5 ,0.5 ,2 ,0 ,1 ,2 ,2 ,0.5},

{1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,0.5 ,0.5 ,1 ,1 ,1 ,0.5 ,0.5 ,1 ,1 ,0 ,2 },

{1 ,1 ,2 ,1 ,2 ,0.5 ,1 ,1 ,2 ,1 ,0 ,1 ,0.5 ,2 ,1 ,1 ,1 ,2 ,1 },

{1 ,1 ,1 ,1 ,0.5 ,2 ,1 ,2 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,1 ,1 ,0.5 ,1 },

{1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,2 ,1 ,1 ,0.5 ,1 ,1 ,1 ,1 ,0 ,0.5 ,1 },

{1 ,1 ,0.5 ,1 ,1 ,2 ,1 ,0.5 ,0.5 ,1 ,0.5 ,2 ,1 ,1 ,0.5 ,1 ,2 ,0.5 ,0.5 },

{1 ,2 ,1 ,1 ,1 ,2 ,0.5 ,1 ,0.5 ,2 ,1 ,2 ,1 ,1 ,1 ,1 ,0.5 ,1 },

{0 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,2 ,1 ,0.5 ,1 ,1 },

{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,0 },

{1 ,1 ,1 ,1 ,1 ,1 ,0.5 ,1 ,1 ,1 ,2 ,1 ,1 ,2 ,1 ,0.5 ,1 ,0.5 },

{1 ,0.5 ,0.5 ,0.5 ,1 ,2 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,1 ,0.5 ,2 },

{1 ,0.5 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,2 ,0.5 ,1 }
};

struct Move {
 char Name[20];
 int BP;
 int Accuracy;
 int PP;
 int Type;
 int Category;
 int Priority;
 float Chance [9]; // [0]=Burn [1]=Poison [2]=Para [3]=Toxic [4]=Confusion [5]=Sleep [6]=Freeze
};

struct Move Nothing = {"Nothing",0,0,0,0,0,0,{0,0,0,0,0,0,0,0,0}};
struct Move Scratch = {"Scratch",40,100,35,1,1,0,{0,0,0,0,0,0,0,0,0}};
struct Move Water_Gun = {"Water Gun",40,100,25,3,2,0,{0,0,0,0,0,0,0,0,0}};
struct Move Vine_Whip = {"Vine Whip",45,100,35,5,1,0,{0,0,0,0,0,0,0,0,0}};
struct Move Ember = {"Ember",40,100,25,2,2,0,{0.1,0,0,0,0,0,0,0,0}};
struct Move Quick_Attack = {"Quick Attack",40,100,30,1,1,1,{0,0,0,0,0,0,0,0,0}};

struct Nature {
  float Atk;
  float Def;
  float SpA;
  float SpD;
  float Spe;
  int indexNumber;
  char NatureName [8]
};

struct Nature Hardy = {1,1,1,1,1,0,"Hardy"};
struct Nature Lonely = {1.1,0.9,1,1,1,1,"Lonely"};
struct Nature Brave = {1.1,1,1,1,0.9,2,"Brave"};
struct Nature Adamant = {1.1,1,0.9,1,1,3,"Adamant"};
struct Nature Naughty = {1.1,1,1,0.9,1,4,"Naughty"};
struct Nature Bold = {0.9,1.1,1,1,1,5,"Bold"};
struct Nature Docile = {1,1,1,1,1,6,"Docile"};
struct Nature Relaxed = {1,1.1,1,1,0.9,7,"Relaxed"};
struct Nature Impish = {1,1.1,0.9,1,1,8,"Impish"};
struct Nature Lax = {1,1.1,1,0.9,1,9,"Lax"};
struct Nature Timid = {0.9,1,1,1,1.1,10,"Timid"};
struct Nature Hasty = {1,0.9,1,1,1.1,11,"Hasty"};
struct Nature Serious = {1,1,1,1,1,12,"Serious"};
struct Nature Jolly = {1,1,0.9,1,1.1,13,"Jolly"};
struct Nature Naive = {1,1,1,0.9,1.1,14,"Naive"};
struct Nature Modest = {0.9,1,1.1,1,1,15,"Modest"};
struct Nature Mild = {1,0.9,1.1,1,1,16,"Mild"};
struct Nature Quiet = {1,1,1.1,1,0.9,17,"Quiet"};
struct Nature Bashful = {1,1,1,1,1,18,"Bashful"};
struct Nature Rash = {1,1,1.1,0.9,1,19,"Rash"};
struct Nature Calm = {0.9,1,1,1.1,1,20,"Calm"};
struct Nature Gentle = {1,0.9,1,1.1,1,21,"Gentle"};
struct Nature Sassy = {1,1,1,1.1,0.9,22,"Sassy"};
struct Nature Careful = {1,1,0.9,1.1,1,23,"Careful"};
struct Nature Quirky = {1,1,1,1.1,1,24,"Quirky"};

 struct MyPokemon {
 struct PokemonDex *Poke;
 int Level;
 int CurrentHp;
 struct Nature *Nature;
 int IVHp;
 int IVAtk;
 int IVDef;
 int IVSpA;
 int IVSpD;
 int IVSpe;
 struct Move *Move1;
 struct Move *Move2;
 struct Move *Move3;
 struct Move *Move4;
 int EVHp;
 int EVAtk;
 int EVDef;
 int EVSpA;
 int EVSpD;
 int EVSpe;
 int Hp;
 int Atk;
 int Def;
 int SpA;
 int SpD;
 int Spe;
};

struct Party {
 struct MyPokemon *P1;
 struct MyPokemon *P2;
 struct MyPokemon *P3;
 struct MyPokemon *P4;
 struct MyPokemon *P5;
 struct MyPokemon *P6;
};


struct MyPokemon Pokemon1 ={&Charmander,5,20,&Hasty,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,0,0,4,252,252};

struct MyPokemon Pokemon2 ={&Charmander,5,20,&Hasty,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,0,0,4,252,252};

struct MyPokemon Pokemon3 ={&Squirtle,5,20,&Relaxed,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,0,252,252,0,4};

struct MyPokemon Pokemon4 ={&Squirtle,5,20,&Relaxed,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,0,252,252,0,4};

struct MyPokemon Pokemon5 ={&Bulbasaur,5,21,&Gentle,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,252,0,0,252,4};

struct MyPokemon Pokemon6 ={&Bulbasaur,5,21,&Gentle,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,252,0,0,252,4};

struct MyPokemon EnemyPokemon1 ={&Charmander,5,20,&Hasty,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,0,0,4,252,252};

struct MyPokemon EnemyPokemon2 ={&Charmander,5,20,&Hasty,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,0,0,4,252,252};

struct MyPokemon EnemyPokemon3 ={&Squirtle,5,20,&Relaxed,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,0,252,252,0,4};

struct MyPokemon EnemyPokemon4 ={&Squirtle,5,20,&Relaxed,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,0,252,252,0,4};

struct MyPokemon EnemyPokemon5 ={&Bulbasaur,5,21,&Gentle,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,252,0,0,252,4};

struct MyPokemon EnemyPokemon6 ={&Bulbasaur,5,21,&Gentle,31,31,31,31,31,31,&Quick_Attack,&Water_Gun,&Vine_Whip,&Ember,0,252,0,0,252,4};

struct MyPokemon *SwitchSave;

struct Party PlayerParty = {&Pokemon1,&Pokemon2,&Pokemon3,&Pokemon4,&Pokemon5,&Pokemon6};

struct Party EnemyParty =
{&EnemyPokemon1,&EnemyPokemon2,&EnemyPokemon3,&EnemyPokemon4,&EnemyPokemon5,&EnemyPokemon6};

struct MyPokemon **PlayerSwitchSave;
struct MyPokemon **EnemySwitchSave;
struct MyPokemon **Temp;

bool StatCalc = 1;
bool BattleMode = 0;
bool Retrieve = 0;
bool Execute = 0;
bool Reset = 0;
bool First = 0;
bool Display = 0;
bool PlayerSwitch = 0;
bool EnemySwitch = 0;
bool PlayerHit = 0;
bool EnemyHit = 0;
char x[32];
struct Move *YourTurn;
struct Move *EnemyTurn;
int Damage;
int EnemyDamage;
float STAB;
float EnemySTAB;

int Battle() {
  
  while (StatCalc == 1) {
  PlayerParty.P1->Hp =  ((PlayerParty.P1->IVHp + 2 * PlayerParty.P1->Poke->Hp + (PlayerParty.P1->EVHp/4)) * PlayerParty.P1->Level/100 ) + 10 +PlayerParty.P1->Level;
  
  PlayerParty.P1->Atk = (((PlayerParty.P1->IVAtk + 2 * PlayerParty.P1->Poke->Atk + (PlayerParty.P1->EVAtk/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->Atk;
  
  PlayerParty.P1->Def = (((PlayerParty.P1->IVDef + 2 * PlayerParty.P1->Poke->Def + (PlayerParty.P1->EVDef/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->Def;
  
  PlayerParty.P1->SpA = (((PlayerParty.P1->IVSpA + 2 * PlayerParty.P1->Poke->SpA + (PlayerParty.P1->EVSpA/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->SpA;
  
  PlayerParty.P1->SpD = (((PlayerParty.P1->IVSpD + 2 * PlayerParty.P1->Poke->SpD + (PlayerParty.P1->EVSpD/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->SpD;

  PlayerParty.P1->Spe = (((PlayerParty.P1->IVSpe + 2 * PlayerParty.P1->Poke->Spe + (PlayerParty.P1->EVSpe/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->Spe;


  PlayerParty.P2->Hp =  ((PlayerParty.P2->IVHp + 2 * PlayerParty.P2->Poke->Hp + (PlayerParty.P2->EVHp/4)) * PlayerParty.P2->Level/100 ) + 10 +PlayerParty.P2->Level;
  
  PlayerParty.P2->Atk = (((PlayerParty.P2->IVAtk + 2 * PlayerParty.P2->Poke->Atk + (PlayerParty.P2->EVAtk/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->Atk;
  
  PlayerParty.P2->Def = (((PlayerParty.P2->IVDef + 2 * PlayerParty.P2->Poke->Def + (PlayerParty.P2->EVDef/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->Def;
  
  PlayerParty.P2->SpA = (((PlayerParty.P2->IVSpA + 2 * PlayerParty.P2->Poke->SpA + (PlayerParty.P2->EVSpA/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->SpA;
  
  PlayerParty.P2->SpD = (((PlayerParty.P2->IVSpD + 2 * PlayerParty.P2->Poke->SpD + (PlayerParty.P2->EVSpD/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->SpD;

  PlayerParty.P2->Spe = (((PlayerParty.P2->IVSpe + 2 * PlayerParty.P2->Poke->Spe + (PlayerParty.P2->EVSpe/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->Spe;


   PlayerParty.P3->Hp =  ((PlayerParty.P3->IVHp + 2 * PlayerParty.P3->Poke->Hp + (PlayerParty.P3->EVHp/4)) * PlayerParty.P3->Level/100 ) + 10 +PlayerParty.P3->Level;
  
  PlayerParty.P3->Atk = (((PlayerParty.P3->IVAtk + 2 * PlayerParty.P3->Poke->Atk + (PlayerParty.P3->EVAtk/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->Atk;
  
  PlayerParty.P3->Def = (((PlayerParty.P3->IVDef + 2 * PlayerParty.P3->Poke->Def + (PlayerParty.P3->EVDef/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->Def;
  
  PlayerParty.P3->SpA = (((PlayerParty.P3->IVSpA + 2 * PlayerParty.P3->Poke->SpA + (PlayerParty.P3->EVSpA/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->SpA;
  
  PlayerParty.P3->SpD = (((PlayerParty.P3->IVSpD + 2 * PlayerParty.P3->Poke->SpD + (PlayerParty.P3->EVSpD/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->SpD;

  PlayerParty.P3->Spe = (((PlayerParty.P3->IVSpe + 2 * PlayerParty.P3->Poke->Spe + (PlayerParty.P3->EVSpe/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->Spe; 

    
   PlayerParty.P4->Hp =  ((PlayerParty.P4->IVHp + 2 * PlayerParty.P4->Poke->Hp + (PlayerParty.P4->EVHp/4)) * PlayerParty.P4->Level/100 ) + 10 +PlayerParty.P4->Level;
  
  PlayerParty.P4->Atk = (((PlayerParty.P4->IVAtk + 2 * PlayerParty.P4->Poke->Atk + (PlayerParty.P4->EVAtk/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->Atk;
  
  PlayerParty.P4->Def = (((PlayerParty.P4->IVDef + 2 * PlayerParty.P4->Poke->Def + (PlayerParty.P4->EVDef/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->Def;
  
  PlayerParty.P4->SpA = (((PlayerParty.P4->IVSpA + 2 * PlayerParty.P4->Poke->SpA + (PlayerParty.P4->EVSpA/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->SpA;
  
  PlayerParty.P4->SpD = (((PlayerParty.P4->IVSpD + 2 * PlayerParty.P4->Poke->SpD + (PlayerParty.P4->EVSpD/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->SpD;

  PlayerParty.P4->Spe = (((PlayerParty.P4->IVSpe + 2 * PlayerParty.P4->Poke->Spe + (PlayerParty.P4->EVSpe/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->Spe;


  PlayerParty.P5->Hp =  ((PlayerParty.P5->IVHp + 2 * PlayerParty.P5->Poke->Hp + (PlayerParty.P5->EVHp/4)) * PlayerParty.P5->Level/100 ) + 10 +PlayerParty.P5->Level;
  
  PlayerParty.P5->Atk = (((PlayerParty.P5->IVAtk + 2 * PlayerParty.P5->Poke->Atk + (PlayerParty.P5->EVAtk/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->Atk;
  
  PlayerParty.P5->Def = (((PlayerParty.P5->IVDef + 2 * PlayerParty.P5->Poke->Def + (PlayerParty.P5->EVDef/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->Def;
  
  PlayerParty.P5->SpA = (((PlayerParty.P5->IVSpA + 2 * PlayerParty.P5->Poke->SpA + (PlayerParty.P5->EVSpA/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->SpA;
  
  PlayerParty.P5->SpD = (((PlayerParty.P5->IVSpD + 2 * PlayerParty.P5->Poke->SpD + (PlayerParty.P5->EVSpD/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->SpD;

  PlayerParty.P5->Spe = (((PlayerParty.P5->IVSpe + 2 * PlayerParty.P5->Poke->Spe + (PlayerParty.P5->EVSpe/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->Spe;


  PlayerParty.P6->Hp =  ((PlayerParty.P6->IVHp + 2 * PlayerParty.P6->Poke->Hp + (PlayerParty.P6->EVHp/4)) * PlayerParty.P6->Level/100 ) + 10 +PlayerParty.P6->Level;
  
  PlayerParty.P6->Atk = (((PlayerParty.P6->IVAtk + 2 * PlayerParty.P6->Poke->Atk + (PlayerParty.P6->EVAtk/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->Atk;
  
  PlayerParty.P6->Def = (((PlayerParty.P6->IVDef + 2 * PlayerParty.P6->Poke->Def + (PlayerParty.P6->EVDef/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->Def;
  
  PlayerParty.P6->SpA = (((PlayerParty.P6->IVSpA + 2 * PlayerParty.P6->Poke->SpA + (PlayerParty.P6->EVSpA/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->SpA;
  
  PlayerParty.P6->SpD = (((PlayerParty.P6->IVSpD + 2 * PlayerParty.P6->Poke->SpD + (PlayerParty.P6->EVSpD/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->SpD;

  PlayerParty.P6->Spe = (((PlayerParty.P6->IVSpe + 2 * PlayerParty.P6->Poke->Spe + (PlayerParty.P6->EVSpe/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->Spe;

   
  EnemyParty.P1->Hp =  ((EnemyParty.P1->IVHp + 2 * EnemyParty.P1->Poke->Hp + (EnemyParty.P1->EVHp/4)) * EnemyParty.P1->Level/100 ) + 10 +EnemyParty.P1->Level;
  
  EnemyParty.P1->Atk = (((EnemyParty.P1->IVAtk + 2 * EnemyParty.P1->Poke->Atk + (EnemyParty.P1->EVAtk/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Atk;
  
  EnemyParty.P1->Def = (((EnemyParty.P1->IVDef + 2 * EnemyParty.P1->Poke->Def + (EnemyParty.P1->EVDef/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Def;
  
  EnemyParty.P1->SpA = (((EnemyParty.P1->IVSpA + 2 * EnemyParty.P1->Poke->SpA + (EnemyParty.P1->EVSpA/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->SpA;
  
  EnemyParty.P1->SpD = (((EnemyParty.P1->IVSpD + 2 * EnemyParty.P1->Poke->SpD + (EnemyParty.P1->EVSpD/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->SpD;

  EnemyParty.P1->Spe = (((EnemyParty.P1->IVSpe + 2 * EnemyParty.P1->Poke->Spe + (EnemyParty.P1->EVSpe/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Spe;


  EnemyParty.P2->Hp =  ((EnemyParty.P2->IVHp + 2 * EnemyParty.P2->Poke->Hp + (EnemyParty.P2->EVHp/4)) * EnemyParty.P2->Level/100 ) + 10 +EnemyParty.P2->Level;
  
  EnemyParty.P2->Atk = (((EnemyParty.P2->IVAtk + 2 * EnemyParty.P2->Poke->Atk + (EnemyParty.P2->EVAtk/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->Atk;
  
  EnemyParty.P2->Def = (((EnemyParty.P2->IVDef + 2 * EnemyParty.P2->Poke->Def + (EnemyParty.P2->EVDef/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->Def;
  
  EnemyParty.P2->SpA = (((EnemyParty.P2->IVSpA + 2 * EnemyParty.P2->Poke->SpA + (EnemyParty.P2->EVSpA/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->SpA;
  
  EnemyParty.P2->SpD = (((EnemyParty.P2->IVSpD + 2 * EnemyParty.P2->Poke->SpD + (EnemyParty.P2->EVSpD/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->SpD;

  EnemyParty.P2->Spe = (((EnemyParty.P2->IVSpe + 2 * EnemyParty.P2->Poke->Spe + (EnemyParty.P2->EVSpe/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->Spe;


   EnemyParty.P3->Hp =  ((EnemyParty.P3->IVHp + 2 * EnemyParty.P3->Poke->Hp + (EnemyParty.P3->EVHp/4)) * EnemyParty.P3->Level/100 ) + 10 +EnemyParty.P3->Level;
  
  EnemyParty.P3->Atk = (((EnemyParty.P3->IVAtk + 2 * EnemyParty.P3->Poke->Atk + (EnemyParty.P3->EVAtk/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->Atk;
  
  EnemyParty.P3->Def = (((EnemyParty.P3->IVDef + 2 * EnemyParty.P3->Poke->Def + (EnemyParty.P3->EVDef/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->Def;
  
  EnemyParty.P3->SpA = (((EnemyParty.P3->IVSpA + 2 * EnemyParty.P3->Poke->SpA + (EnemyParty.P3->EVSpA/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->SpA;
  
  EnemyParty.P3->SpD = (((EnemyParty.P3->IVSpD + 2 * EnemyParty.P3->Poke->SpD + (EnemyParty.P3->EVSpD/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->SpD;

  EnemyParty.P3->Spe = (((EnemyParty.P3->IVSpe + 2 * EnemyParty.P3->Poke->Spe + (EnemyParty.P3->EVSpe/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->Spe; 

    
   EnemyParty.P4->Hp =  ((EnemyParty.P4->IVHp + 2 * EnemyParty.P4->Poke->Hp + (EnemyParty.P4->EVHp/4)) * EnemyParty.P4->Level/100 ) + 10 +EnemyParty.P4->Level;
  
  EnemyParty.P4->Atk = (((EnemyParty.P4->IVAtk + 2 * EnemyParty.P4->Poke->Atk + (EnemyParty.P4->EVAtk/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->Atk;
  
  EnemyParty.P4->Def = (((EnemyParty.P4->IVDef + 2 * EnemyParty.P4->Poke->Def + (EnemyParty.P4->EVDef/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->Def;
  
  EnemyParty.P4->SpA = (((EnemyParty.P4->IVSpA + 2 * EnemyParty.P4->Poke->SpA + (EnemyParty.P4->EVSpA/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->SpA;
  
  EnemyParty.P4->SpD = (((EnemyParty.P4->IVSpD + 2 * EnemyParty.P4->Poke->SpD + (EnemyParty.P4->EVSpD/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->SpD;

  EnemyParty.P4->Spe = (((EnemyParty.P4->IVSpe + 2 * EnemyParty.P4->Poke->Spe + (EnemyParty.P4->EVSpe/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->Spe;


  EnemyParty.P5->Hp =  ((EnemyParty.P5->IVHp + 2 * EnemyParty.P5->Poke->Hp + (EnemyParty.P5->EVHp/4)) * EnemyParty.P5->Level/100 ) + 10 +EnemyParty.P5->Level;
  
  EnemyParty.P5->Atk = (((EnemyParty.P5->IVAtk + 2 * EnemyParty.P5->Poke->Atk + (EnemyParty.P5->EVAtk/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->Atk;
  
  EnemyParty.P5->Def = (((EnemyParty.P5->IVDef + 2 * EnemyParty.P5->Poke->Def + (EnemyParty.P5->EVDef/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->Def;
  
  EnemyParty.P5->SpA = (((EnemyParty.P5->IVSpA + 2 * EnemyParty.P5->Poke->SpA + (EnemyParty.P5->EVSpA/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->SpA;
  
  EnemyParty.P5->SpD = (((EnemyParty.P5->IVSpD + 2 * EnemyParty.P5->Poke->SpD + (EnemyParty.P5->EVSpD/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->SpD;

  EnemyParty.P5->Spe = (((EnemyParty.P5->IVSpe + 2 * EnemyParty.P5->Poke->Spe + (EnemyParty.P5->EVSpe/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->Spe;


  EnemyParty.P6->Hp =  ((EnemyParty.P6->IVHp + 2 * EnemyParty.P6->Poke->Hp + (EnemyParty.P6->EVHp/4)) * EnemyParty.P6->Level/100 ) + 10 +EnemyParty.P6->Level;
  
  EnemyParty.P6->Atk = (((EnemyParty.P6->IVAtk + 2 * EnemyParty.P6->Poke->Atk + (EnemyParty.P6->EVAtk/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->Atk;
  
  EnemyParty.P6->Def = (((EnemyParty.P6->IVDef + 2 * EnemyParty.P6->Poke->Def + (EnemyParty.P6->EVDef/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->Def;
  
  EnemyParty.P6->SpA = (((EnemyParty.P6->IVSpA + 2 * EnemyParty.P6->Poke->SpA + (EnemyParty.P6->EVSpA/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->SpA;
  
  EnemyParty.P6->SpD = (((EnemyParty.P6->IVSpD + 2 * EnemyParty.P6->Poke->SpD + (EnemyParty.P6->EVSpD/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->SpD;

  EnemyParty.P6->Spe = (((EnemyParty.P6->IVSpe + 2 * EnemyParty.P6->Poke->Spe + (EnemyParty.P6->EVSpe/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->Spe;

    // Remove this before final product
    printf("Pokemon1:\n");
    printf("HP:%d\n",PlayerParty.P1->Hp);
    printf("Atk:%d\n",PlayerParty.P1->Atk);
    printf("Def:%d\n",PlayerParty.P1->Def);
    printf("SpA:%d\n",PlayerParty.P1->SpA);
    printf("SpD:%d\n",PlayerParty.P1->SpD);
    printf("Spe:%d\n",PlayerParty.P1->Spe);
    printf("EnemyPokemon1:\n");
    printf("HP:%d\n",EnemyParty.P1->Hp);
    printf("Atk:%d\n",EnemyParty.P1->Atk);
    printf("Def:%d\n",EnemyParty.P1->Def);
    printf("SpA:%d\n",EnemyParty.P1->SpA);
    printf("SpD:%d\n",EnemyParty.P1->SpD);
    printf("Spe:%d\n",EnemyParty.P1->Spe);
    printf("Heal?\n");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) {
      PlayerParty.P1->CurrentHp = PlayerParty.P1->Hp;
      PlayerParty.P2->CurrentHp = PlayerParty.P2->Hp;
      PlayerParty.P3->CurrentHp = PlayerParty.P3->Hp;
      PlayerParty.P4->CurrentHp = PlayerParty.P4->Hp;
      PlayerParty.P5->CurrentHp = PlayerParty.P5->Hp;
      PlayerParty.P6->CurrentHp = PlayerParty.P6->Hp;

      EnemyParty.P1->CurrentHp = EnemyParty.P1->Hp;
      EnemyParty.P2->CurrentHp = EnemyParty.P2->Hp;
      EnemyParty.P3->CurrentHp = EnemyParty.P3->Hp;
      EnemyParty.P4->CurrentHp = EnemyParty.P4->Hp;
      EnemyParty.P5->CurrentHp = EnemyParty.P5->Hp;
      EnemyParty.P6->CurrentHp = EnemyParty.P6->Hp;
    }
    StatCalc = 0;
    BattleMode = 1;
    Retrieve = 1;
  }
  
  printf("Go %s!\n",PlayerParty.P1->Poke->Name);
  printf("The Enemy sent out %s!\n\n", EnemyParty.P1->Poke->Name);
  YourTurn = &Nothing;
  EnemyTurn = &Nothing;
  while(BattleMode == 1) {
    
    while(Retrieve == 1) {
    PlayerSwitch = 0;
    EnemySwitch = 0;
    printf("Enter your move: ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,PlayerParty.P1->Move1->Name) == 0) {
      YourTurn = PlayerParty.P1->Move1;
      if(PlayerParty.P1->Move1 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,PlayerParty.P1->Move2->Name) == 0) {
       YourTurn = PlayerParty.P1->Move2;
      if(PlayerParty.P1->Move2 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,PlayerParty.P1->Move3->Name) == 0) {
       YourTurn = PlayerParty.P1->Move3;
      if(PlayerParty.P1->Move3 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,PlayerParty.P1->Move4->Name) == 0) {
       YourTurn = PlayerParty.P1->Move4;
      if(PlayerParty.P1->Move4 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    }  else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P2->Poke->Name)) == 0 || strcmp(x,PlayerParty.P2->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
       PlayerSwitchSave = &PlayerParty.P2;
       PlayerSwitch = 1;
      if(PlayerParty.P2->Poke->Name == "NoPoke" || PlayerParty.P2->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P3->Poke->Name)) == 0 || strcmp(x,PlayerParty.P3->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
       PlayerSwitchSave = &PlayerParty.P3;
       PlayerSwitch = 1;
      if(PlayerParty.P3->Poke->Name == "NoPoke" || PlayerParty.P3->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P4->Poke->Name)) == 0 || strcmp(x,PlayerParty.P4->Poke->Name) == 0  || strcmp(x,"P4") == 0) {
       PlayerSwitchSave = &PlayerParty.P4;
       PlayerSwitch = 1;
      if(PlayerParty.P4->Poke->Name == "NoPoke" || PlayerParty.P4->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P5->Poke->Name)) == 0 || strcmp(x,PlayerParty.P5->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
       PlayerSwitchSave = &PlayerParty.P5;
       PlayerSwitch = 1;
      if(PlayerParty.P5->Poke->Name == "NoPoke" || PlayerParty.P5->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P6->Poke->Name)) == 0 || strcmp(x,PlayerParty.P6->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
       PlayerSwitchSave = &PlayerParty.P6;
       PlayerSwitch = 1;
      if(PlayerParty.P6->Poke->Name == "NoPoke" || PlayerParty.P6->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0) {
      printf("P1: %s %d/%d\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      printf("P2: %s %d/%d\n",PlayerParty.P2->Poke->Name,PlayerParty.P2->CurrentHp,PlayerParty.P2->Hp);
      printf("P3: %s %d/%d\n",PlayerParty.P3->Poke->Name,PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("P4: %s %d/%d\n",PlayerParty.P4->Poke->Name,PlayerParty.P4->CurrentHp,PlayerParty.P4->Hp);
      printf("P5: %s %d/%d\n",PlayerParty.P5->Poke->Name,PlayerParty.P5->CurrentHp,PlayerParty.P5->Hp);
      printf("P6: %s %d/%d\n",PlayerParty.P6->Poke->Name,PlayerParty.P6->CurrentHp,PlayerParty.P6->Hp);
      printf("PartyMember?");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      printf("\e[1;37mP1:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P1->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      printf("Attack:%d\n",PlayerParty.P1->Atk);
      printf("Defense:%d\n",PlayerParty.P1->Def);
      printf("Special Attack:%d\n",PlayerParty.P1->SpA);
      printf("Special Defense:%d\n",PlayerParty.P1->SpD);
      printf("Speed:%d\n",PlayerParty.P1->Spe);
      printf("Nature:%s",PlayerParty.P1->Nature->NatureName);
      } else if (strcmp(x,"P2") == 0) {
      printf("\e[1;37mP2:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P2->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P2->CurrentHp,PlayerParty.P2->Hp);
      printf("Attack:%d\n",PlayerParty.P2->Atk);
      printf("Defense:%d\n",PlayerParty.P2->Def);
      printf("Special Attack:%d\n",PlayerParty.P2->SpA);
      printf("Special Defense:%d\n",PlayerParty.P2->SpD);
      printf("Speed:%d\n",PlayerParty.P2->Spe);
      printf("Nature:%s",PlayerParty.P2->Nature->NatureName);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37mP3:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P3->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("Attack:%d\n",PlayerParty.P3->Atk);
      printf("Defense:%d\n",PlayerParty.P3->Def);
      printf("Special Attack:%d\n",PlayerParty.P3->SpA);
      printf("Special Defense:%d\n",PlayerParty.P3->SpD);
      printf("Speed:%d\n",PlayerParty.P3->Spe);
      printf("Nature:%s",PlayerParty.P3->Nature->NatureName);
      } else if (strcmp(x,"P4") == 0) {
      printf("\e[1;37mP4:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P4->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P4->CurrentHp,PlayerParty.P4->Hp);
      printf("Attack:%d\n",PlayerParty.P4->Atk);
      printf("Defense:%d\n",PlayerParty.P4->Def);
      printf("Special Attack:%d\n",PlayerParty.P4->SpA);
      printf("Special Defense:%d\n",PlayerParty.P4->SpD);
      printf("Speed:%d\n",PlayerParty.P4->Spe);
      printf("Nature:%s",PlayerParty.P4->Nature->NatureName);
      } else if (strcmp(x,"P5") == 0) {
      printf("\e[1;37mP5:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P5->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P5->CurrentHp,PlayerParty.P5->Hp);
      printf("Attack:%d\n",PlayerParty.P5->Atk);
      printf("Defense:%d\n",PlayerParty.P5->Def);
      printf("Special Attack:%d\n",PlayerParty.P5->SpA);
      printf("Special Defense:%d\n",PlayerParty.P5->SpD);
      printf("Speed:%d\n",PlayerParty.P5->Spe);
      printf("Nature:%s",PlayerParty.P5->Nature->NatureName);
      } else if (strcmp(x,"P6") == 0) {
      printf("\e[1;37mP6:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P6->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P6->CurrentHp,PlayerParty.P6->Hp);
      printf("Attack:%d\n",PlayerParty.P6->Atk);
      printf("Defense:%d\n",PlayerParty.P6->Def);
      printf("Special Attack:%d\n",PlayerParty.P6->SpA);
      printf("Special Defense:%d\n",PlayerParty.P6->SpD);
      printf("Speed:%d\n",PlayerParty.P6->Spe);
      printf("Nature:%s",PlayerParty.P6->Nature->NatureName);
      }
      Reset = 1;
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
      if (Reset != 1) {
     printf("\nEnter enemy's move: ");
     fgets(x,31,stdin);
     x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,EnemyParty.P1->Move1->Name) == 0) {
      EnemyTurn = EnemyParty.P1->Move1;
      if(EnemyParty.P1->Move1 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,EnemyParty.P1->Move2->Name) == 0) {
       EnemyTurn = EnemyParty.P1->Move2;
      if(EnemyParty.P1->Move2 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,EnemyParty.P1->Move3->Name) == 0) {
       EnemyTurn = EnemyParty.P1->Move3;
      if(EnemyParty.P1->Move3 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,EnemyParty.P1->Move4->Name) == 0) {
       EnemyTurn = EnemyParty.P1->Move4;
      if(EnemyParty.P1->Move4 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    }  else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P2->Poke->Name)) == 0 || strcmp(x,EnemyParty.P2->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
       EnemySwitchSave = &EnemyParty.P2;
       EnemySwitch = 1;
      if(EnemyParty.P2->Poke->Name == "NoPoke" || EnemyParty.P2->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P3->Poke->Name)) == 0 || strcmp(x,EnemyParty.P3->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
       EnemySwitchSave = &EnemyParty.P3;
       EnemySwitch = 1;
      if(EnemyParty.P3->Poke->Name == "NoPoke" || EnemyParty.P3->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P4->Poke->Name)) == 0 || strcmp(x,EnemyParty.P4->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
       EnemySwitchSave = &EnemyParty.P4;
       EnemySwitch = 1;
      if(EnemyParty.P4->Poke->Name == "NoPoke" || EnemyParty.P4->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P5->Poke->Name)) == 0 || strcmp(x,EnemyParty.P5->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
       EnemySwitchSave = &EnemyParty.P5;
       EnemySwitch = 1;
      if(EnemyParty.P5->Poke->Name == "NoPoke" || EnemyParty.P5->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P6->Poke->Name)) == 0 || strcmp(x,EnemyParty.P6->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
       EnemySwitchSave = &EnemyParty.P6;
       EnemySwitch = 1;
      if(EnemyParty.P6->Poke->Name == "NoPoke" || EnemyParty.P6->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0) {
      printf("P1: %s %d/%d\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      printf("P2: %s %d/%d\n",EnemyParty.P2->Poke->Name,EnemyParty.P2->CurrentHp,EnemyParty.P2->Hp);
      printf("P3: %s %d/%d\n",EnemyParty.P3->Poke->Name,EnemyParty.P3->CurrentHp,EnemyParty.P3->Hp);
      printf("P4: %s %d/%d\n",EnemyParty.P4->Poke->Name,EnemyParty.P4->CurrentHp,EnemyParty.P4->Hp);
      printf("P5: %s %d/%d\n",EnemyParty.P5->Poke->Name,EnemyParty.P5->CurrentHp,EnemyParty.P5->Hp);
      printf("P6: %s %d/%d\n",EnemyParty.P6->Poke->Name,EnemyParty.P6->CurrentHp,EnemyParty.P6->Hp);
      printf("PartyMember?");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      printf("\e[1;37mP1:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P1->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      printf("Attack:%d\n",EnemyParty.P1->Atk);
      printf("Defense:%d\n",EnemyParty.P1->Def);
      printf("Special Attack:%d\n",EnemyParty.P1->SpA);
      printf("Special Defense:%d\n",EnemyParty.P1->SpD);
      printf("Speed:%d\n",EnemyParty.P1->Spe);
      printf("Nature:%s",EnemyParty.P1->Nature->NatureName);
      } else if (strcmp(x,"P2") == 0) {
      printf("\e[1;37mP2:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P2->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P2->CurrentHp,EnemyParty.P2->Hp);
      printf("Attack:%d\n",EnemyParty.P2->Atk);
      printf("Defense:%d\n",EnemyParty.P2->Def);
      printf("Special Attack:%d\n",EnemyParty.P2->SpA);
      printf("Special Defense:%d\n",EnemyParty.P2->SpD);
      printf("Speed:%d\n",EnemyParty.P2->Spe);
      printf("Nature:%s",EnemyParty.P2->Nature->NatureName);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37mP3:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P3->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P3->CurrentHp,EnemyParty.P3->Hp);
      printf("Attack:%d\n",EnemyParty.P3->Atk);
      printf("Defense:%d\n",EnemyParty.P3->Def);
      printf("Special Attack:%d\n",EnemyParty.P3->SpA);
      printf("Special Defense:%d\n",EnemyParty.P3->SpD);
      printf("Speed:%d\n",EnemyParty.P3->Spe);
      printf("Nature:%s",EnemyParty.P3->Nature->NatureName);
      } else if (strcmp(x,"P4") == 0) {
      printf("\e[1;37mP4:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P4->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P4->CurrentHp,EnemyParty.P4->Hp);
      printf("Attack:%d\n",EnemyParty.P4->Atk);
      printf("Defense:%d\n",EnemyParty.P4->Def);
      printf("Special Attack:%d\n",EnemyParty.P4->SpA);
      printf("Special Defense:%d\n",EnemyParty.P4->SpD);
      printf("Speed:%d\n",EnemyParty.P4->Spe);
      printf("Nature:%s",EnemyParty.P4->Nature->NatureName);
      } else if (strcmp(x,"P5") == 0) {
      printf("\e[1;37mP5:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P5->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P5->CurrentHp,EnemyParty.P5->Hp);
      printf("Attack:%d\n",EnemyParty.P5->Atk);
      printf("Defense:%d\n",EnemyParty.P5->Def);
      printf("Special Attack:%d\n",EnemyParty.P5->SpA);
      printf("Special Defense:%d\n",EnemyParty.P5->SpD);
      printf("Speed:%d\n",EnemyParty.P5->Spe);
      printf("Nature:%s",EnemyParty.P5->Nature->NatureName);
      } else if (strcmp(x,"P6") == 0) {
      printf("\e[1;37mP6:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P6->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P6->CurrentHp,EnemyParty.P6->Hp);
      printf("Attack:%d\n",EnemyParty.P6->Atk);
      printf("Defense:%d\n",EnemyParty.P6->Def);
      printf("Special Attack:%d\n",EnemyParty.P6->SpA);
      printf("Special Defense:%d\n",EnemyParty.P6->SpD);
      printf("Speed:%d\n",EnemyParty.P6->Spe);
      printf("Nature:%s",EnemyParty.P6->Nature->NatureName);
      }
      Reset = 1;

    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
        }
      if(Reset == 0) {
      Retrieve = 0;
      Execute = 1;
        } else {
        printf("\n\n");
        Reset = 0;
        }
      }

    
    while (Execute == 1) {
      // reset damage counter 
      Damage = 0;
      EnemyDamage = 0;
      // sets stabs
      if (YourTurn->Type == PlayerParty.P1->Poke->Type1 || YourTurn->Type == PlayerParty.P1->Poke->Type2) {
        STAB = 1.5;
      } else {
        STAB = 1;
      }

      if (EnemyTurn->Type == EnemyParty.P1->Poke->Type1 || EnemyTurn->Type == EnemyParty.P1->Poke->Type2) {
        EnemySTAB = 1.5;
      } else {
        EnemySTAB = 1;
      }
      // sees who moves first
      if (YourTurn->Priority == EnemyTurn->Priority) {
      if (PlayerParty.P1->Spe > EnemyParty.P1->Spe) {
        First = 1;
      }
      else if (PlayerParty.P1->Spe < EnemyParty.P1->Spe) {
        First = 0;
      }
      else {
        if (rand() % 2 == 0) {
          First = 1;
        }
        else {
          First = 0;
        }
      }
        } else {
        if (YourTurn->Priority > EnemyTurn->Priority) {
          First = 1;
        }
        else if (YourTurn->Priority < EnemyTurn->Priority) {
        First = 0;
      }
        }
      if (EnemySwitch == 1 && PlayerSwitch == 0) {
        First = 0;
      } else if (PlayerSwitch == 1 && EnemySwitch == 0) {
        First = 1;
      }
       
      
      if (First == 1) {
        if (PlayerSwitch == 0) {
        if (rand() % 100 < YourTurn->Accuracy) {
          PlayerHit = 1;
        } else {
          PlayerHit = 0;
        }
        if (YourTurn->Category == 0) {
         
          }
        else if (YourTurn->Category == 1) {
        if (PlayerParty.P1->CurrentHp > 0) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * PlayerParty.P1->Atk * YourTurn->BP / EnemyParty.P1->Def) / 50) + 2) * STAB * (TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2]) * ((rand() % 16) + 85) / 100) * PlayerHit;
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage;
          }
          } else if (YourTurn->Category == 2) {
        if (PlayerParty.P1->CurrentHp > 0) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * PlayerParty.P1->SpA * YourTurn->BP / EnemyParty.P1->SpD) / 50) + 2) * STAB * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * PlayerHit;
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage; 
          }
          }
          }  else {
         Switcheroo3(&PlayerSwitchSave);
         PlayerHit = 1;
      }
        
        
        
        if (EnemySwitch == 0) {
        if (rand() % 100 < EnemyTurn->Accuracy) {
          EnemyHit = 1;
        } else {
          EnemyHit = 0;
        }
        if (EnemyTurn->Category == 0) {
         
          }
        else if (EnemyTurn->Category == 1) {
        if (EnemyParty.P1->CurrentHp > 0) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * EnemyParty.P1->Atk * EnemyTurn->BP / PlayerParty.P1->Def) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyHit;
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
          }
          }
        else if (EnemyTurn->Category == 2) {
        if (EnemyParty.P1->CurrentHp > 0) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * EnemyParty.P1->SpA * EnemyTurn->BP / PlayerParty.P1->SpD) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyHit;
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage; 
          }
          }
      }  else {
         Switcheroo4(&EnemySwitchSave);
         EnemyHit = 1;
      }
        } else {
        if (EnemySwitch == 0) {
        if (rand() % 100 < EnemyTurn->Accuracy) {
          EnemyHit = 1;
        } else {
          EnemyHit = 0;
        }
        if (EnemyTurn->Category == 0) {
         
          }
        else if (EnemyTurn->Category == 1) {
        if (EnemyParty.P1->CurrentHp > 0) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * EnemyParty.P1->Atk * EnemyTurn->BP / PlayerParty.P1->Def) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyHit;
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
          }
          }
        else if (EnemyTurn->Category == 2) {
        if (EnemyParty.P1->CurrentHp > 0) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * EnemyParty.P1->SpA * EnemyTurn->BP / PlayerParty.P1->SpD) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyHit;
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage; 
          }
          }
      } else {
         Switcheroo4(&EnemySwitchSave);
         EnemyHit = 1;
      }
      
      if (PlayerSwitch == 0) {
        if (rand() % 100 < YourTurn->Accuracy) {
          PlayerHit = 1;
        } else {
          PlayerHit = 0;
        }
        if (YourTurn->Category == 0) {
         
          }
        else if (YourTurn->Category == 1) {
        if (PlayerParty.P1->CurrentHp > 0) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * PlayerParty.P1->Atk * YourTurn->BP / EnemyParty.P1->Def) / 50) + 2) * STAB * (TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2]) * ((rand() % 16) + 85) / 100) * PlayerHit;
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage;
          }
          }
        else if (YourTurn->Category == 2) {
        if (PlayerParty.P1->CurrentHp > 0) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * PlayerParty.P1->SpA * YourTurn->BP / EnemyParty.P1->SpD) / 50) + 2) * STAB * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * PlayerHit;
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage; 
          }
          }
          }  else {
         Switcheroo3(&PlayerSwitchSave);
         PlayerHit = 0;
      }
        }
      Execute = 0;
      Display = 1;
    }
    while (Display == 1) {
      if (First == 1) {
        if (PlayerSwitch == 0) {
        printf("\n%s used %s!\n",PlayerParty.P1->Poke->Name,YourTurn->Name);
        if (PlayerHit == 1) {
        printf("It did %d damage!\n",Damage);
        if (TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
        }
        printf("The opposing %s is at %d/%d hp\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
          } else {
          printf("But it missed!\n");
          }
          } else {
          printf("\nYou switched out to %s\n",PlayerParty.P1->Poke->Name);
          }
          
        if (EnemyParty.P1->CurrentHp <= 0) {
          printf("The opposing %s fainted!\n",EnemyParty.P1->Poke->Name);
          SwitchIn(0);
        } else {
        if (EnemySwitch == 0) {
        printf("\nThe opposing %s used %s!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Name);
        if (EnemyHit == 1) {
        printf("It did %d damage!\n",EnemyDamage);
        if (TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
        }
        printf("Your %s is at %d/%d hp\n\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
          } else {
          printf("But it missed!\n");
          }
          if (PlayerParty.P1->CurrentHp <= 0) {
          printf("Your %s fainted!\n",PlayerParty.P1->Poke->Name);
          SwitchIn(1);
        }
          } else {
          printf("The Enemy switched out to %s\n\n",EnemyParty.P1->Poke->Name);
          }
          }
      }
      else {
        if (EnemySwitch == 0) {
        printf("\nThe opposing %s used %s!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Name);
        if (EnemyHit == 1) {
        printf("It did %d damage!\n",EnemyDamage);
        if (TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
        }
        printf("Your %s is at %d/%d hp\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
          } else {
          printf("But it missed!\n");
          }
          } else {
          printf("\nThe Enemy switched out to %s\n",EnemyParty.P1->Poke->Name);
          }
        if (PlayerParty.P1->CurrentHp <= 0) {
          printf("Your %s fainted!\n",PlayerParty.P1->Poke->Name);
          SwitchIn(1);
        } else {
        if (PlayerSwitch == 0) {
        printf("\n%s used %s!\n",PlayerParty.P1->Poke->Name,YourTurn->Name);
        if (PlayerHit == 1) {
        printf("It did %d damage!\n",Damage);
        if (TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
        }
        printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
          }
          if (EnemyParty.P1->CurrentHp <= 0) {
          printf("The opposing %s fainted!\n",EnemyParty.P1->Poke->Name);
          SwitchIn(0);
        }
          } else {
          printf("You switched out to %s\n\n",PlayerParty.P1->Poke->Name);
          }
          }
      }
      Display = 0;
      Retrieve = 1;
    }
  }
  return 0;
}

int Switcheroo(struct MyPokemon **S1) {
  Temp = *S1;
  *S1 = PlayerParty.P1;
  PlayerParty.P1 = Temp;
  return 0;
  }

int Switcheroo2(struct MyPokemon **S2) {
  Temp = *S2;
  *S2 = EnemyParty.P1;
  EnemyParty.P1 = Temp;
  return 0;
  }
int Switcheroo3(struct MyPokemon ***S3) {
  Temp = **S3;
  **S3 = PlayerParty.P1;
  PlayerParty.P1 = Temp;
  return 0;
  }

int Switcheroo4(struct MyPokemon ***S4) {
  Temp = **S4;
  **S4 = EnemyParty.P1;
  EnemyParty.P1 = Temp;
  return 0;
  }



int SwitchIn(PlayerOrEnemy) {
          if (PlayerOrEnemy == 0) {
          printf("EnemySwitch-In: ");
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P2->Poke->Name)) == 0 || strcmp(x,"P2") == 0) {
            if (EnemyParty.P2->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P2);
            printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P3->Poke->Name)) == 0 || strcmp(x,EnemyParty.P3->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
            if (EnemyParty.P3->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P3);
            printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P4->Poke->Name)) == 0 || strcmp(x,EnemyParty.P4->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
            if (EnemyParty.P4->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P4);
              printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P5->Poke->Name)) == 0 || strcmp(x,EnemyParty.P5->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
            if (EnemyParty.P5->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P5);
              printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P6->Poke->Name)) == 0 || strcmp(x,EnemyParty.P6->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
            if (EnemyParty.P6->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P6);
              printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          } else if (strcmp(x,"View Party") == 0) {
      printf("P1: %s %d/%d\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      printf("P2: %s %d/%d\n",EnemyParty.P2->Poke->Name,EnemyParty.P2->CurrentHp,EnemyParty.P2->Hp);
      printf("P3: %s %d/%d\n",EnemyParty.P3->Poke->Name,EnemyParty.P3->CurrentHp,EnemyParty.P3->Hp);
      printf("P4: %s %d/%d\n",EnemyParty.P4->Poke->Name,EnemyParty.P4->CurrentHp,EnemyParty.P4->Hp);
      printf("P5: %s %d/%d\n",EnemyParty.P5->Poke->Name,EnemyParty.P5->CurrentHp,EnemyParty.P5->Hp);
      printf("P6: %s %d/%d\n",EnemyParty.P6->Poke->Name,EnemyParty.P6->CurrentHp,EnemyParty.P6->Hp);
      printf("PartyMember?");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      printf("\e[1;37mP1:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P1->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      printf("Attack:%d\n",EnemyParty.P1->Atk);
      printf("Defense:%d\n",EnemyParty.P1->Def);
      printf("Special Attack:%d\n",EnemyParty.P1->SpA);
      printf("Special Defense:%d\n",EnemyParty.P1->SpD);
      printf("Speed:%d\n",EnemyParty.P1->Spe);
      printf("Nature:%s",EnemyParty.P1->Nature->NatureName);
      } else if (strcmp(x,"P2") == 0) {
      printf("\e[1;37mP2:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P2->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P2->CurrentHp,EnemyParty.P2->Hp);
      printf("Attack:%d\n",EnemyParty.P2->Atk);
      printf("Defense:%d\n",EnemyParty.P2->Def);
      printf("Special Attack:%d\n",EnemyParty.P2->SpA);
      printf("Special Defense:%d\n",EnemyParty.P2->SpD);
      printf("Speed:%d\n",EnemyParty.P2->Spe);
      printf("Nature:%s",EnemyParty.P2->Nature->NatureName);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37mP3:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P3->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P3->CurrentHp,EnemyParty.P3->Hp);
      printf("Attack:%d\n",EnemyParty.P3->Atk);
      printf("Defense:%d\n",EnemyParty.P3->Def);
      printf("Special Attack:%d\n",EnemyParty.P3->SpA);
      printf("Special Defense:%d\n",EnemyParty.P3->SpD);
      printf("Speed:%d\n",EnemyParty.P3->Spe);
      printf("Nature:%s",EnemyParty.P3->Nature->NatureName);
      } else if (strcmp(x,"P4") == 0) {
      printf("\e[1;37mP4:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P4->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P4->CurrentHp,EnemyParty.P4->Hp);
      printf("Attack:%d\n",EnemyParty.P4->Atk);
      printf("Defense:%d\n",EnemyParty.P4->Def);
      printf("Special Attack:%d\n",EnemyParty.P4->SpA);
      printf("Special Defense:%d\n",EnemyParty.P4->SpD);
      printf("Speed:%d\n",EnemyParty.P4->Spe);
      printf("Nature:%s",EnemyParty.P4->Nature->NatureName);
      } else if (strcmp(x,"P5") == 0) {
      printf("\e[1;37mP5:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P5->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P5->CurrentHp,EnemyParty.P5->Hp);
      printf("Attack:%d\n",EnemyParty.P5->Atk);
      printf("Defense:%d\n",EnemyParty.P5->Def);
      printf("Special Attack:%d\n",EnemyParty.P5->SpA);
      printf("Special Defense:%d\n",EnemyParty.P5->SpD);
      printf("Speed:%d\n",EnemyParty.P5->Spe);
      printf("Nature:%s",EnemyParty.P5->Nature->NatureName);
      } else if (strcmp(x,"P6") == 0) {
      printf("\e[1;37mP6:\e[0m\n");
      printf("Pokemon:%s\n",EnemyParty.P6->Poke->Name);
      printf("Health:%d/%d\n",EnemyParty.P6->CurrentHp,EnemyParty.P6->Hp);
      printf("Attack:%d\n",EnemyParty.P6->Atk);
      printf("Defense:%d\n",EnemyParty.P6->Def);
      printf("Special Attack:%d\n",EnemyParty.P6->SpA);
      printf("Special Defense:%d\n",EnemyParty.P6->SpD);
      printf("Speed:%d\n",EnemyParty.P6->Spe);
      printf("Nature:%s",EnemyParty.P6->Nature->NatureName);
      }
      SwitchIn(0);
    } else {
            printf("That is not a valid switch. Please Try Again.\n");
            SwitchIn(0);
          }
  } else {
          printf("Switch-In: ");
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P2->Poke->Name)) == 0 || strcmp(x,PlayerParty.P2->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
            if (PlayerParty.P2->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P2);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P3->Poke->Name)) == 0 || strcmp(x,PlayerParty.P3->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
            if (PlayerParty.P3->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P3);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P4->Poke->Name)) == 0 || strcmp(x,PlayerParty.P4->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
            if (PlayerParty.P4->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P4);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P5->Poke->Name)) == 0 || strcmp(x,PlayerParty.P5->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
            if (PlayerParty.P5->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P5);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P6->Poke->Name)) == 0 || strcmp(x,PlayerParty.P6->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
            if (PlayerParty.P6->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P6);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"View Party") == 0) {
      printf("P1: %s %d/%d\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      printf("P2: %s %d/%d\n",PlayerParty.P2->Poke->Name,PlayerParty.P2->CurrentHp,PlayerParty.P2->Hp);
      printf("P3: %s %d/%d\n",PlayerParty.P3->Poke->Name,PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("P4: %s %d/%d\n",PlayerParty.P4->Poke->Name,PlayerParty.P4->CurrentHp,PlayerParty.P4->Hp);
      printf("P5: %s %d/%d\n",PlayerParty.P5->Poke->Name,PlayerParty.P5->CurrentHp,PlayerParty.P5->Hp);
      printf("P6: %s %d/%d\n",PlayerParty.P6->Poke->Name,PlayerParty.P6->CurrentHp,PlayerParty.P6->Hp);
      printf("PartyMember?");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      printf("\e[1;37mP1:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P1->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      printf("Attack:%d\n",PlayerParty.P1->Atk);
      printf("Defense:%d\n",PlayerParty.P1->Def);
      printf("Special Attack:%d\n",PlayerParty.P1->SpA);
      printf("Special Defense:%d\n",PlayerParty.P1->SpD);
      printf("Speed:%d\n",PlayerParty.P1->Spe);
      printf("Nature:%s\n",PlayerParty.P1->Nature->NatureName);
      } else if (strcmp(x,"P2") == 0) {
      printf("\e[1;37mP2:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P2->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P2->CurrentHp,PlayerParty.P2->Hp);
      printf("Attack:%d\n",PlayerParty.P2->Atk);
      printf("Defense:%d\n",PlayerParty.P2->Def);
      printf("Special Attack:%d\n",PlayerParty.P2->SpA);
      printf("Special Defense:%d\n",PlayerParty.P2->SpD);
      printf("Speed:%d\n",PlayerParty.P2->Spe);
      printf("Nature:%s\n",PlayerParty.P2->Nature->NatureName);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37mP3:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P3->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("Attack:%d\n",PlayerParty.P3->Atk);
      printf("Defense:%d\n",PlayerParty.P3->Def);
      printf("Special Attack:%d\n",PlayerParty.P3->SpA);
      printf("Special Defense:%d\n",PlayerParty.P3->SpD);
      printf("Speed:%d\n",PlayerParty.P3->Spe);
      printf("Nature:%s\n",PlayerParty.P3->Nature->NatureName);
      } else if (strcmp(x,"P4") == 0) {
      printf("\e[1;37mP4:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P4->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P4->CurrentHp,PlayerParty.P4->Hp);
      printf("Attack:%d\n",PlayerParty.P4->Atk);
      printf("Defense:%d\n",PlayerParty.P4->Def);
      printf("Special Attack:%d\n",PlayerParty.P4->SpA);
      printf("Special Defense:%d\n",PlayerParty.P4->SpD);
      printf("Speed:%d\n",PlayerParty.P4->Spe);
      printf("Nature:%s\n",PlayerParty.P4->Nature->NatureName);
      } else if (strcmp(x,"P5") == 0) {
      printf("\e[1;37mP5:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P5->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P5->CurrentHp,PlayerParty.P5->Hp);
      printf("Attack:%d\n",PlayerParty.P5->Atk);
      printf("Defense:%d\n",PlayerParty.P5->Def);
      printf("Special Attack:%d\n",PlayerParty.P5->SpA);
      printf("Special Defense:%d\n",PlayerParty.P5->SpD);
      printf("Speed:%d\n",PlayerParty.P5->Spe);
      printf("Nature:%s\n",PlayerParty.P5->Nature->NatureName);
      } else if (strcmp(x,"P6") == 0) {
      printf("\e[1;37mP6:\e[0m\n");
      printf("Pokemon:%s\n",PlayerParty.P6->Poke->Name);
      printf("Health:%d/%d\n",PlayerParty.P6->CurrentHp,PlayerParty.P6->Hp);
      printf("Attack:%d\n",PlayerParty.P6->Atk);
      printf("Defense:%d\n",PlayerParty.P6->Def);
      printf("Special Attack:%d\n",PlayerParty.P6->SpA);
      printf("Special Defense:%d\n",PlayerParty.P6->SpD);
      printf("Speed:%d\n",PlayerParty.P6->Spe);
      printf("Nature:%s\n",PlayerParty.P6->Nature->NatureName);
      }
      SwitchIn(1);
    } else {
            printf("That is not a valid switch. Please Try Again.\n");
            SwitchIn(1);
          }
  }
  return 0;
}

int main(void) {
  srand(time(NULL));
  printf("%d\n",time(0));
  Battle();
  return 0;
}

