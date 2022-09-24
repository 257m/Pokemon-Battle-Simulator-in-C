void Switch(bool party,unsigned char member) {
  struct MyPokemon * PointerSave;
  PointerSave = Parties[party].Member[0];
  Parties[party].Member[0] = Parties[party].Member[member];
  Parties[party].Member[member] = PointerSave;
}

void SwitchIn(const bool eop) {
    bool TryAgain = 1;      
          if (CheckIfAllDead(eop)) {
          while(1) {
          printf("Switch-In: ");
          system("/bin/stty echo");
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
          system("/bin/stty -echo");
          printf("\033[1A");
          printf("\033[2K\r");
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[1]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[1]->Poke].Name) == 0 || strcmp(x,"P2") == 0) {
            if (Parties[eop].Member[1]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,1);
            printf("Go! %s!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
            system("/bin/stty echo");
            return;
              } else {
      printf("That pokemon is already fainted!");
      printf("\e[?25l");
      system ("/bin/stty raw");
      system ("/bin/stty -echo");
      getchar();
      system ("/bin/stty echo");
      system ("/bin/stty cooked");
      printf("\e[?25h");
      printf("\033[2K\r");
              }
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[2]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[2]->Poke].Name) == 0 || strcmp(x,"P3") == 0) {
            if (Parties[eop].Member[2]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,2);
            printf("Go! %s!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
            system("/bin/stty echo");
            return;
              } else {
      printf("That pokemon is already fainted!");
      printf("\e[?25l");
      system ("/bin/stty raw");
      system ("/bin/stty -echo");
      getchar();
      system ("/bin/stty echo");
      system ("/bin/stty cooked");
      printf("\e[?25h");
      printf("\033[2K\r");
              }
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[3]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[3]->Poke].Name) == 0 || strcmp(x,"P4") == 0) {
            if (Parties[eop].Member[3]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,3);
            printf("Go! %s!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
            system("/bin/stty echo");
            return;
              } else {
      printf("That pokemon is already fainted!");
      printf("\e[?25l");
      system ("/bin/stty raw");
      system ("/bin/stty -echo");
      getchar();
      system ("/bin/stty echo");
      system ("/bin/stty cooked");
      printf("\e[?25h");
      printf("\033[2K\r");
              }
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[4]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[4]->Poke].Name) == 0 || strcmp(x,"P5") == 0) {
            if (Parties[eop].Member[4]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,4);
            printf("Go! %s!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
            system("/bin/stty echo");
            return;
              } else {
      printf("That pokemon is already fainted!");
      printf("\e[?25l");
      system ("/bin/stty raw");
      system ("/bin/stty -echo");
      getchar();
      system ("/bin/stty echo");
      system ("/bin/stty cooked");
      printf("\e[?25h");
      printf("\033[2K\r");
              }
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",POKEMONDEX[Parties[eop].Member[5]->Poke].Name)) == 0 || strcmp(x,POKEMONDEX[Parties[eop].Member[5]->Poke].Name) == 0 || strcmp(x,"P6") == 0) {
            if (Parties[eop].Member[5]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,5);
            printf("Go! %s!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
            system("/bin/stty echo");
            return;
              } else {
      printf("That pokemon is already fainted!");
      printf("\e[?25l");
      system ("/bin/stty raw");
      system ("/bin/stty -echo");
      getchar();
      system ("/bin/stty echo");
      system ("/bin/stty cooked");
      printf("\e[?25h");
      printf("\033[2K\r");
              }
          }  else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
      displayparty(eop);
    } else {
            printf("That is not a valid switch in!");
            printf("\e[?25l");
            system ("/bin/stty raw");
            system ("/bin/stty -echo");
            getchar();
            system ("/bin/stty echo");
            system ("/bin/stty cooked");
            printf("\e[?25h");
            printf("\033[2K\r");
  }
            }
            }
}