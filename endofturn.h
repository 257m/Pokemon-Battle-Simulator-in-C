void endturn(bool eop) {
  if (!eop) {
    if (Parties[0].Member[0]->Non_Volatile_Status == 1) {
        Parties[0].Member[0]->CurrentHp -= tt(Parties[0].Member[0]->Hp/8 > 1,Parties[0].Member[0]->Hp/8,1);
        printf("%s took some damage from its burn!\n",Parties[0].Member[0]->Poke->Name);
        printf("%s is at %d/%d hp\n\n",Parties[0].Member[0]->Poke->Name,Parties[0].Member[0]->CurrentHp,Parties[0].Member[0]->Hp);
      } else if (Parties[0].Member[0]->Non_Volatile_Status == 2) {
        Parties[0].Member[0]->CurrentHp -= tt(Parties[0].Member[0]->Hp/8 > 1,Parties[0].Member[0]->Hp/8,1);
        printf("%s is hurt poison!\n",Parties[0].Member[0]->Poke->Name);
        printf("%s is at %d/%d hp\n\n",Parties[0].Member[0]->Poke->Name,Parties[0].Member[0]->CurrentHp,Parties[0].Member[0]->Hp);
      } else if (Parties[0].Member[0]->Non_Volatile_Status == 5) {
        if (Parties[0].Member[0]->Counter < 16) Parties[0].Member[0]->Counter++;
        Parties[0].Member[0]->CurrentHp -= tt(Parties[0].Member[0]->Hp*((double)Parties[0].Member[0]->Counter/16) > 1,Parties[0].Member[0]->Hp*((double)Parties[0].Member[0]->Counter/16),1);
        printf("%s is hurt by poison! (it's badly poisoned)\n",Parties[1].Member[0]->Poke->Name);
        printf("%s is at %d/%d hp\n\n",Parties[0].Member[0]->Poke->Name,Parties[0].Member[0]->CurrentHp,Parties[0].Member[0]->Hp);
      }

      if (Parties[0].Member[0]->CurrentHp <= 0) {
        printf("\033[1F%s fainted!\n",Parties[0].Member[0]->Poke->Name);
        SwitchIn(1);
        printf("\n");
      } else {
      ItemList[Parties[0].Member[0]->Item].itemfunc(5,0);
      }
  } else {
    if (Parties[1].Member[0]->Non_Volatile_Status == 1) {
        Parties[1].Member[0]->CurrentHp -= tt(Parties[1].Member[0]->Hp/8 > 1,floor(Parties[1].Member[0]->Hp/8),1);
        printf("The opposing %s took some damage from its burn!\n\n",Parties[1].Member[0]->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",Parties[1].Member[0]->Poke->Name,Parties[1].Member[0]->CurrentHp,Parties[1].Member[0]->Hp);
      } else if (Parties[1].Member[0]->Non_Volatile_Status == 2) {
        Parties[1].Member[0]->CurrentHp -= tt(Parties[1].Member[0]->Hp/8 > 1,floor(Parties[1].Member[0]->Hp/8),1);
        printf("The opposing %s is hurt by poison!\n\n",Parties[1].Member[0]->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",Parties[1].Member[0]->Poke->Name,Parties[1].Member[0]->CurrentHp,Parties[1].Member[0]->Hp);
      } else if (Parties[1].Member[0]->Non_Volatile_Status == 5) {
        if (Parties[1].Member[0]->Counter < 16) Parties[1].Member[0]->Counter++;
        Parties[1].Member[0]->CurrentHp -= tt(Parties[1].Member[0]->Hp*((double)Parties[1].Member[0]->Counter/16) > 1,Parties[1].Member[0]->Hp*((double)Parties[1].Member[0]->Counter/16),1);
        printf("The opposing %s is hurt by poison! (it's badly poisoned)\n\n",Parties[1].Member[0]->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",Parties[1].Member[0]->Poke->Name,Parties[1].Member[0]->CurrentHp,Parties[1].Member[0]->Hp);
      }

      if (Parties[1].Member[0]->CurrentHp <= 0) {
        printf("The opposing %s fainted!\n",Parties[1].Member[0]->Poke->Name);
        SwitchIn(0);
        //printf("The Enemy switched out to %s\n",Parties[0].Member[0]->Poke->Name);
      } else {
      ItemList[Parties[1].Member[0]->Item].itemfunc(5,1);
      }
  }
}