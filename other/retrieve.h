void RetrieveUserMove(bool eop) {
  printf("Enter %s move: ",EOPTEXT[4+eop]);
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (HideMove) {
    printf("\033[1A");
    printf("\033[2K");
      }
    if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,MoveList[Parties[eop].Member[0]->Moves[0].Move].Name) == 0) {
      Parties[eop].Turn = &Parties[eop].Member[0]->Moves[0];
      if(Parties[eop].Member[0]->Moves[0].Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[eop].Member[0]->Moves[0].PP <= 0) {
    if (Parties[eop].Member[0]->Moves[1].PP <= 0 && Parties[eop].Member[0]->Moves[2].PP <= 0 && Parties[eop].Member[0]->Moves[3].PP <= 0) {
      Parties[eop].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,MoveList[Parties[eop].Member[0]->Moves[1].Move].Name) == 0) {
       Parties[eop].Turn = &Parties[eop].Member[0]->Moves[1];
      if(Parties[eop].Member[0]->Moves[0].Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[eop].Member[0]->Moves[1].PP <= 0) {
    if (Parties[eop].Member[0]->Moves[0].PP <= 0 && Parties[eop].Member[0]->Moves[2].PP <= 0 && Parties[eop].Member[0]->Moves[3].PP <= 0) {
      Parties[eop].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,MoveList[Parties[eop].Member[0]->Moves[2].Move].Name) == 0) {
       Parties[eop].Turn = &Parties[eop].Member[0]->Moves[2];
       if(Parties[eop].Member[0]->Moves[0].Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[eop].Member[0]->Moves[2].PP <= 0) {
    if (Parties[eop].Member[0]->Moves[0].PP <= 0 && Parties[eop].Member[0]->Moves[1].PP <= 0 && Parties[eop].Member[0]->Moves[3].PP <= 0) {
      Parties[eop].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,MoveList[Parties[eop].Member[0]->Moves[3].Move].Name) == 0) {
       Parties[eop].Turn = &Parties[eop].Member[0]->Moves[3];
       if(Parties[eop].Member[0]->Moves[0].Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[eop].Member[0]->Moves[3].PP <= 0) {
    if (Parties[eop].Member[0]->Moves[0].PP <= 0 && Parties[eop].Member[0]->Moves[1].PP <= 0 && Parties[eop].Member[0]->Moves[2].PP <= 0) {
      Parties[eop].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    } else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[1]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[1]->Poke].Name) == 0 || strcmp(x,"P2") == 0) {
       Parties[eop].SwitchSave = 1;
       Parties[eop].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[eop].Member[1]->Poke].Name,"NoPoke") == 0 || Parties[eop].Member[1]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[2]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[2]->Poke].Name) == 0 || strcmp(x,"P3") == 0) {
       Parties[eop].SwitchSave = 2;
       Parties[eop].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[eop].Member[2]->Poke].Name,"NoPoke") == 0 || Parties[eop].Member[2]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[3]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[3]->Poke].Name) == 0  || strcmp(x,"P4") == 0) {
       Parties[eop].SwitchSave = 3;
       Parties[eop].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[eop].Member[3]->Poke].Name,"NoPoke") == 0 || Parties[eop].Member[3]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[4]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[4]->Poke].Name) == 0 || strcmp(x,"P5") == 0) {
       Parties[eop].SwitchSave = 4;
       Parties[eop].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[eop].Member[4]->Poke].Name,"NoPoke") == 0 || Parties[eop].Member[4]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[5]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[5]->Poke].Name) == 0 || strcmp(x,"P6") == 0) {
       Parties[eop].SwitchSave = 5;
       Parties[eop].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[eop].Member[5]->Poke].Name,"NoPoke") == 0 || Parties[eop].Member[5]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
     displayparty(eop);
     Reset = 1;
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
}