#define SET_BIT(BF, N) BF |= ((uint64_t)0x0000000000000001 << N)
#define CLR_BIT(BF, N) BF &= ~((uint64_t)0x0000000000000001 << N)
#define CHK_BIT(BF, N) ((BF >> N) & 0x1)

typedef void (*gpf)(char,bool);
typedef void (*ugpf)(unsigned char,bool);
typedef void (*mf)(char,bool,bool);

char* stratt(const char *s1, const char *s2)
{
    char *result = malloc(strlen(s1) + strlen(s2) + 1); // +1 for the null-terminator
    // in real code you would check for errors in malloc here
    strcpy(result, s1);
    strcat(result, s2);
    return result;
}
/*
stratt simply returns str1 + str2 without changing str1
*/

char* str_delete_char(char* string,unsigned int del_char) {
  char lensave = (strlen(string)-del_char)+2;
  for (int i = del_char;i < lensave;i++) {
    string[i] = string[i+1];
  }
  return string;
}

double statboostmult(char statboost) {
  if (statboost >= 0) {
    return (statboost*0.5)+1;
  } else {
    return (double)1/(1+(statboost*-1*0.5));
  }
}
/*
This function takes in a char and returns what the stat should be multiplyed by
*/

float ppboostmult(char ppboost) {
  return 1 + (0.2 * ppboost);
}
/* 
Takes in a a num from 0-3 and returns the a multiples 0.2 from 1-1.6
*/

unsigned int map(unsigned int num,unsigned int newmax,unsigned int currentmax) {
  if (currentmax==0) currentmax = RAND_MAX;
  return num/((double)currentmax/newmax);
}

unsigned int map2(unsigned int num,unsigned int newmax,unsigned int currentmax) {
  if (currentmax==0) currentmax = RAND_MAX;
  if (num > (currentmax-(currentmax % newmax))) return map2(rand(),newmax,currentmax);
  else return (num % newmax);
}
/*
these map function are now obsolete but they used to make random number into a more uniform distribution
*/

unsigned int power2(char num) {
  if (num < 0) return 0;
  unsigned int total = 1;
  for (int i = 0;i < num;i++) {
    total *= 2;
  }
  return total;
}
/*
Gives a power of 2 for a number >= 0 else gives a 0
*/

double tt(bool condition,double ifcon,double elsecon) {
  if (condition) return ifcon;
  else return elsecon;
}
/*
This is to make conditional logic availble within a single statement
*/

double tt2(bool condition,double ifcon,double elsecon,double* var) {
  if (condition) {
    *var = ifcon;
    return ifcon;
    }
  else {
    *var = elsecon;
    return elsecon;
    }
}
/*
Same as tt but makes var = the return value before returning
*/

/*
char* str_compress_5_8(const char* decompressed_str) {
  char* compressed_str = malloc(ceil(sizeof(decompressed_str)*5/8));
  char tempchar;
  for (int i = 0;i < sizeof(decompressed_str);i++) {
    tempchar = ((unsigned char)decompressed_str[i] << 3) >> 3;
    compressed_str[i*5/8] |= (unsigned char)((tempchar << 3) >> (unsigned char)((i*5/8-floor(i*5/8))*8));
    compressed_str[(i+1)*5/8] |= (unsigned char)(tempchar << 11 >> (((unsigned char)(((i*5/8-floor(i*5/8))*8)+5)) % 8));
  }
  return compressed_str;
}
*/

struct PokemonDex {
char Name[16]; // Stores the name of pokemon later this going to be compressed
unsigned char Hp;
unsigned char Atk;
unsigned char Def;
unsigned char SpA;
unsigned char SpD;
unsigned char Spe;
// These are the BST values of pokemon stats
unsigned int Type1 : 5; // The first type of pokemon stores 0-32 if a pokemon has been declared with a type > 21 it will cause a segfault
unsigned int Type2 : 5; // Same as Type1 but for the secondary type
}__attribute__((__packed__)); // the gains from the pack are basiclly none-existent but I did it because I can

/*
This is how pokemon data is stored the entire dex will be stored in a array
*/

