int Battle() {
  while (StatCalc) {
    printf("\nSet Party? (y/n): ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    printf("\033[1A");
    printf("\033[2K");
    if (strcmp(x,"y") == 0) {
    for (int j = 0;j < 2;j++) {
    for (int i = 0;i < 6;i++) {
        printf("%sP%d Pokemon? (Name): ",EOPTEXT[j],i+1);
        fgets(x,31,stdin);
        x[strcspn(x, "\n")] = 0;
        printf("\033[1A");
        printf("\033[2K");
        for (int k = 0;k < sizeof(POKEMONDEX)/sizeof(POKEMONDEX[0]);k++) {
        if (strcmp(x,POKEMONDEX[k].Name) == 0) {
          Parties[j].Member[i]->Poke = k;
          break;
          }
        }
        for (int h = 0;h < 4;h++) {
          printf("%sP%d Move%d? (Move): ",EOPTEXT[j],i+1,h+1);
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
          printf("\033[1A");
          printf("\033[2K");
          for (int g = 0;g < sizeof(MoveList)/sizeof(MoveList[0]);g++)
          if (strcmp(x,str_decompress_and_format_free(MoveList[g].Name)) == 0) {
            Parties[j].Member[i]->Moves[h].Move = g;
            break;
          }
        }
      }
      }
      } else {
    printf("Randomize Party? (y/n): ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    printf("\033[1A");
    printf("\033[2K");
    if (strcmp(x,"y") == 0) {
      for (int j = 0;j < 2;j++) {
      for (int i = 0;i < 6;i++) {
      pokemon_randomize(pokemon_clear(Parties[j].Member[i]));
      }
      }
      }
    }
    
    for(int i = 0;i < 6;i++) {
    StatCalcMon(i,0);
    PP_Set(i,0);
    StatCalcMon(i,1);
    PP_Set(i,1);
    }
    
    printf("Heal? (y/n): ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    printf("\033[1A");
    printf("\033[2K");
    if (strcmp(x,"y") == 0) {
      for (int j = 0;j < 2;j++) {
      for (int i = 0;i < 6;i++) {
      Parties[j].Member[i]->CurrentHp = Parties[j].Member[i]->Hp;
      Parties[j].Member[i]->Non_Volatile_Status = 0; 
      Parties[j].Member[i]->ItemUsable = 1;
        }
        }
      CLEAR_EFFECTS(0);
      CLEAR_EFFECTS(1);
    }

    printf("Hide Moves? (y/n): ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) HideMove = 1;
    printf("\033[1A");
    printf("\033[2K");
    printf("Turn on Player Ai? (y/n): ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) Parties[0].AI_MODE = 1;
    printf("\033[1A");
    printf("\033[2K");
    printf("Turn on Enemy Ai? (y/n): ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) Parties[1].AI_MODE = 1;
    printf("\033[1A");
    printf("\033[2K");
    StatCalc = 0;
    BattleMode = 1;
    Retrieve = 1;
  }
  
  printf("Go %s!\n",str_decompress_and_format_free(POKEMONDEX[Parties[0].Member[0]->Poke].Name));
  printf("The Enemy sent out %s!\n\n",str_decompress_and_format_free(POKEMONDEX[Parties[1].Member[0]->Poke].Name));
  Parties[0].Turn = &Empty_slot;
  Parties[1].Turn = &Empty_slot;
  while(BattleMode) {
    clear_free_queue(&garbage_strings);
    TurnCounter++;
    printf("\033[100m\033[3m\033[1mTURN: %d\033[0m\n\n",TurnCounter);
    while(Retrieve) {
    Parties[0].Switching = 0;
    Parties[1].Switching = 0;
      
    RetrieveUserMove(0);
    if (Reset == 0) { 
      if (!HideMove) printf("\n");
      RetrieveUserMove(1);
      }
      
      if(Reset == 0) {
      Retrieve = 0;
      Execute = 1;
      if (!HideMove) printf("\n");
        } else {
        Reset = 0;
        }
      }
    
    for (int i = 0;i < 2;i++) {
    if (Parties[i].AI_MODE && Parties[i].Turn != &Struggle_Slot) Parties[i].Turn = &Parties[i].Member[0]->Moves[rand() % 4];
      }
    
    while (Execute == 1) {
      // reset Damage counters, temporary mults and flags 
      Parties[0].Damage = 0;
      Parties[1].Damage = 0;
      Parties[0].Hit = 1;
      Parties[1].Hit = 1;
      Parties[0].TemporaryMult = 1;
      Parties[1].TemporaryMult = 1;
      Parties[0].SpeedTM = 1;
      Parties[1].SpeedTM = 1;
      Parties[0].CanMove = 1;
      Parties[1].CanMove = 1;
      Parties[0].Para = 0;
      Parties[1].Para = 0;
      Parties[1].Dead = 0;
      Parties[0].Dead = 0;
      Parties[0].Sleep = 0;
      Parties[1].Sleep = 0;
      Parties[0].Flinch = 0;
      Parties[1].Flinch = 0;
      Parties[0].Confused = 0;
      Parties[1].Confused = 0;
      Parties[0].DoesNothing = 0;
      Parties[1].DoesNothing = 0;
      Parties[0].MoveTempType = MoveList[Parties[0].Turn->Move].Type;
      Parties[1].MoveTempType = MoveList[Parties[1].Turn->Move].Type;
      
      // sets stabs (not actually needed anymore but why change it?)
      if (MoveList[Parties[0].Turn->Move].Type == POKEMONDEX[Parties[0].Member[0]->Poke].Type1 || MoveList[Parties[0].Turn->Move].Type == POKEMONDEX[Parties[0].Member[0]->Poke].Type2) {
        Parties[0].STAB = 1.5;
      } else {
        Parties[0].STAB = 1;
      }

      if (MoveList[Parties[1].Turn->Move].Type == POKEMONDEX[Parties[1].Member[0]->Poke].Type1 || MoveList[Parties[1].Turn->Move].Type == POKEMONDEX[Parties[1].Member[0]->Poke].Type2) {
        Parties[1].STAB = 1.5;
      } else {
        Parties[1].STAB = 1;
      }
      // Change speed temp mult based on status
      if (Parties[0].Member[0]->Non_Volatile_Status == 3) Parties[0].SpeedTM /= 2;
      if (Parties[1].Member[0]->Non_Volatile_Status == 3) Parties[1].SpeedTM /= 2;
      // sees who moves first
      if (MoveList[Parties[0].Turn->Move].Priority == MoveList[Parties[1].Turn->Move].Priority) {
      if (floor(Parties[0].Member[0]->Spe*statboostmult(Parties[0].Member[0]->StatBoosts[4]))*Parties[0].SpeedTM == floor(Parties[1].Member[0]->Spe*statboostmult(Parties[1].Member[0]->StatBoosts[4]))*Parties[1].SpeedTM) {
        First = (rand() % 2);
      } else {
        First = floor(Parties[0].Member[0]->Spe*statboostmult(Parties[0].Member[0]->StatBoosts[4]))*Parties[0].SpeedTM > floor(Parties[1].Member[0]->Spe*statboostmult(Parties[1].Member[0]->StatBoosts[4]))*Parties[1].SpeedTM;
      }
        } else {
        First = (MoveList[Parties[0].Turn->Move].Priority > MoveList[Parties[1].Turn->Move].Priority);
        }
      if (Parties[0].Switching ^ Parties[1].Switching) {
        First = Parties[0].Switching;
      }
      // post speed,stab and reset funcs
      ABILITY_FUNC_LIST[AbilityList[Parties[0].Member[0]->Ability].abilityfunc](1,0);
      ABILITY_FUNC_LIST[AbilityList[Parties[1].Member[0]->Ability].abilityfunc](1,1);
      MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc >> 5](0,0,0);
      MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc & REMOVE_FIRST_FIVE_BITS](0,0,1);
      MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc >> 5](0,1,0);
      MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc & REMOVE_FIRST_FIVE_BITS](0,1,1);
      ACTIVATE_EFFECTS(0,0);
      ACTIVATE_EFFECTS(0,1);
      
        ExecuteMove(!First);
        ExecuteMove(First);
      
      if (floor(Parties[0].Member[0]->Spe*statboostmult(Parties[0].Member[0]->StatBoosts[4]))*Parties[0].SpeedTM == floor(Parties[1].Member[0]->Spe*statboostmult(Parties[1].Member[0]->StatBoosts[4]))*Parties[1].SpeedTM) {
        EndFirst = (rand() % 2);
      } else {
        EndFirst = floor(Parties[0].Member[0]->Spe*statboostmult(Parties[0].Member[0]->StatBoosts[4]))*Parties[0].SpeedTM > floor(Parties[1].Member[0]->Spe*statboostmult(Parties[1].Member[0]->StatBoosts[4]))*Parties[1].SpeedTM;
      }

      endturn(!EndFirst);
      endturn(EndFirst);
      
      printf("\n");

      Execute = 0;
      Retrieve = 1;
    }
  }
  return 0;
}