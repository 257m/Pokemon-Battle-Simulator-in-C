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

// This is worse than the natures. WAY WORSE
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
 float Chance [9];
};

struct Move Nothing = {"Nothing",0,0,0,0,0,0,{0,0,0,0,0,0,0,0,0}};
struct Move Scratch = {"Scratch",40,100,35,1,1,0,{0,0,0,0,0,0,0,0,0}};

struct Nature {
  float Atk;
  float Def;
  float SpA;
  float SpD;
  float Spe;
  int indexNumber;
};
// Why does this have to be so mindnumbingly tedious?
struct Nature Hardy = {1,1,1,1,1,0};
struct Nature Lonely = {1.1,0.9,1,1,1,1};
struct Nature Brave = {1.1,1,1,1,0.9,2};
struct Nature Adamant = {1.1,1,0.9,1,1,3};
struct Nature Naughty = {1.1,1,1,0.9,1,4};
struct Nature Bold = {0.9,1.1,1,1,1,5};
struct Nature Docile = {1,1,1,1,1,6};
struct Nature Relaxed = {1,1.1,1,1,0.9,7};
struct Nature Impish = {1,1.1,0.9,1,1,8};
struct Nature Lax = {1,1.1,1,0.9,1,9};
struct Nature Timid = {0.9,1,1,1,1.1,10};
struct Nature Hasty = {1,0.9,1,1,1.1,11};
struct Nature Serious = {1,1,1,1,1,12};
struct Nature Jolly = {1,1,0.9,1,1.1,13};
struct Nature Naive = {1,1,1,0.9,1.1,14};
struct Nature Modest = {0.9,1,1.1,1,1,15};
struct Nature Mild = {1,0.9,1.1,1,1,16};
struct Nature Quiet = {1,1,1.1,1,0.9,17};
struct Nature Bashful = {1,1,1,1,1,18};
struct Nature Rash = {1,1,1.1,0.9,1,19};
struct Nature Calm = {0.9,1,1,1.1,1,20};
struct Nature Gentle = {1,0.9,1,1.1,1,21};
struct Nature Sassy = {1,1,1,1.1,0.9,22};
struct Nature Careful = {1,1,0.9,1.1,1,23};
struct Nature Quirky = {1,1,1,1.1,1,24};

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


struct MyPokemon Pokemon1 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing,0,0,0,0,0,0};

struct MyPokemon Pokemon2 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing,0,0,0,0,0,0};

struct MyPokemon Pokemon3 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing,0,0,0,0,0,0};

struct MyPokemon Pokemon4 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing,0,0,0,0,0,0};

struct MyPokemon Pokemon5 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing,0,0,0,0,0,0};

struct MyPokemon Pokemon6 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing,0,0,0,0,0,0};

struct MyPokemon EnemyPokemon1 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing};

struct MyPokemon EnemyPokemon2 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing};

struct MyPokemon EnemyPokemon3 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing};

struct MyPokemon EnemyPokemon4 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing};

struct MyPokemon EnemyPokemon5 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing};

struct MyPokemon EnemyPokemon6 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing};

struct MyPokemon *SwitchSave;

struct MyPokemon *EnemySwitchSave;

struct Party PlayerParty = {&Pokemon1,&Pokemon2,&Pokemon3,&Pokemon4,&Pokemon5,&Pokemon6};

struct Party EnemyParty =
{&EnemyPokemon1,&EnemyPokemon2,&EnemyPokemon3,&EnemyPokemon4,&EnemyPokemon5,&EnemyPokemon6};

struct Switch {
struct MyPokemon *CurrentSwitch;
};

struct Switch PlayerSwitch;
struct Switch EnemySwitch;

