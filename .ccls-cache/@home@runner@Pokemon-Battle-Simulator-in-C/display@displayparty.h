void displaymember(unsigned int PartyMember,bool eop) {
    printf("\e[1;37m\nP%d:\e[0m\n",PartyMember+1);
    printf("Pokemon: %s\n",POKEMONDEX[Parties[eop].Member[PartyMember]->Poke].Name);
    printf("Health: %d/%d\n",Parties[eop].Member[PartyMember]->CurrentHp,Parties[eop].Member[PartyMember]->Hp);
    printf("Attack: %d\n",Parties[eop].Member[PartyMember]->Atk);
    printf("Defense: %d\n",Parties[eop].Member[PartyMember]->Def);
    printf("Special Attack: %d\n",Parties[eop].Member[PartyMember]->SpA);
    printf("Special Defense: %d\n",Parties[eop].Member[PartyMember]->SpD);
    printf("Speed: %d\n",Parties[eop].Member[PartyMember]->Spe);
    printf("Nature: %s\n",NATURE_LIST[Parties[eop].Member[PartyMember]->Nature].NatureName);
    printf("Move 1: %s %d/%.0f\n",MoveList[Parties[eop].Member[PartyMember]->Moves[0].Move].Name,Parties[eop].Member[PartyMember]->Moves[0].PP,MoveList[Parties[eop].Member[PartyMember]->Moves[0].Move].PP * 5 * ppboostmult(Parties[eop].Member[PartyMember]->Moves[0].PPmult));
    printf("Move 2: %s %d/%.0f\n",MoveList[Parties[eop].Member[PartyMember]->Moves[1].Move].Name,Parties[eop].Member[PartyMember]->Moves[1].PP,MoveList[Parties[eop].Member[PartyMember]->Moves[1].Move].PP * 5 * ppboostmult(Parties[eop].Member[PartyMember]->Moves[1].PPmult));
    printf("Move 3: %s %d/%.0f\n",MoveList[Parties[eop].Member[PartyMember]->Moves[2].Move].Name,Parties[eop].Member[PartyMember]->Moves[2].PP,MoveList[Parties[eop].Member[PartyMember]->Moves[2].Move].PP * 5 * ppboostmult(Parties[eop].Member[PartyMember]->Moves[2].PPmult));
    printf("Move 4: %s %d/%.0f\n",MoveList[Parties[eop].Member[PartyMember]->Moves[3].Move].Name,Parties[eop].Member[PartyMember]->Moves[3].PP,MoveList[Parties[eop].Member[PartyMember]->Moves[3].Move].PP * 5 * ppboostmult(Parties[eop].Member[PartyMember]->Moves[3].PPmult));
    printf("Item: %s (%s)\n",ItemList[Parties[eop].Member[PartyMember]->Item].Name,Itemtext[Parties[eop].Member[PartyMember]->ItemUsable]);
    printf("Ability: %s\n",AbilityList[Parties[eop].Member[PartyMember]->Ability].Name);
    printf("Status: %s\n",Statusnames[Parties[eop].Member[PartyMember]->Non_Volatile_Status]);
}

void displayparty(bool eop) {
    printf("\n\e[1;37mP1:\e[0m %s %d/%d\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name,Parties[eop].Member[0]->CurrentHp,Parties[eop].Member[0]->Hp);
      printf("\e[1;37mP2:\e[0m %s %d/%d\n",POKEMONDEX[Parties[eop].Member[1]->Poke].Name,Parties[eop].Member[1]->CurrentHp,Parties[eop].Member[1]->Hp);
      printf("\e[1;37mP3:\e[0m %s %d/%d\n",POKEMONDEX[Parties[eop].Member[2]->Poke].Name,Parties[eop].Member[2]->CurrentHp,Parties[eop].Member[2]->Hp);
      printf("\e[1;37mP4:\e[0m %s %d/%d\n",POKEMONDEX[Parties[eop].Member[3]->Poke].Name,Parties[eop].Member[3]->CurrentHp,Parties[eop].Member[3]->Hp);
      printf("\e[1;37mP5:\e[0m %s %d/%d\n",POKEMONDEX[Parties[eop].Member[4]->Poke].Name,Parties[eop].Member[4]->CurrentHp,Parties[eop].Member[4]->Hp);
      printf("\e[1;37mP6:\e[0m %s %d/%d\n",POKEMONDEX[Parties[eop].Member[5]->Poke].Name,Parties[eop].Member[5]->CurrentHp,Parties[eop].Member[5]->Hp);
      printf("\nPartyMember: ");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      displaymember(0,eop);
      } else if (strcmp(x,"P2") == 0) {
      displaymember(1,eop);
      } else if (strcmp(x,"P3") == 0) {
      displaymember(2,eop);
      } else if (strcmp(x,"P4") == 0) {
      displaymember(3,eop);
      } else if (strcmp(x,"P5") == 0) {
      displaymember(4,eop);
      } else if (strcmp(x,"P6") == 0) {
      displaymember(5,eop);
    }
}