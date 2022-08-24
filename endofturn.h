void endturn(bool eop) {
  if (!eop) {
    if (PlayerParty.Member[0]->Non_Volatile_Status == 1) {
        PlayerParty.Member[0]->CurrentHp -= tt(PlayerParty.Member[0]->Hp/8 > 1,PlayerParty.Member[0]->Hp/8,1);
        printf("%s took some damage from its burn!\n",PlayerParty.Member[0]->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.Member[0]->Poke->Name,PlayerParty.Member[0]->CurrentHp,PlayerParty.Member[0]->Hp);
      } else if (PlayerParty.Member[0]->Non_Volatile_Status == 2) {
        PlayerParty.Member[0]->CurrentHp -= tt(PlayerParty.Member[0]->Hp/8 > 1,PlayerParty.Member[0]->Hp/8,1);
        printf("%s is hurt poison!\n",PlayerParty.Member[0]->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.Member[0]->Poke->Name,PlayerParty.Member[0]->CurrentHp,PlayerParty.Member[0]->Hp);
      } else if (PlayerParty.Member[0]->Non_Volatile_Status == 5) {
        if (PlayerParty.Member[0]->Counter < 16) PlayerParty.Member[0]->Counter++;
        PlayerParty.Member[0]->CurrentHp -= tt(PlayerParty.Member[0]->Hp*((double)PlayerParty.Member[0]->Counter/16) > 1,PlayerParty.Member[0]->Hp*((double)PlayerParty.Member[0]->Counter/16),1);
        printf("%s is hurt by poison! (it's badly poisoned)\n",EnemyParty.Member[0]->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.Member[0]->Poke->Name,PlayerParty.Member[0]->CurrentHp,PlayerParty.Member[0]->Hp);
      }

      if (PlayerParty.Member[0]->CurrentHp <= 0) {
        printf("\033[1F%s fainted!\n",PlayerParty.Member[0]->Poke->Name);
        SwitchIn(1);
        printf("\n");
      } else {
      ItemList[PlayerParty.Member[0]->Item].itemfunc(5,0);
      }
  } else {
    if (EnemyParty.Member[0]->Non_Volatile_Status == 1) {
        EnemyParty.Member[0]->CurrentHp -= tt(EnemyParty.Member[0]->Hp/8 > 1,floor(EnemyParty.Member[0]->Hp/8),1);
        printf("The opposing %s took some damage from its burn!\n\n",EnemyParty.Member[0]->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.Member[0]->Poke->Name,EnemyParty.Member[0]->CurrentHp,EnemyParty.Member[0]->Hp);
      } else if (EnemyParty.Member[0]->Non_Volatile_Status == 2) {
        EnemyParty.Member[0]->CurrentHp -= tt(EnemyParty.Member[0]->Hp/8 > 1,floor(EnemyParty.Member[0]->Hp/8),1);
        printf("The opposing %s is hurt by poison!\n\n",EnemyParty.Member[0]->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.Member[0]->Poke->Name,EnemyParty.Member[0]->CurrentHp,EnemyParty.Member[0]->Hp);
      } else if (EnemyParty.Member[0]->Non_Volatile_Status == 5) {
        if (EnemyParty.Member[0]->Counter < 16) EnemyParty.Member[0]->Counter++;
        EnemyParty.Member[0]->CurrentHp -= tt(EnemyParty.Member[0]->Hp*((double)EnemyParty.Member[0]->Counter/16) > 1,EnemyParty.Member[0]->Hp*((double)EnemyParty.Member[0]->Counter/16),1);
        printf("The opposing %s is hurt by poison! (it's badly poisoned)\n\n",EnemyParty.Member[0]->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.Member[0]->Poke->Name,EnemyParty.Member[0]->CurrentHp,EnemyParty.Member[0]->Hp);
      }

      if (EnemyParty.Member[0]->CurrentHp <= 0) {
        printf("The opposing %s fainted!\n",EnemyParty.Member[0]->Poke->Name);
        SwitchIn(0);
        //printf("The Enemy switched out to %s\n",PlayerParty.Member[0]->Poke->Name);
      } else {
      ItemList[EnemyParty.Member[0]->Item].itemfunc(5,1);
      }
  }
}