float TypeChart[21][21] = {
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 },
// [0] ???
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,0.5 ,0 ,1 ,1 ,0.5 ,1 ,1 ,1 },
// [1] Normal
{1 ,1 ,0.5 ,0.5 ,1 ,2 ,2 ,1 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,0.5 ,1 ,2 ,1 ,1 ,1 },
// [2] Fire 
{1 ,1 ,2 ,0.5 ,1 ,0.5 ,1 ,1 ,1 ,2 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1 ,1 ,1 ,1 ,1 },
// [3] Water
{1 ,1 ,1 ,2 ,0.5 ,0.5 ,1 ,1 ,1 ,0 ,2 ,1 ,1 ,1 ,1 ,0.5 ,1 ,1 ,1 ,1 ,1 },
// [4] Electric
{1 ,1 ,0.5 ,2 ,1 ,0.5 ,1 ,1 ,0.5 ,2 ,0.5 ,1 ,0.5 ,2 ,1 ,0.5 ,1 ,0.5 ,1 ,1 ,2 },
// [5] Grass
{1 ,1 ,0.5 ,0.5 ,1 ,2 ,0.5 ,1 ,1 ,2 ,2 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1 ,1 ,1 },
// [6] Ice
{1 ,2 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,1 ,0.5 ,0.5 ,0.5 ,2 ,0 ,1 ,2 ,2 ,0.5 ,2 ,2 },
// [7] Fighting
{1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,0.5 ,0.5 ,1 ,1 ,1 ,0.5 ,0.5 ,1 ,1 ,0 ,2 ,1 ,1 },
// [8] Poison
{1 ,1 ,2 ,1 ,2 ,0.5 ,1 ,1 ,2 ,1 ,0 ,1 ,0.5 ,2 ,1 ,1 ,1 ,2 ,1 ,1 ,1 },
// [9] Ground
{1 ,1 ,1 ,1 ,0.5 ,2 ,1 ,2 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,1 ,1 ,0.5 ,1 ,1 ,1 },
// [10] Flying
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,2 ,1 ,1 ,0.5 ,1 ,1 ,1 ,1 ,0 ,0.5 ,1 ,1 ,1 },
// [11] Psychic
{1 ,1 ,0.5 ,1 ,1 ,2 ,1 ,0.5 ,0.5 ,1 ,0.5 ,2 ,1 ,1 ,0.5 ,1 ,2 ,0.5 ,0.5 ,1 ,2 },
// [12] Bug 
{1 ,1 ,2 ,1 ,1 ,1 ,2 ,0.5 ,1 ,0.5 ,2 ,1 ,2 ,1 ,1 ,1 ,1 ,0.5 ,1 ,1 ,1 },
// [13] Rock
{1 ,0 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,2 ,1 ,0.5 ,1 ,1 ,1 ,1 },
// [14] Ghost
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,0.5 ,0 ,1 ,0.5 },
// [15] Dragon
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,0.5 ,1 ,1 ,1 ,2 ,1 ,1 ,2 ,1 ,0.5 ,1 ,0.5 ,1 ,1 },
// [16] Dark
{1 ,1 ,0.5 ,0.5 ,0.5 ,1 ,2 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,1 ,1 ,1 ,0.5 ,0 },
// [17] Steel
{1 ,1 ,0.5 ,1 ,1 ,1 ,1 ,2 ,0.5 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,2 ,0.5 ,1 ,1 },
// [18] Fairy
{1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,2 ,2 ,0.5 ,2 },
// [19] Sound
{1 ,1 ,0 ,2 ,0.5 ,0.5 ,2 ,1 ,1 ,0.5 ,1 ,2 ,1 ,0.5 ,2 ,2 ,2 ,2 ,0 ,1 ,0 ,0 },7
// [20] Light
};
//  This is the type chart I am soon going to make it so that it stores values from 0-3 instead but that is a task for another day

struct Move {
 char Name[16]; // Stores the names of the pokemon it is going to be compressed soon enough to save space
 unsigned char BP; // The Basepower of the move its a value from 0-255. Note that some move may have a BP over 255 in some cases but that will be handled by a PP multiplier
 unsigned int Accuracy : 7; // The Accruacy of the move it is a vlaue fro 0-127 and if it is above 100 it is considered by the game to be a move that never misses.
 unsigned int PP : 4; // it is a 4 bit unsigned int and simply multiplyed by 5 when trying to retrieve the actual value
 unsigned int Type : 5; // Pretty obvious it stores the Type of the pokemon and it will segfault if above 21 because there are only 22 types if you add the NULL type
 unsigned int Category : 2; // [0] Status [1] Physical [2] Special [4] haven't decided yet I could probably shave off a bit if I merged this with Priority. Actually nevermind 3x12 is 3 which is above 32 so at the very least 6 bits
 int Priority : 4; // Priority of the move from -8 to 8. Although it will at max be -6 to 6 but 12 is higher than 8 so I need 16
 unsigned int movefunc : 10; // Two number values conresponding to a function stored in MOVE_FUNC_LIST. The first five bits are the index of movefunc1 the next five are the index for movefunc2
 unsigned char GNRL_PURPOSE [10]; // General info on the move it's meaning will be interpeted differently based on the movefunc. the first 5 bytes are reserved for movefunc1 the next 5 are for movefunc2
 unsigned char FLAGS; // Flags to stores things that do not vary based on movefunc. Such as if it is a Contact Move or Not
}__attribute__((__packed__));

