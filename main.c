#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
#include <stdint.h>
#include <malloc.h>
#include <limits.h>
#include "predefs/queue.h"
#include "predefs/stringfuncs.h"
#include "predefs/gnrltxt.h"
#include "predefs/gnrlfuncs.h"
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
  seed = time(NULL);
  //seed = 1662863004;
  system("/bin/stty echo");
  system ("/bin/stty cooked");
  printf("\e[?25h");
  system("clear");
  srand(seed);    
  printf("%d\n",seed);
  init_free_queue(&garbage_strings);
  garbage_strings.head = NULL;
  garbage_strings.tail = NULL;
  // Pokemon Game data display (will segfault if uncommented)
  /*for (int i = 0;i < 1024;i++) {
    printf("%d\t",i);
    printf("%s\t",str_decompressed_and_format(POKEMONDEX[i].Name));
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
  /*for (int i = 0;i < 54;i++) {
    printf("%d\t",i);
    printf("%s\t",str_decompress_and_format_free(MoveList[i].Name));
    printf("%u\t",MoveList[i].BP);
    printf("%u\t",MoveList[i].Accuracy);
    printf("%u\t",MoveList[i].PP);
    printf("%s\t",TypeNames[MoveList[i].Type]);
    printf("%u\t",MoveList[i].Category);
    printf("%d\n",MoveList[i].Priority);
  }
  clear_free_queue(&garbage_strings);*/
  
  while (1) {
  Battle();
    }
  return 0;
  }