bool StatCalc = 1;
bool BattleMode = 0;
bool Retrieve = 0;
bool Execute = 0;
bool Reset = 0;
bool First = 0;
bool Display = 0;
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


  EnemyParty.P1->Hp =  ((EnemyParty.P1->IVHp + 2 * EnemyParty.P1->Poke->Hp + (EnemyParty.P1->EVHp/4)) * EnemyParty.P1->Level/100 ) + 10 +EnemyParty.P1->Level;
  
  EnemyParty.P1->Atk = (((EnemyParty.P1->IVAtk + 2 * EnemyParty.P1->Poke->Atk + (EnemyParty.P1->EVAtk/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Atk;
  
  EnemyParty.P1->Def = (((EnemyParty.P1->IVDef + 2 * EnemyParty.P1->Poke->Def + (EnemyParty.P1->EVDef/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Def;
  
  EnemyParty.P1->SpA = (((EnemyParty.P1->IVSpA + 2 * EnemyParty.P1->Poke->SpA + (EnemyParty.P1->EVSpA/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->SpA;
  
  EnemyParty.P1->SpD = (((EnemyParty.P1->IVSpD + 2 * EnemyParty.P1->Poke->SpD + (EnemyParty.P1->EVSpD/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->SpD;

  EnemyParty.P1->Spe = (((EnemyParty.P1->IVSpe + 2 * EnemyParty.P1->Poke->Spe + (EnemyParty.P1->EVSpe/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Spe;
    
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
    StatCalc = 0;
    BattleMode = 1;
    Retrieve = 1;
  }
  
  printf("Go %s!\n",PlayerParty.P1->Poke->Name);
  printf("The Enemy sent out %s!\n\n", EnemyParty.P1->Poke->Name);
  
  while(BattleMode == 1) {
    
    while(Retrieve == 1) {
    printf("Enter your move: ");
    scanf("%31[^\n]%*c", x);
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
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
      if (Reset != 1) {
     printf("\nEnter enemy's move: ");
     scanf("%31[^\n]%*c", x);
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
    }  else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,strcat("Switch to ",EnemyParty.P2->Poke->Name)) == 0 || strcmp(x,EnemyParty.P2->Poke->Name) == 0) {
       EnemySwitchSave = EnemyParty.P2;
      if(EnemyParty.P2->Poke->Name == "NoPoke") {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,strcat("Switch to ",EnemyParty.P3->Poke->Name)) == 0 || strcmp(x,EnemyParty.P3->Poke->Name) == 0) {
       EnemySwitchSave = EnemyParty.P3;
      if(EnemyParty.P3->Poke->Name == "NoPoke") {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,strcat("Switch to ",EnemyParty.P4->Poke->Name)) == 0 || strcmp(x,EnemyParty.P4->Poke->Name) == 0) {
       EnemySwitchSave = EnemyParty.P4;
      if(EnemyParty.P4->Poke->Name == "NoPoke") {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,strcat("Switch to ",EnemyParty.P5->Poke->Name)) == 0 || strcmp(x,EnemyParty.P5->Poke->Name) == 0) {
       EnemySwitchSave = EnemyParty.P5;
      if(EnemyParty.P5->Poke->Name == "NoPoke") {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,strcat("Switch to ",EnemyParty.P6->Poke->Name)) == 0 || strcmp(x,EnemyParty.P5->Poke->Name) == 0) {
       EnemySwitchSave = EnemyParty.P6;
      if(EnemyParty.P6->Poke->Name == "NoPoke") {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
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
      if (First == 1) {
        if (YourTurn->Category == 0) {
         
          }
        else if (YourTurn->Category == 1) {
        Damage = ((((2 * PlayerParty.P1->Level / 5 + 2) * PlayerParty.P1->Atk * YourTurn->BP / EnemyParty.P1->Def) / 50) + 2) * STAB * (TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2]) * ((rand() % 16) + 85) / 100;
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage;
          }
        else if (YourTurn->Category == 2) {
        Damage = ((((2 * PlayerParty.P1->Level / 5 + 2) * PlayerParty.P1->SpA * YourTurn->BP / EnemyParty.P1->SpD) / 50) + 2) * STAB * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100;
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage; 
          }
        
        if (EnemyTurn->Category == 0) {
         
          }
        else if (EnemyTurn->Category == 1) {
        EnemyDamage = ((((2 * EnemyParty.P1->Level / 5 + 2) * EnemyParty.P1->Atk * EnemyTurn->BP / PlayerParty.P1->Def) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100;
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
          }
        else if (EnemyTurn->Category == 2) {
        EnemyDamage = ((((2 * EnemyParty.P1->Level / 5 + 2) * EnemyParty.P1->SpA * EnemyTurn->BP / PlayerParty.P1->SpD) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100;
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage; 
          }
      } else {
        if (YourTurn->Category == 0) {
         
          }
        else if (YourTurn->Category == 1) {
        Damage = ((((2 * PlayerParty.P1->Level / 5 + 2) * PlayerParty.P1->Atk * YourTurn->BP / EnemyParty.P1->Def) / 50) + 2) * STAB * (TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2]) * ((rand() % 16) + 85) / 100;
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage;
          }
        else if (YourTurn->Category == 2) {
        Damage = ((((2 * PlayerParty.P1->Level / 5 + 2) * PlayerParty.P1->SpA * YourTurn->BP / EnemyParty.P1->SpD) / 50) + 2) * STAB * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Type][EnemyParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100;
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage; 
          }
        
        if (EnemyTurn->Category == 0) {
         
          }
        else if (EnemyTurn->Category == 1) {
        EnemyDamage = ((((2 * EnemyParty.P1->Level / 5 + 2) * EnemyParty.P1->Atk * EnemyTurn->BP / PlayerParty.P1->Def) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100;
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
          }
        else if (EnemyTurn->Category == 2) {
        EnemyDamage = ((((2 * EnemyParty.P1->Level / 5 + 2) * EnemyParty.P1->SpA * EnemyTurn->BP / PlayerParty.P1->SpD) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100;
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage; 
          }
      }
      Execute = 0;
      Display = 1;
    }
    while (Display == 1) {
      if (First == 1) {
        printf("\n%s used %s!\n",PlayerParty.P1->Poke->Name,YourTurn->Name);
        printf("It did %d damage!\n",Damage);
        printf("The opposing %s is at %d health\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp);
        if (EnemyParty.P1->CurrentHp <= 0) {
          printf("The opposing %s fainted!",EnemyParty.P1->Poke->Name);
          BattleMode = 0;
        } else {
        printf("\nThe opposing %s used %s!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Name);
        printf("It did %d damage!\n",EnemyDamage);
        printf("Your %s is at %d health\n\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp);
          if (PlayerParty.P1->CurrentHp <= 0) {
          printf("Your %s fainted!",PlayerParty.P1->Poke->Name);
          BattleMode = 0;
        }
          }
      }
      else {
        printf("\nThe opposing %s used %s!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Name);
        printf("It did %d damage!\n",EnemyDamage);
        printf("Your %s is at %d health\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp);
        if (PlayerParty.P1->CurrentHp <= 0) {
          printf("Your %s fainted!",PlayerParty.P1->Poke->Name);
          BattleMode = 0;
        } else {
        printf("\n%s used %s!\n",PlayerParty.P1->Poke->Name,YourTurn->Name);
        printf("It did %d damage!\n",Damage);
        printf("The opposing %s is at %d health\n\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp);
          if (EnemyParty.P1->CurrentHp <= 0) {
          printf("The opposing %s fainted!",EnemyParty.P1->Poke->Name);
          BattleMode = 0;
        }
          }
      }
      Display = 0;
      Retrieve = 1;
    }
  }
  return 0;
}

int main(void) {
  srand(time(NULL));
  printf("%d\n",time(0));
  printf("%s",stratt(Charmander.Name,Bulbasaur.Name));
  printf("%s",Charmander.Name);
  Battle();
  return 0;
}

