#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
#include "definitions.h"
#include "movefuncs.h"
#include "movedata.h"
#include "pokedata.h"
#include "partyset.h"
#include "switching.h"
#include "displayfuncs.h"
#include "battle.h"

int main(void) {
  unsigned long int seed = time(NULL);
  system("clear");
  srand(seed);    
  printf("%d\n",seed);
  Battle();
  return 0;
  }