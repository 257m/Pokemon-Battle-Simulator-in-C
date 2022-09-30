void Switch(bool party,unsigned char member) {
  struct MyPokemon * PointerSave;
  PointerSave = Parties[party].Member[0];
  Parties[party].Member[0] = Parties[party].Member[member];
  Parties[party].Member[member] = PointerSave;
}

void SwitchIn(const bool eop) {
    bool TryAgain = 1;
    unsigned char randswitch;
    char tempchar [1] = "";
          if (CheckIfAllDead(eop)) {
          while(1) {
          printf("Switch-In: ");
          system("/bin/stty echo");
          if (!Parties[eop].AI_MODE) {
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
            } else {
            randswitch = 1 + (rand() % ((Parties[eop].Member[1]->CurrentHp > 0) +(Parties[eop].Member[2]->CurrentHp > 0) + (Parties[eop].Member[3]->CurrentHp > 0) + (Parties[eop].Member[4]->CurrentHp > 0) + (Parties[eop].Member[5]->CurrentHp > 0)));
            while(1) {
            if (Parties[eop].Member[randswitch]->CurrentHp > 0) break;
            randswitch++;
            }
            tempchar[0] = randswitch + 49;
            strcpy(x,stratt("P",tempchar));
            printf("%s\n",x);
            }
          system("/bin/stty -echo");
          printf("\033[1A");
          printf("\033[2K\r");
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[1]->Poke].Name))) == 0 || strcmp(x,str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[1]->Poke].Name)) == 0 || strcmp(x,"P2") == 0) {
            if (Parties[eop].Member[1]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,1);
            printf("Go! %s!\n",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[0]->Poke].Name));
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
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[2]->Poke].Name))) == 0 || strcmp(x,str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[2]->Poke].Name)) == 0 || strcmp(x,"P3") == 0) {
            if (Parties[eop].Member[2]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,2);
            printf("Go! %s!\n",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[0]->Poke].Name));
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
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[3]->Poke].Name))) == 0 || strcmp(x,str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[3]->Poke].Name)) == 0 || strcmp(x,"P4") == 0) {
            if (Parties[eop].Member[3]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,3);
            printf("Go! %s!\n",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[0]->Poke].Name));
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
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[4]->Poke].Name))) == 0 || strcmp(x,str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[4]->Poke].Name)) == 0 || strcmp(x,"P5") == 0) {
            if (Parties[eop].Member[4]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,4);
            printf("Go! %s!\n",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[0]->Poke].Name));
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
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[5]->Poke].Name))) == 0 || strcmp(x,str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[5]->Poke].Name)) == 0 || strcmp(x,"P6") == 0) {
            if (Parties[eop].Member[5]->CurrentHp > 0) {
            ResetBoosts(Parties[eop].Member[0]);
            CLEAR_EFFECTS(eop);
            CLEAR_EFFECT_COUNTERS(eop);
            Switch(eop,5);
            printf("Go! %s!\n",str_decompress_and_format_free(POKEMONDEX[Parties[eop].Member[0]->Poke].Name));
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