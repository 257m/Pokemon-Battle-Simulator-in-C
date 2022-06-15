#include <stdio.h>
#include <time.h>
#include <stdlib.h>

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


struct MyPokemon Pokemon1 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing,0,0,0,0,0,0};

struct MyPokemon EnemyPokemon1 ={&Charmander,5,18,&Docile,0,0,0,0,0,0,&Scratch,&Nothing,&Nothing,&Nothing};

int StatCalc = 1;
int BattleMode = 0;
int Retrieve = 0;
int Execute = 0;
int Reset = 0;
int First = 0;
int Display = 0;
char x[32];
struct Move *YourTurn;
struct Move *EnemyTurn;
int Damage;
int EnemyDamage;
float STAB;
float EnemySTAB;

int Battle() {
  
  while (StatCalc == 1) {
  Pokemon1.Hp =  ((Pokemon1.IVHp + 2 * Pokemon1.Poke->Hp + (Pokemon1.EVHp/4)) * Pokemon1.Level/100 ) + 10 +Pokemon1.Level;
  
  Pokemon1.Atk = (((Pokemon1.IVAtk + 2 * Pokemon1.Poke->Atk + (Pokemon1.EVAtk/4) ) * Pokemon1.Level/100 ) + 5) * Pokemon1.Nature->Atk;
  
  Pokemon1.Def = (((Pokemon1.IVDef + 2 * Pokemon1.Poke->Def + (Pokemon1.EVDef/4) ) * Pokemon1.Level/100 ) + 5) * Pokemon1.Nature->Def;
  
  Pokemon1.SpA = (((Pokemon1.IVSpA + 2 * Pokemon1.Poke->SpA + (Pokemon1.EVSpA/4) ) * Pokemon1.Level/100 ) + 5) * Pokemon1.Nature->SpA;
  
  Pokemon1.SpD = (((Pokemon1.IVSpD + 2 * Pokemon1.Poke->SpD + (Pokemon1.EVSpD/4) ) * Pokemon1.Level/100 ) + 5) * Pokemon1.Nature->SpD;

  Pokemon1.Spe = (((Pokemon1.IVSpe + 2 * Pokemon1.Poke->Spe + (Pokemon1.EVSpe/4) ) * Pokemon1.Level/100 ) + 5) * Pokemon1.Nature->Spe;


  EnemyPokemon1.Hp =  ((EnemyPokemon1.IVHp + 2 * EnemyPokemon1.Poke->Hp + (EnemyPokemon1.EVHp/4)) * EnemyPokemon1.Level/100 ) + 10 +EnemyPokemon1.Level;
  
  EnemyPokemon1.Atk = (((EnemyPokemon1.IVAtk + 2 * EnemyPokemon1.Poke->Atk + (EnemyPokemon1.EVAtk/4) ) * EnemyPokemon1.Level/100 ) + 5) * EnemyPokemon1.Nature->Atk;
  
  EnemyPokemon1.Def = (((EnemyPokemon1.IVDef + 2 * EnemyPokemon1.Poke->Def + (EnemyPokemon1.EVDef/4) ) * EnemyPokemon1.Level/100 ) + 5) * EnemyPokemon1.Nature->Def;
  
  EnemyPokemon1.SpA = (((EnemyPokemon1.IVSpA + 2 * EnemyPokemon1.Poke->SpA + (EnemyPokemon1.EVSpA/4) ) * EnemyPokemon1.Level/100 ) + 5) * EnemyPokemon1.Nature->SpA;
  
  EnemyPokemon1.SpD = (((EnemyPokemon1.IVSpD + 2 * EnemyPokemon1.Poke->SpD + (EnemyPokemon1.EVSpD/4) ) * EnemyPokemon1.Level/100 ) + 5) * EnemyPokemon1.Nature->SpD;

  EnemyPokemon1.Spe = (((EnemyPokemon1.IVSpe + 2 * EnemyPokemon1.Poke->Spe + (EnemyPokemon1.EVSpe/4) ) * EnemyPokemon1.Level/100 ) + 5) * EnemyPokemon1.Nature->Spe;
    
    printf("Pokemon1:\n");
    printf("HP:%d\n",Pokemon1.Hp);
    printf("Atk:%d\n",Pokemon1.Atk);
    printf("Def:%d\n",Pokemon1.Def);
    printf("SpA:%d\n",Pokemon1.SpA);
    printf("SpD:%d\n",Pokemon1.SpD);
    printf("Spe:%d\n",Pokemon1.Spe);
    printf("EnemyPokemon1:\n");
    printf("HP:%d\n",EnemyPokemon1.Hp);
    printf("Atk:%d\n",EnemyPokemon1.Atk);
    printf("Def:%d\n",EnemyPokemon1.Def);
    printf("SpA:%d\n",EnemyPokemon1.SpA);
    printf("SpD:%d\n",EnemyPokemon1.SpD);
    printf("Spe:%d\n",EnemyPokemon1.Spe);
    StatCalc = 0;
    BattleMode = 1;
    Retrieve = 1;
  }
  
  printf("Go %s!\n",Pokemon1.Poke->Name);
  printf("The Enemy sent out %s!\n\n", EnemyPokemon1.Poke->Name);
  
  while(BattleMode == 1) {
    
    while(Retrieve == 1) {
    printf("Enter your move: ");
    scanf("%31[^\n]%*c", x);
    if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,Pokemon1.Move1->Name) == 0) {
      YourTurn = Pokemon1.Move1;
      if(Pokemon1.Move1 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
      }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,Pokemon1.Move2->Name) == 0) {
       YourTurn = Pokemon1.Move2;
      if(Pokemon1.Move2 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
      }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,Pokemon1.Move3->Name) == 0) {
       YourTurn = Pokemon1.Move3;
      if(Pokemon1.Move3 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
      }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,Pokemon1.Move4->Name) == 0) {
       YourTurn = Pokemon1.Move4;
      if(Pokemon1.Move4 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
      }
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
      if (YourTurn != &Nothing && Reset == 0) {
     printf("\nEnter enemy's move: ");
     scanf("%31[^\n]%*c", x);
      if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,EnemyPokemon1.Move1->Name) == 0) {
      EnemyTurn = EnemyPokemon1.Move1;
      if(EnemyPokemon1.Move1 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
      }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,EnemyPokemon1.Move2->Name) == 0) {
       EnemyTurn = EnemyPokemon1.Move2;
      if(EnemyPokemon1.Move2 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
      }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,EnemyPokemon1.Move3->Name) == 0) {
       EnemyTurn = EnemyPokemon1.Move3;
      if(EnemyPokemon1.Move3 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
      }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,EnemyPokemon1.Move4->Name) == 0) {
       EnemyTurn = EnemyPokemon1.Move4;
      if(EnemyPokemon1.Move4 == &Nothing) {
        printf("Move Selection Failed. Please retry.");
      }
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
        }
      if(Reset != 1 && YourTurn != &Nothing && EnemyTurn != &Nothing) {
      Retrieve = 0;
      Execute = 1;
        } else {
        printf("\n\n");
        Reset = 0;
        }
      }

    
    while (Execute == 1) {
      if (YourTurn->Type == Pokemon1.Poke->Type1 || YourTurn->Type == Pokemon1.Poke->Type2) {
        STAB = 1.5;
      } else {
        STAB = 1;
      }
      if (EnemyTurn->Type == EnemyPokemon1.Poke->Type1 || EnemyTurn->Type == EnemyPokemon1.Poke->Type2) {
        EnemySTAB = 1.5;
      } else {
        EnemySTAB = 1;
      }
      
      if (YourTurn->Priority == EnemyTurn->Priority) {
      if (Pokemon1.Spe > EnemyPokemon1.Spe) {
        First = 1;
      }
      else if (Pokemon1.Spe < EnemyPokemon1.Spe) {
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
        Damage = ((((2 * Pokemon1.Level / 5 + 2) * Pokemon1.Atk * YourTurn->BP / EnemyPokemon1.Def) / 50) + 2) * STAB * (TypeChart[YourTurn->Type][EnemyPokemon1.Poke->Type1] * TypeChart[YourTurn->Type][EnemyPokemon1.Poke->Type2]) * ((rand() % 16) + 85) / 100;
        EnemyPokemon1.CurrentHp = EnemyPokemon1.CurrentHp - Damage;
          }
        else if (YourTurn->Category == 2) {
        Damage = ((((2 * Pokemon1.Level / 5 + 2) * Pokemon1.SpA * YourTurn->BP / EnemyPokemon1.SpD) / 50) + 2) * STAB * TypeChart[YourTurn->Type][EnemyPokemon1.Poke->Type1] * TypeChart[YourTurn->Type][EnemyPokemon1.Poke->Type2] * ((rand() % 16) + 85) / 100;
        EnemyPokemon1.CurrentHp = EnemyPokemon1.CurrentHp - Damage; 
          }
        
        if (EnemyTurn->Category == 0) {
         
          }
        else if (EnemyTurn->Category == 1) {
        EnemyDamage = ((((2 * EnemyPokemon1.Level / 5 + 2) * EnemyPokemon1.Atk * EnemyTurn->BP / Pokemon1.Def) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][Pokemon1.Poke->Type1] * TypeChart[EnemyTurn->Type][Pokemon1.Poke->Type2] * ((rand() % 16) + 85) / 100;
        Pokemon1.CurrentHp = Pokemon1.CurrentHp - EnemyDamage;
          }
        else if (EnemyTurn->Category == 2) {
        EnemyDamage = ((((2 * EnemyPokemon1.Level / 5 + 2) * EnemyPokemon1.SpA * EnemyTurn->BP / Pokemon1.SpD) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][Pokemon1.Poke->Type1] * TypeChart[EnemyTurn->Type][Pokemon1.Poke->Type2] * ((rand() % 16) + 85) / 100;
        Pokemon1.CurrentHp = Pokemon1.CurrentHp - EnemyDamage; 
          }
      } else {
        if (YourTurn->Category == 0) {
         
          }
        else if (YourTurn->Category == 1) {
        Damage = ((((2 * Pokemon1.Level / 5 + 2) * Pokemon1.Atk * YourTurn->BP / EnemyPokemon1.Def) / 50) + 2) * STAB * (TypeChart[YourTurn->Type][EnemyPokemon1.Poke->Type1] * TypeChart[YourTurn->Type][EnemyPokemon1.Poke->Type2]) * ((rand() % 16) + 85) / 100;
        EnemyPokemon1.CurrentHp = EnemyPokemon1.CurrentHp - Damage;
          }
        else if (YourTurn->Category == 2) {
        Damage = ((((2 * Pokemon1.Level / 5 + 2) * Pokemon1.SpA * YourTurn->BP / EnemyPokemon1.SpD) / 50) + 2) * STAB * TypeChart[YourTurn->Type][EnemyPokemon1.Poke->Type1] * TypeChart[YourTurn->Type][EnemyPokemon1.Poke->Type2] * ((rand() % 16) + 85) / 100;
        EnemyPokemon1.CurrentHp = EnemyPokemon1.CurrentHp - Damage; 
          }
        
        if (EnemyTurn->Category == 0) {
         
          }
        else if (EnemyTurn->Category == 1) {
        EnemyDamage = ((((2 * EnemyPokemon1.Level / 5 + 2) * EnemyPokemon1.Atk * EnemyTurn->BP / Pokemon1.Def) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][Pokemon1.Poke->Type1] * TypeChart[EnemyTurn->Type][Pokemon1.Poke->Type2] * ((rand() % 16) + 85) / 100;
        Pokemon1.CurrentHp = Pokemon1.CurrentHp - EnemyDamage;
          }
        else if (EnemyTurn->Category == 2) {
        EnemyDamage = ((((2 * EnemyPokemon1.Level / 5 + 2) * EnemyPokemon1.SpA * EnemyTurn->BP / Pokemon1.SpD) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Type][Pokemon1.Poke->Type1] * TypeChart[EnemyTurn->Type][Pokemon1.Poke->Type2] * ((rand() % 16) + 85) / 100;
        Pokemon1.CurrentHp = Pokemon1.CurrentHp - EnemyDamage; 
          }
      }
      Execute = 0;
      Display = 1;
    }
    while (Display == 1) {
      if (First == 1) {
        printf("\n%s used %s!\n",Pokemon1.Poke->Name,YourTurn->Name);
        printf("It did %d damage!\n",Damage);
        printf("The opposing %s is at %d health\n",EnemyPokemon1.Poke->Name,EnemyPokemon1.CurrentHp);
        if (EnemyPokemon1.CurrentHp <= 0) {
          printf("The opposing %s fainted!",EnemyPokemon1.Poke->Name);
          BattleMode = 0;
        } else {
        printf("\nThe opposing %s used %s!\n",EnemyPokemon1.Poke->Name,EnemyTurn->Name);
        printf("It did %d damage!\n",EnemyDamage);
        printf("Your %s is at %d health\n\n",Pokemon1.Poke->Name,Pokemon1.CurrentHp);
          if (Pokemon1.CurrentHp <= 0) {
          printf("Your %s fainted!",Pokemon1.Poke->Name);
          BattleMode = 0;
        }
          }
      }
      else {
        printf("\nThe opposing %s used %s!\n",EnemyPokemon1.Poke->Name,EnemyTurn->Name);
        printf("It did %d damage!\n",EnemyDamage);
        printf("Your %s is at %d health\n",Pokemon1.Poke->Name,Pokemon1.CurrentHp);
        if (Pokemon1.CurrentHp <= 0) {
          printf("Your %s fainted!",Pokemon1.Poke->Name);
          BattleMode = 0;
        } else {
        printf("\n%s used %s!\n",Pokemon1.Poke->Name,YourTurn->Name);
        printf("It did %d damage!\n",Damage);
        printf("The opposing %s is at %d health\n\n",EnemyPokemon1.Poke->Name,EnemyPokemon1.CurrentHp);
          if (EnemyPokemon1.CurrentHp <= 0) {
          printf("The opposing %s fainted!",EnemyPokemon1.Poke->Name);
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
  Battle();
  return 0;
}

