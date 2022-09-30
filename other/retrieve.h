void RetrieveUserMove(bool eop) {
  char tempchar [1] = "";
  unsigned char randswitch;
  printf("Enter %s move: ",EOPTEXT[4+eop]);
    if (!Parties[eop].AI_MODE) {
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
      } else {
      if (rand() % 10 || ((Parties[eop].Member[1]->CurrentHp > 0) +(Parties[eop].Member[2]->CurrentHp > 0) + (Parties[eop].Member[3]->CurrentHp > 0) + (Parties[eop].Member[4]->CurrentHp > 0) + (Parties[eop].Member[5]->CurrentHp > 0)) == 0) {
      tempchar[0] = (rand() % 4) + 49;
      strcpy(x,tempchar);
      //strcpy(x,MoveList[Parties[eop].Member[0]->Moves[rand() % 4].Move].Name);
        } else {
        randswitch = 1 + (rand() % ((Parties[eop].Member[1]->CurrentHp > 0) +(Parties[eop].Member[2]->CurrentHp > 0) + (Parties[eop].Member[3]->CurrentHp > 0) + (Parties[eop].Member[4]->CurrentHp > 0) + (Parties[eop].Member[5]->CurrentHp > 0)));
            while(1) {
            if (Parties[eop].Member[randswitch]->CurrentHp > 0) break;
            randswitch++;
            }
            tempchar[0] = randswitch + 49;
            strcpy(x,stratt_free("P",tempchar));
        }
      printf("%s\n",x);
      }
    if (HideMove) {
    printf("\033[1A");
    printf("\033[2K\r");
      }
    for (int i = 0;i < 4;i++) {
    tempchar[0] = 49+i;
    if ((x[0] == tempchar[0] && x[1] == 0) || strcmp(x,stratt_free("Move ",tempchar)) == 0 || (strcmp(x,str_decompress_and_format_free(MoveList[Parties[eop].Member[0]->Moves[i].Move].Name)) == 0)) {
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
        if (!HideMove) printf("\n");
        Reset = 1;
  } else if (Parties[eop].Member[0]->Moves[i].PP <= 0) {
    if (Parties[eop].Member[0]->Moves[0].PP && Parties[eop].Member[0]->Moves[1].PP <= 0 && Parties[eop].Member[0]->Moves[2].PP <= 0 && Parties[eop].Member[0]->Moves[3].PP <= 0) {
      Parties[eop].Turn = &Struggle_Slot;
    } else {
      printf("There is no more PP left in that move.");
      printf("\e[?25l");
      system ("/bin/stty raw");
      system ("/bin/stty -echo");
      getchar();
      system ("/bin/stty echo");
      system ("/bin/stty cooked");
      printf("\e[?25h");
      printf("\033[2K\r");
      if (!HideMove) printf("\n");
      Reset = 1;
    }
  }
    return;
    }
      }
    for (int i = 0;i < 5;i++) {
    tempchar[0] = 50+i;
    if (strcmp(x,stratt_free("Switch to P",tempchar)) == 0 || strcmp(x,stratt_free("Switch to ",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[i+1]->Poke].Name))) == 0 || strcmp(x,str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[i+1]->Poke].Name)) == 0 || strcmp(x,stratt_free("P",tempchar)) == 0) {
       Parties[eop].SwitchSave = 1;
       Parties[eop].Switching = 1;
      if(Parties[eop].Member[i+1]->Poke == NOPOKE || Parties[eop].Member[i+1]->CurrentHp <= 0) {
        printf("There is no pokemon in that party slot.");
        printf("\e[?25l");
        system ("/bin/stty raw");
        system ("/bin/stty -echo");
        getchar();
        system ("/bin/stty echo");
        system ("/bin/stty cooked");
        printf("\e[?25h");
        printf("\033[2K\r");
        if (!HideMove) printf("\n");
        Reset = 1;
      }
      return;
    }
      }
    
    if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
      if (!HideMove) printf("\n");
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
      if (!HideMove) printf("\n");
      Reset = 1;
    }
}