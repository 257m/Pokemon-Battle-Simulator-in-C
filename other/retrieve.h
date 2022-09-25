void RetrieveUserMove(bool eop) {
  char tempchar [1] = "";
  printf("Enter %s move: ",EOPTEXT[4+eop]);
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (HideMove) {
    printf("\033[1A");
    printf("\033[2K\r");
      }
    for (int i = 0;i < 4;i++) {
    tempchar[0] = 49+i;
    if ((x[0] == tempchar[0] && x[1] == 0) || strcmp(x,stratt("Move ",tempchar)) == 0 || strcmp(x,MoveList[Parties[eop].Member[0]->Moves[i].Move].Name) == 0) {
      Parties[eop].Turn = &Parties[eop].Member[0]->Moves[i];
      if(Parties[eop].Member[0]->Moves[i].Move == Nothing) {
        printf("There is no move in that slot.");
        printf("\e[?25l");
        system ("/bin/stty raw");
        system ("/bin/stty -echo");
        getchar();
        system ("/bin/stty echo");
        system ("/bin/stty cooked");
        printf("\e[?25h");
        printf("\033[2K\r");
        Reset = 1;
  } else if (Parties[eop].Member[0]->Moves[i].PP <= 0) {
    if (Parties[eop].Member[0]->Moves[0].PP && Parties[eop].Member[0]->Moves[1].PP <= 0 && Parties[eop].Member[0]->Moves[2].PP <= 0 && Parties[eop].Member[0]->Moves[3].PP <= 0) {
      Parties[eop].Turn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move.");
      printf("\e[?25l");
      system ("/bin/stty raw");
      system ("/bin/stty -echo");
      getchar();
      system ("/bin/stty echo");
      system ("/bin/stty cooked");
      printf("\e[?25h");
      printf("\033[2K\r");
      Reset = 1;
    }
  }
    return;
    }
      }
    for (int i = 0;i < 5;i++) {
    tempchar[0] = 50+i;
    if (strcmp(x,stratt("Switch to P",tempchar)) == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[i+1]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[i+1]->Poke].Name) == 0 || strcmp(x,stratt("P",tempchar)) == 0) {
       Parties[eop].SwitchSave = 1;
       Parties[eop].Switching = 1;
      if(strcmp(POKEMONDEX[Parties[eop].Member[i+1]->Poke].Name,"NoPoke") == 0 || Parties[eop].Member[i+1]->CurrentHp <= 0) {
        printf("There is no pokemon in that party slot.");
        printf("\e[?25l");
        system ("/bin/stty raw");
        system ("/bin/stty -echo");
        getchar();
        system ("/bin/stty echo");
        system ("/bin/stty cooked");
        printf("\e[?25h");
        printf("\033[2K\r");
        Reset = 1;
      }
      return;
    }
      }
    
    if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
     displayparty(eop);
     Reset = 1;
    } else {
      printf("\e[?25l");
      system ("/bin/stty raw");
      system ("/bin/stty -echo");
      printf("Move Selection Failed. Please retry.");
      getchar();
      system ("/bin/stty echo");
      system ("/bin/stty cooked");
      printf("\e[?25h");
      printf("\033[2K\r");
      Reset = 1;
    }
}