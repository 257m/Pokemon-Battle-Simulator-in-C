#define SET_BIT(BF, N) BF |= ((uint64_t)0x0000000000000001 << N)
#define CLR_BIT(BF, N) BF &= ~((uint64_t)0x0000000000000001 << N)
#define CHK_BIT(BF, N) ((BF >> N) & 0x1)

typedef void (*gpf)(char,bool);

static char c [64];
int stratt (a,b) {
  strcpy(c,a);
  strcat(c,b);
   return c;
}

double statboostmult(char statboost) {
  if (statboost >= 0 || statboost == NULL) {
    return (statboost*0.5)+1;
  } else {
    return (double)1/(1+(statboost*-1*0.5));
  }
}

float ppboostmult(ppboost) {
  return 1 + (0.2 * ppboost);
}

unsigned int map(unsigned int num,unsigned int newmax,unsigned int currentmax) {
  if (currentmax==NULL) currentmax = RAND_MAX;
  return num/((double)currentmax/newmax);
}

unsigned int map2(unsigned int num,unsigned int newmax,unsigned int currentmax) {
  if (currentmax==NULL) currentmax = RAND_MAX;
  if (num > currentmax-(currentmax % newmax)) return map2(rand(),newmax,currentmax);
  else return (num % newmax);
}

unsigned int power2(char num) {
  if (num < 0) return 0;
  unsigned int total = 1;
  for (int i = 0;i < num;i++) {
    total*2;
  }
  return total;
}

double tt(bool condition,double ifcon,double elsecon) {
  if (condition) return ifcon;
  else return elsecon;
}

struct PokemonDex {
char Name[12];
unsigned int Type1 : 5;
unsigned int Type2 : 5;
char Hp;
char Atk;
char Def;
char SpA;
char SpD;
char Spe;
}__attribute__((__packed__));

float TypeChart[19][19] = {
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 },
// [0] ???
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,0.5 ,0 ,1 ,1 ,0.5 ,1 },
// [1] Normal
{1 ,1 ,0.5 ,0.5 ,1 ,2 ,2 ,1 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,0.5 ,1 ,2 ,1 },
// [2] Fire 
{1 ,1 ,2 ,0.5 ,1 ,0.5 ,1 ,1 ,1 ,2 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1 ,1 ,1 },
// [3] Water
{1 ,1 ,1 ,2 ,0.5 ,0.5 ,1 ,1 ,1 ,0 ,2 ,1 ,1 ,1 ,1 ,0.5 ,1 ,1 ,1 },
// [4] Electric
{1 ,1 ,0.5 ,2 ,1 ,0.5 ,1 ,1 ,0.5 ,2 ,0.5 ,1 ,0.5 ,2 ,1 ,0.5 ,1 ,0.5 ,1 },
// [5] Grass
{1 ,1 ,0.5 ,0.5 ,1 ,2 ,0.5 ,1 ,1 ,2 ,2 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1},
// [6] Ice
{1 ,2 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1 ,0.5 ,0.5 ,0.5 ,2 ,0 ,1 ,2 ,2 ,0.5},
// [7] Fighting
{1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,0.5 ,0.5 ,1 ,1 ,1 ,0.5 ,0.5 ,1 ,1 ,0 ,2 },
// [8] Poison
{1 ,1 ,2 ,1 ,2 ,0.5 ,1 ,1 ,2 ,1 ,0 ,1 ,0.5 ,2 ,1 ,1 ,1 ,2 ,1 },
// [9] Ground
{1 ,1 ,1 ,1 ,0.5 ,2 ,1 ,2 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,1 ,1 ,0.5 ,1 },
// [10] Flying
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,2 ,1 ,1 ,0.5 ,1 ,1 ,1 ,1 ,0 ,0.5 ,1 },
// [11] Psychic
{1 ,1 ,0.5 ,1 ,1 ,2 ,1 ,0.5 ,0.5 ,1 ,0.5 ,2 ,1 ,1 ,0.5 ,1 ,2 ,0.5 ,0.5 },
// [12] Bug 
{1 ,1 ,2 ,1 ,1 ,1 ,2 ,0.5 ,1 ,0.5 ,2 ,1 ,2 ,1 ,1 ,1 ,1 ,0.5 ,1},
// [13] Rock
{1 ,0 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,2 ,1 ,0.5 ,1 ,1 },
// [14] Ghost
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,0 },
// [15] Dragon
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,0.5 ,1 ,1 ,1 ,2 ,1 ,1 ,2 ,1 ,0.5 ,1 ,0.5 },
// [16] Dark
{1 ,1 ,0.5 ,0.5 ,0.5 ,1 ,2 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,1 ,0.5 ,2 },
// [17] Steel
{1 ,1 ,0.5 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,2 ,0.5 ,1 }
// [18] Fairy
};

