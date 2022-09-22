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
#include "items/itemfuncs.h"
#include "items/helditems.h"
#include "display/displayparty.h"
#include "other/win.h"
#include "other/switching.h"
#include "display/displayfuncs.h"
#include "executions/execution.h"
#include "executions/endofturn.h"
#include "pokemon/partyset.h"
#include "other/statcalc.h"
#include "battle.h"

int main(void) {
  unsigned long int seed = time(NULL);
  //unsigned long int seed = 1662863004;
  system("clear");
  srand(seed);    
  printf("%d\n",seed);
  printf("%lu\n",sizeof(struct MyPokemon));
  Battle();
  return 0;
  }