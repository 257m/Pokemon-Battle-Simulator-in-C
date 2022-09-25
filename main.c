#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
#include <stdint.h>
#include "definitions/enumdefs.h"
#include "definitions/definitions.h"
#include "effects/effectfuncs.h"
#include "effects/effects.h"
#include "moves/movedata.h"
#include "moves/movefuncs.h"
#include "abilities/abilities.h"
#include "abilities/abilityfuncs.h"
#include "pokemon/pokedata.h"
#include "items/helditems.h"
#include "items/itemfuncs.h"
#include "display/displayparty.h"
#include "other/win.h"
#include "other/switching.h"
#include "display/displayfuncs.h"
#include "executions/execution.h"
#include "executions/endofturn.h"
#include "pokemon/partyset.h"
#include "other/statcalc.h"
#include "other/retrieve.h"
#include "battle.h"

int main(void) {
  unsigned long int seed = time(NULL);
  //unsigned long int seed = 1662863004;
  system("/bin/stty echo");
  system ("/bin/stty cooked");
  printf("\e[?25h");
  system("clear");
  srand(seed);    
  printf("%d\n",seed);
  // Pokemon Game data display (will segfault if uncommented)
  /*for (int i = 0;i < 1024;i++) {
    printf("%d\t",i);
    printf("%s\t",POKEMONDEX[i].Name);
    printf("%d\t",POKEMONDEX[i].Hp);
    printf("%d\t",POKEMONDEX[i].Atk);
    printf("%d\t",POKEMONDEX[i].Def);
    printf("%d\t",POKEMONDEX[i].SpA);
    printf("%d\t",POKEMONDEX[i].SpD);
    printf("%d\t",POKEMONDEX[i].Spe);
    printf("%s\t",TypeNames[POKEMONDEX[i].Type1]);
    printf("%s\n",TypeNames[POKEMONDEX[i].Type2]);
  }*/
  // Move data display
  /*for (int i = 0;i < 1024;i++) {
    printf("%d\t",i);
    printf("%s\t",MoveList[i].Name);
    printf("%u\t",MoveList[i].BP);
    printf("%u\t",MoveList[i].Accuracy);
    printf("%u\t",MoveList[i].PP);
    printf("%s\t",TypeNames[MoveList[i].Type]);
    printf("%u\t",MoveList[i].Category);
    printf("%d\n",MoveList[i].Priority);
  }*/
  Battle();
  return 0;
  }