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
#include "battle.h"

int main(void) {
  srand(time(NULL));
  printf("%d\n",time(0));
  Battle();
  return 0;
  }