/*
The structure for move storage it subject to change
*/

struct Nature {
  float Atk;
  float Def;
  float SpA;
  float SpD;
  float Spe;
  char NatureName [8];
};

/*
Structure for storing nature data the values will soon be compressed
*/

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
}__attribute__((__packed__)) MoveSlot;

typedef struct { 
char Name [16];
unsigned char itemfunc;
unsigned char GNRL_PURPOSE[2];
} Item;

typedef struct {
char Name [16];
unsigned char abilityfunc;
unsigned char GNRL_PURPOSE [2];
} Ability;

 struct MyPokemon {
 char StatBoosts [8]; // [0] Attack [1] Defense [2] Special Attack [3] Special Defense [4] Speed [5] Accuracy [6] Evasion [7] Crit
 MoveSlot Moves [4];
 int CurrentHp;
 unsigned int Hp;
 unsigned int Atk;
 unsigned int Def;
 unsigned int SpA;
 unsigned int SpD;
 unsigned int Spe;
 unsigned char Item;
 unsigned char Ability;
 unsigned char EVHp;
 unsigned char EVAtk;
 unsigned char EVDef;
 unsigned char EVSpA;
 unsigned char EVSpD;
 unsigned char EVSpe;
 unsigned char Counter;
 unsigned int ItemUsable : 1;
 unsigned int Level : 7;
 unsigned int Non_Volatile_Status : 4;
 unsigned int Nature : 5;
 unsigned int IVHp : 5;
 unsigned int IVAtk : 5;
 unsigned int IVDef : 5;
 unsigned int IVSpA : 5;
 unsigned int IVSpD : 5;
 unsigned int IVSpe : 5;
 unsigned int Poke : 10;
};

struct Party {
 struct MyPokemon *Member [6];
 MoveSlot *Turn;
 int Damage;
 double STAB;
 double TemporaryMult;
 double SpeedTM;
 uint64_t EFFECT_FLAGS [2];
 char EFFECT_COUNTERS [128];
 unsigned char SwitchSave;
 unsigned int MoveTempType : 5;
 unsigned int Hit : 1;
 unsigned int CanMove : 1;
 unsigned int Dead : 1;
 unsigned int DoesNothing : 1;
 unsigned int Para : 1;
 unsigned int Sleep : 1;
 unsigned int Frozen : 1;
 unsigned int Flinch : 1;
 unsigned int Crit : 1;
 unsigned int Confused : 1;
 unsigned int Switching : 1;
 unsigned int AI_MODE : 1;
};

const char Stagenames [8][16] = {"Attack","Defense","Special Attack","Special Defense","Speed","Accuracy","Evasion","Crit Chance"};

const char Itemtext[2][11] = {"Not Usable", "Usable"};

const char Statusnames [8][12] = {"None","Burned","Poisoned","Intoxicated","Paralyzed","Asleep","Frozen"};

const char EOPTEXT[][14] = {"","The opposing ","","the opposing ","your","enemy","Player","Enemy"};

struct Party Parties [2];
bool StatCalc = 1;
bool BattleMode = 0;
bool Retrieve = 0;
bool Execute = 0;
bool Reset = 0;
bool First = 0;
bool Display = 0;
char x[32];
bool EndFirst;
unsigned int TurnCounter = 0;
bool HideMove = 0;

Ability AbilityList [];
const struct PokemonDex POKEMONDEX [];
void Switch(bool party,unsigned char member);

#define CRIT_CHANCE 16
#define NUMBER_OF_MOVES 49
#define REMOVE_FIRST_FIVE_BITS 31
#define KEEP_LAST_FOUR_BITS 15