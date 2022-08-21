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

int boolcheck (char mem, char digit) {
  if (digit == 1) {
  if (mem % 2 == 1) {
    return 1;
  } else return 0;
  } else if (digit == 2) {
  if (mem % 4 == 2 || mem % 4 == 3) {
      return 1;
    } else return 0;
  } else if (digit == 3) {
  if (mem % 8 > 3 && mem % 8 != 0) {
      return 1;
    } else return 0;
  } else if (digit == 4) {
  if (mem % 16 > 7 && mem % 16 != 0) {
      return 1;
    } else return 0;
  } else if (digit == 5) {
  if (mem % 32 > 15 && mem % 32 != 0) {
      return 1;
    } else return 0;
  } else if (digit == 6) {
  if (mem % 64 > 31 && mem % 64 != 0) {
      return 1;
    } else return 0;
  } else if (digit == 7) {
  if (mem % 128 > 63 && mem % 128 != 0) {
      return 1;
    } else return 0;
  } else if (digit == 8) {
  if (mem % 256 > 127 && mem % 256 != 0) {
      return 1;
    } else return 0;
  } else return -1;
}

double statboostmult(char statboost) {
  if (statboost >= 0 || statboost == NULL) {
    return (statboost*0.5)+1;
  } else {
    return (double)1/(1+(statboost*-1*0.5));
  }
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

struct PokemonDex {
char Name[12];
char Type1;
char Type2;
char Hp;
char Atk;
char Def;
char SpA;
char SpD;
char Spe;
};

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
unsigned char Status; // Burn=0 Poison=1 Toxic=2 Para=3 Sleep=4 Freeze=5 Frostbite=6 Flinch=7 Drowsy=8
unsigned char Chance;
} StatusChance_t;

struct Move {
 char Name[20];
 unsigned char BP;
 unsigned char Accuracy;
 unsigned char PP;
 unsigned char Type;
 unsigned char Category;
 char Priority;
 int (*movefunc)(unsigned char,bool);
 char BoostRate [8];
 unsigned char BoostChance;
 StatusChance_t StatusChance [];
};

struct Nature {
  float Atk;
  float Def;
  float SpA;
  float SpD;
  float Spe;
  char indexNumber;
  char NatureName [8];
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

typedef struct {
struct Move *Move;
unsigned char PP;
float PPmult;
} MoveSlot;

 struct MyPokemon {
 struct PokemonDex *Poke;
 int Level;
 int CurrentHp;
 struct Nature *Nature;
 unsigned char IVHp;
 unsigned char IVAtk;
 unsigned char IVDef;
 unsigned char IVSpA;
 unsigned char IVSpD;
 unsigned char IVSpe;
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
 unsigned char Volatile_Status [8];
 char StatBoosts [8]; // [0] Attack [1] Defense [2] Special Attack [3] Special Defense [4] Speed [5] Accuracy [6] Evasion [7] Crit 
};

struct Party {
 struct MyPokemon *P1;
 struct MyPokemon *P2;
 struct MyPokemon *P3;
 struct MyPokemon *P4;
 struct MyPokemon *P5;
 struct MyPokemon *P6;
};

struct Party PlayerParty;
struct Party EnemyParty;
MoveSlot *YourTurn;
MoveSlot *EnemyTurn;
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