typedef struct {
unsigned char Status; // Burn=0 Poison=1 Toxic=2 Para=3 Sleep=4 Freeze=5 Frostbite=6
unsigned char Chance;
} StatusChance_t;

struct Move {
 char Name[15];
 unsigned char BP;
 unsigned int Accuracy : 7;
 unsigned int PP : 6;
 unsigned int Type : 5;
 unsigned int Category : 2;
 int Priority : 4;
 unsigned char movefunc;
 unsigned char GNRL_PURPOSE [4];
}__attribute__((__packed__));

struct Nature {
  float Atk;
  float Def;
  float SpA;
  float SpD;
  float Spe;
  char NatureName [8];
};

struct Nature NATURE_LIST [] = {
{1,1,1,1,1,"Hardy"},
{1.1,0.9,1,1,1,"Lonely"},
{1.1,1,1,1,0.9,"Brave"},
{1.1,1,0.9,1,1,"Adamant"},
{1.1,1,1,0.9,1,"Naughty"},
{0.9,1.1,1,1,1,"Bold"},
{1,1,1,1,1,"Docile"},
{1,1.1,1,1,0.9,"Relaxed"},
{1,1.1,0.9,1,1,"Impish"},
{1,1.1,1,0.9,1,"Lax"},
{0.9,1,1,1,1.1,"Timid"},
{1,0.9,1,1,1.1,"Hasty"},
{1,1,1,1,1,"Serious"},
{1,1,0.9,1,1.1,"Jolly"},
{1,1,1,0.9,1.1,"Naive"},
{0.9,1,1.1,1,1,"Modest"},
{1,0.9,1.1,1,1,"Mild"},
{1,1,1.1,1,0.9,"Quiet"},
{1,1,1,1,1,"Bashful"},
{1,1,1.1,0.9,1,"Rash"},
{0.9,1,1,1.1,1,"Calm"},
{1,0.9,1,1.1,1,"Gentle"},
{1,1,1,1.1,0.9,"Sassy"},
{1,1,0.9,1.1,1,"Careful"},
{1,1,1,1.1,1,"Quirky"}
};

typedef struct {
unsigned char Move;
unsigned int PP : 6;
unsigned int PPmult : 2;
} MoveSlot;

typedef struct { 
char Name [12];
void (*itemfunc)(char,bool);
} Item;

typedef struct {
char Name [12];
void (*abilityfunc)(char,bool);
} Ability;

 struct MyPokemon {
 struct PokemonDex *Poke;
 unsigned int Level : 7;
 int CurrentHp;
 unsigned char Item;
 unsigned char Ability;
 unsigned int Nature : 5;
 unsigned int IVHp : 5;
 unsigned int IVAtk : 5;
 unsigned int IVDef : 5;
 unsigned int IVSpA : 5;
 unsigned int IVSpD : 5;
 unsigned int IVSpe : 5;
 MoveSlot Move1;
 MoveSlot Move2;
 MoveSlot Move3;
 MoveSlot Move4;
 unsigned char EVHp;
 unsigned char EVAtk;
 unsigned char EVDef;
 unsigned char EVSpA;
 unsigned char EVSpD;
 unsigned char EVSpe;
 unsigned int Hp;
 unsigned int Atk;
 unsigned int Def;
 unsigned int SpA;
 unsigned int SpD;
 unsigned int Spe;
 unsigned char Counter;
 unsigned char Non_Volatile_Status;
 char StatBoosts [8]; // [0] Attack [1] Defense [2] Special Attack [3] Special Defense [4] Speed [5] Accuracy [6] Evasion [7] Crit
 unsigned int ItemUsable : 1;
};

struct Party {
 struct MyPokemon *Member [6];
 uint64_t EFFECT_FLAGS [2];
};

char Stagenames [8][15] = {"Attack","Defense","Special Attack","Special Defense","Speed","Accuracy","Evasion","Crit Chance"};

char Itemtext[2][11] = {"Not Usable", "Usable"};

struct Party Parties [2];
MoveSlot *Turns [2];
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
bool Skip = 0;
char x[32];
int Damage;
int EnemyDamage;
double STAB;
double EnemySTAB;
double PlayerTM;
double EnemyTM;
double PlayerSpeedTM;
double EnemySpeedTM;
bool PlayerCanMove;
bool EnemyCanMove;
bool PlayerPara;
bool EnemyPara;
int PlayerHpSave;
int EnemyHpSave;
bool PlayerDead;
bool EnemyDead;
bool PlayerSleep;
bool EnemySleep;
bool PlayerFrozen;
bool EnemyFrozen;
bool PlayerCrit;
bool EnemyCrit;
bool EndFirst;