void displaymember(unsigned int PartyMember,bool eop) {
    printf("\e[1;37mP%d:\e[0m\n",PartyMember+1);
    printf("Pokemon: %s\n",POKEMONDEX[Parties[eop].Member[PartyMember]->Poke].Name);
    printf("Level: %d\n",Parties[eop].Member[PartyMember]->Level);
    printf("Health: %d/%d\n",Parties[eop].Member[PartyMember]->CurrentHp,Parties[eop].Member[PartyMember]->Hp);
    printf("Attack: %d\n",Parties[eop].Member[PartyMember]->Atk);
    printf("Defense: %d\n",Parties[eop].Member[PartyMember]->Def);
    printf("Special Attack: %d\n",Parties[eop].Member[PartyMember]->SpA);
    printf("Special Defense: %d\n",Parties[eop].Member[PartyMember]->SpD);
    printf("Speed: %d\n",Parties[eop].Member[PartyMember]->Spe);
    printf("Nature: %s\n",NATURE_LIST[Parties[eop].Member[PartyMember]->Nature].NatureName);
    printf("Move 1: %s %d/%.0f\n",str_decompressed_and_format(MoveList[Parties[eop].Member[PartyMember]->Moves[0].Move].Name),Parties[eop].Member[PartyMember]->Moves[0].PP,(MoveList[Parties[eop].Member[PartyMember]->Moves[0].Move].PP+1) * 5 * ppboostmult(Parties[eop].Member[PartyMember]->Moves[0].PPmult));
    printf("Move 2: %s %d/%.0f\n",str_decompressed_and_format(MoveList[Parties[eop].Member[PartyMember]->Moves[1].Move].Name),Parties[eop].Member[PartyMember]->Moves[1].PP,(MoveList[Parties[eop].Member[PartyMember]->Moves[1].Move].PP+1) * 5 * ppboostmult(Parties[eop].Member[PartyMember]->Moves[1].PPmult));
    printf("Move 3: %s %d/%.0f\n",str_decompressed_and_format(MoveList[Parties[eop].Member[PartyMember]->Moves[2].Move].Name),Parties[eop].Member[PartyMember]->Moves[2].PP,(MoveList[Parties[eop].Member[PartyMember]->Moves[2].Move].PP+1) * 5 * ppboostmult(Parties[eop].Member[PartyMember]->Moves[2].PPmult));
    printf("Move 4: %s %d/%.0f\n",str_decompressed_and_format(MoveList[Parties[eop].Member[PartyMember]->Moves[3].Move].Name),Parties[eop].Member[PartyMember]->Moves[3].PP,(MoveList[Parties[eop].Member[PartyMember]->Moves[3].Move].PP+1) * 5 * ppboostmult(Parties[eop].Member[PartyMember]->Moves[3].PPmult));
    printf("Item: %s (%s)\n",ItemList[Parties[eop].Member[PartyMember]->Item].Name,Itemtext[Parties[eop].Member[PartyMember]->ItemUsable]);
    printf("Ability: %s\n",AbilityList[Parties[eop].Member[PartyMember]->Ability].Name);
    printf("Status: %s\n",Statusnames[Parties[eop].Member[PartyMember]->Non_Volatile_Status]);
    printf("IVs: %d %d %d %d %d %d\n",Parties[eop].Member[PartyMember]->IVHp,Parties[eop].Member[PartyMember]->IVAtk,Parties[eop].Member[PartyMember]->IVDef,Parties[eop].Member[PartyMember]->IVSpA,Parties[eop].Member[PartyMember]->IVSpD,Parties[eop].Member[PartyMember]->IVSpe);
   printf("EVs: %d %d %d %d %d %d\n",Parties[eop].Member[PartyMember]->EVS[Hp],Parties[eop].Member[PartyMember]->EVS[Atk],Parties[eop].Member[PartyMember]->EVS[Def],Parties[eop].Member[PartyMember]->EVS[SpA],Parties[eop].Member[PartyMember]->EVS[SpD],Parties[eop].Member[PartyMember]->EVS[Spe]);
  printf("\e[?25l");
  system ("/bin/stty raw");
  system ("/bin/stty -echo");
  getchar();
  system ("/bin/stty echo");
  system ("/bin/stty cooked");
  printf("\e[?25h");
  printf("\033[2K\r");
  for (int i = 0;i < 20;i++) {
      printf("\033[1A");
      printf("\033[2K");
        }
}

void displayparty(bool eop) {
  for (int i = 0;i < 6;i++) {   
printf("\e[1;37mP%d:\e[0m %s\r\t\t\t\t\033[1CLvl:%d\t\033[1CHp:%d/%d\n",i+1,POKEMONDEX[Parties[eop].Member[i]->Poke].Name,Parties[eop].Member[i]->Level,Parties[eop].Member[i]->CurrentHp,Parties[eop].Member[i]->Hp);
    }
      printf("\nPartyMember: ");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      for (int i = 0;i < 8;i++) {
      printf("\033[1A");
      printf("\033[2K");
        }
      if (x[1] > 48 && x[1] < 55) {
        displaymember(x[1]-49,eop);
        printf("\n");
        }
}