void endturn(bool eop) {
  if (!eop) {
    if (PlayerParty.P1->Non_Volatile_Status == 1) {
        PlayerParty.P1->CurrentHp -= tt(PlayerParty.P1->Hp/8 > 1,PlayerParty.P1->Hp/8,1);
        printf("%s took some damage from its burn!\n",PlayerParty.P1->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      } else if (PlayerParty.P1->Non_Volatile_Status == 2) {
        PlayerParty.P1->CurrentHp -= tt(PlayerParty.P1->Hp/8 > 1,PlayerParty.P1->Hp/8,1);
        printf("%s is hurt poison!\n",PlayerParty.P1->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      } else if (PlayerParty.P1->Non_Volatile_Status == 5) {
        if (PlayerParty.P1->Counter < 16) PlayerParty.P1->Counter++;
        PlayerParty.P1->CurrentHp -= tt(PlayerParty.P1->Hp*((double)PlayerParty.P1->Counter/16) > 1,PlayerParty.P1->Hp*((double)PlayerParty.P1->Counter/16),1);
        printf("%s is hurt by poison! (it's badly poisoned)\n",EnemyParty.P1->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      }

      if (PlayerParty.P1->CurrentHp <= 0) {
        printf("\033[1F%s fainted!\n",PlayerParty.P1->Poke->Name);
        SwitchIn(1);
        printf("\n");
      } else {
      ItemList[PlayerParty.P1->Item].itemfunc(5,0);
      }
  } else {
    if (EnemyParty.P1->Non_Volatile_Status == 1) {
        EnemyParty.P1->CurrentHp -= tt(EnemyParty.P1->Hp/8 > 1,floor(EnemyParty.P1->Hp/8),1);
        printf("The opposing %s took some damage from its burn!\n\n",EnemyParty.P1->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      } else if (EnemyParty.P1->Non_Volatile_Status == 2) {
        EnemyParty.P1->CurrentHp -= tt(EnemyParty.P1->Hp/8 > 1,floor(EnemyParty.P1->Hp/8),1);
        printf("The opposing %s is hurt by poison!\n\n",EnemyParty.P1->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      } else if (EnemyParty.P1->Non_Volatile_Status == 5) {
        if (EnemyParty.P1->Counter < 16) EnemyParty.P1->Counter++;
        EnemyParty.P1->CurrentHp -= tt(EnemyParty.P1->Hp*((double)EnemyParty.P1->Counter/16) > 1,EnemyParty.P1->Hp*((double)EnemyParty.P1->Counter/16),1);
        printf("The opposing %s is hurt by poison! (it's badly poisoned)\n\n",EnemyParty.P1->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      }

      if (EnemyParty.P1->CurrentHp <= 0) {
        printf("The opposing %s fainted!\n",EnemyParty.P1->Poke->Name);
        SwitchIn(0);
        //printf("The Enemy switched out to %s\n",PlayerParty.P1->Poke->Name);
      } else {
      ItemList[EnemyParty.P1->Item].itemfunc(5,1);
      }
  }
}