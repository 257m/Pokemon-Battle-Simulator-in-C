#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
#include <stdint.h>
#include "definitions.h"
#include "enumdefs.h"
#include "effectfuncs.h"
#include "effects.h"
#include "movedata.h"
#include "movefuncs.h"
#include "abilityfuncs.h"
#include "abilities.h"
#include "pokedata.h"
#include "itemfuncs.h"
#include "helditems.h"
#include "displayparty.h"
#include "switching.h"
#include "displayfuncs.h"
#include "execution.h"
#include "endofturn.h"
#include "partyset.h"
#include "battle.h"

int main(void) {
  unsigned long int seed = time(NULL);
  system("clear");
  srand(seed);    
  printf("%d\n",seed);
  printf("%lu\n",sizeof(struct Move));
  Battle();
  return 0;
  }