int Battle() {
  while (StatCalc) {
    StatCalculation(0);
    StatCalculation(1);

    printf("\nHeal? (y/n): ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) {
      Parties[0].Member[0]->CurrentHp = Parties[0].Member[0]->Hp;
      Parties[0].Member[1]->CurrentHp = Parties[0].Member[1]->Hp;
      Parties[0].Member[2]->CurrentHp = Parties[0].Member[2]->Hp;
      Parties[0].Member[3]->CurrentHp = Parties[0].Member[3]->Hp;
      Parties[0].Member[4]->CurrentHp = Parties[0].Member[4]->Hp;
      Parties[0].Member[5]->CurrentHp = Parties[0].Member[5]->Hp;

      Parties[1].Member[0]->CurrentHp = Parties[1].Member[0]->Hp;
      Parties[1].Member[1]->CurrentHp = Parties[1].Member[1]->Hp;
      Parties[1].Member[2]->CurrentHp = Parties[1].Member[2]->Hp;
      Parties[1].Member[3]->CurrentHp = Parties[1].Member[3]->Hp;
      Parties[1].Member[4]->CurrentHp = Parties[1].Member[4]->Hp;
      Parties[1].Member[5]->CurrentHp = Parties[1].Member[5]->Hp;
      
      Parties[0].Member[0]->Non_Volatile_Status = 0; 
      Parties[0].Member[1]->Non_Volatile_Status = 0;
      Parties[0].Member[2]->Non_Volatile_Status = 0;
      Parties[0].Member[3]->Non_Volatile_Status = 0;
      Parties[0].Member[4]->Non_Volatile_Status = 0;
      Parties[0].Member[5]->Non_Volatile_Status = 0;

      Parties[1].Member[0]->Non_Volatile_Status = 0;
      Parties[1].Member[1]->Non_Volatile_Status = 0;
      Parties[1].Member[2]->Non_Volatile_Status = 0;
      Parties[1].Member[3]->Non_Volatile_Status = 0;
      Parties[1].Member[4]->Non_Volatile_Status = 0;
      Parties[1].Member[5]->Non_Volatile_Status = 0;

      Parties[0].Member[0]->ItemUsable = 1; 
      Parties[0].Member[1]->ItemUsable = 1;
      Parties[0].Member[2]->ItemUsable = 1;
      Parties[0].Member[3]->ItemUsable = 1;
      Parties[0].Member[4]->ItemUsable = 1;
      Parties[0].Member[5]->ItemUsable = 1;

      Parties[1].Member[0]->ItemUsable = 1;
      Parties[1].Member[1]->ItemUsable = 1;
      Parties[1].Member[2]->ItemUsable = 1;
      Parties[1].Member[3]->ItemUsable = 1;
      Parties[1].Member[4]->ItemUsable = 1;
      Parties[1].Member[5]->ItemUsable = 1;

      CLEAR_EFFECTS(0);
      CLEAR_EFFECTS(1);
    }
    printf("\033[1A");
    printf("\033[2K");
    printf("Hide Moves? (y/n): ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) HideMove = 1;
    printf("\033[1A");
    printf("\033[2K");
    StatCalc = 0;
    BattleMode = 1;
    Retrieve = 1;
  }
  
  printf("Go %s!\n",POKEMONDEX[Parties[0].Member[0]->Poke].Name);
  printf("The Enemy sent out %s!\n\n", POKEMONDEX[Parties[1].Member[0]->Poke].Name);
  Parties[0].Turn = &Empty_slot;
  Parties[1].Turn = &Empty_slot;
  while(BattleMode) {
    TurnCounter++;
    printf("\033[100m\033[3m\033[1mTURN: %d\033[0m\n\n",TurnCounter);
    while(Retrieve) {
    Parties[0].Switching = 0;
    Parties[1].Switching = 0;
    printf("Enter your move: ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,MoveList[Parties[0].Member[0]->Move1.Move].Name) == 0) {
      Parties[0].Turn = &Parties[0].Member[0]->Move1;
      if(Parties[0].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[0].Member[0]->Move1.PP <= 0) {
    if (Parties[0].Member[0]->Move2.PP <= 0 && Parties[0].Member[0]->Move3.PP <= 0 && Parties[0].Member[0]->Move4.PP <= 0) {
      Parties[0].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,MoveList[Parties[0].Member[0]->Move2.Move].Name) == 0) {
       Parties[0].Turn = &Parties[0].Member[0]->Move2;
      if(Parties[0].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[0].Member[0]->Move2.PP <= 0) {
    if (Parties[0].Member[0]->Move1.PP <= 0 && Parties[0].Member[0]->Move3.PP <= 0 && Parties[0].Member[0]->Move4.PP <= 0) {
      Parties[0].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,MoveList[Parties[0].Member[0]->Move3.Move].Name) == 0) {
       Parties[0].Turn = &Parties[0].Member[0]->Move3;
       if(Parties[0].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[0].Member[0]->Move3.PP <= 0) {
    if (Parties[0].Member[0]->Move1.PP <= 0 && Parties[0].Member[0]->Move2.PP <= 0 && Parties[0].Member[0]->Move4.PP <= 0) {
      Parties[0].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,MoveList[Parties[0].Member[0]->Move4.Move].Name) == 0) {
       Parties[0].Turn = &Parties[0].Member[0]->Move4;
       if(Parties[0].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[0].Member[0]->Move4.PP <= 0) {
    if (Parties[0].Member[0]->Move1.PP <= 0 && Parties[0].Member[0]->Move2.PP <= 0 && Parties[0].Member[0]->Move3.PP <= 0) {
      Parties[0].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    } else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[0].Member[1]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[0].Member[1]->Poke].Name) == 0 || strcmp(x,"P2") == 0) {
       Parties[0].SwitchSave = 1;
       Parties[0].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[0].Member[1]->Poke].Name,"NoPoke") == 0 || Parties[0].Member[1]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[0].Member[2]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[0].Member[2]->Poke].Name) == 0 || strcmp(x,"P3") == 0) {
       Parties[0].SwitchSave = 2;
       Parties[0].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[0].Member[2]->Poke].Name,"NoPoke") == 0 || Parties[0].Member[2]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[0].Member[3]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[0].Member[3]->Poke].Name) == 0  || strcmp(x,"P4") == 0) {
       Parties[0].SwitchSave = 3;
       Parties[0].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[0].Member[3]->Poke].Name,"NoPoke") == 0 || Parties[0].Member[3]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[0].Member[4]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[0].Member[4]->Poke].Name) == 0 || strcmp(x,"P5") == 0) {
       Parties[0].SwitchSave = 4;
       Parties[0].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[0].Member[4]->Poke].Name,"NoPoke") == 0 || Parties[0].Member[4]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[0].Member[5]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[0].Member[5]->Poke].Name) == 0 || strcmp(x,"P6") == 0) {
       Parties[0].SwitchSave = 5;
       Parties[0].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[0].Member[5]->Poke].Name,"NoPoke") == 0 || Parties[0].Member[5]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
     displayparty(0);
     Reset = 1;
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
      if (Reset != 1) {
     if (HideMove) {
    printf("\033[2A");
    printf("\033[2K");
         }
     printf("\nEnter enemy's move: ");
     fgets(x,31,stdin);
     x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,MoveList[Parties[1].Member[0]->Move1.Move].Name) == 0) {
      Parties[1].Turn = &Parties[1].Member[0]->Move1;
      if(Parties[1].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[1].Member[0]->Move1.PP <= 0) {
    if (Parties[1].Member[0]->Move2.PP <= 0 && Parties[1].Member[0]->Move3.PP <= 0 && Parties[1].Member[0]->Move4.PP <= 0) {
      Parties[1].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,MoveList[Parties[1].Member[0]->Move2.Move].Name) == 0) {
       Parties[1].Turn = &Parties[1].Member[0]->Move2;
      if(Parties[1].Member[0]->Move2.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[1].Member[0]->Move2.PP <= 0) {
    if (Parties[1].Member[0]->Move1.PP <= 0 && Parties[1].Member[0]->Move3.PP <= 0 && Parties[1].Member[0]->Move4.PP <= 0) {
      Parties[1].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,MoveList[Parties[1].Member[0]->Move3.Move].Name) == 0) {
       Parties[1].Turn = &Parties[1].Member[0]->Move3;
      if(Parties[1].Member[0]->Move3.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[1].Member[0]->Move3.PP <= 0) {
    if (Parties[1].Member[0]->Move1.PP <= 0 && Parties[1].Member[0]->Move2.PP <= 0 && Parties[1].Member[0]->Move4.PP <= 0) {
      Parties[1].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,MoveList[Parties[1].Member[0]->Move4.Move].Name) == 0) {
       Parties[1].Turn = &Parties[1].Member[0]->Move4;
      if(Parties[1].Member[0]->Move4.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[1].Member[0]->Move4.PP <= 0) {
    if (Parties[1].Member[0]->Move1.PP <= 0 && Parties[1].Member[0]->Move2.PP <= 0 && Parties[1].Member[0]->Move3.PP <= 0) {
      Parties[1].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }  else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[1].Member[1]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[1].Member[1]->Poke].Name) == 0 || strcmp(x,"P2") == 0) {
       Parties[1].SwitchSave = 1;
       Parties[1].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[1].Member[1]->Poke].Name,"NoPoke") == 0 || Parties[1].Member[1]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[1].Member[2]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[1].Member[2]->Poke].Name) == 0 || strcmp(x,"P3") == 0) {
       Parties[1].SwitchSave = 2;
       Parties[1].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[1].Member[2]->Poke].Name,"NoPoke") == 0 || Parties[1].Member[2]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[1].Member[4]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[1].Member[4]->Poke].Name) == 0 || strcmp(x,"P4") == 0) {
       Parties[1].SwitchSave = 3;
       Parties[1].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[1].Member[4]->Poke].Name,"NoPoke") == 0 || Parties[1].Member[3]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[1].Member[4]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[1].Member[4]->Poke].Name) == 0 || strcmp(x,"P5") == 0) {
       Parties[1].SwitchSave = 4;
       Parties[1].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[1].Member[4]->Poke].Name,"NoPoke") == 0 || Parties[1].Member[4]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[1].Member[5]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[1].Member[5]->Poke].Name) == 0 || strcmp(x,"P6") == 0) {
       Parties[1].SwitchSave = 5;
       Parties[1].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[1].Member[5]->Poke].Name,"NoPoke") == 0 || Parties[1].Member[5]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
      displayparty(1);
      Reset = 1;
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
        }
      if(Reset == 0) {
      Retrieve = 0;
      Execute = 1;
     if (HideMove) {
    printf("\033[1A");
    printf("\033[2K");
         } else {
      printf("\n");
       }
        } else {
        printf("\n\n");
        Reset = 0;
        }
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
      
      // sets stabs
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
      MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc](0,0);
      MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc](0,1);
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