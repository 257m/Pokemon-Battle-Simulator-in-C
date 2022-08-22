void Leftoversf(char et,bool eop) {
  if (!eop) {
    if (et > 0) {
      if (et == 5) {
        if (PlayerParty.P1->CurrentHp < PlayerParty.P1->Hp) {
        PlayerParty.P1->CurrentHp += PlayerParty.P1->Hp/16;
        printf("%s restored a little HP using its Leftovers\n",PlayerParty.P1->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
          }
      }
    } else {
      
    }
  } else {
    if (et > 0) {
      if (et == 5) {
      if (EnemyParty.P1->CurrentHp < EnemyParty.P1->Hp) {
      EnemyParty.P1->CurrentHp += EnemyParty.P1->Hp/16;
      printf("The opposing %s restored a little HP using its Leftovers\n",EnemyParty.P1->Poke->Name);
      printf("The opposing %s is at %d/%d hp\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      }
        }
    } else {
      
    }
  }
}