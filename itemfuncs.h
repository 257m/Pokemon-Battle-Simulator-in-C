void NoItemf(char et,bool eop) {
}

void Leftoversf(char et,bool eop) {
  if (!eop) {
    if (PlayerParty.Member[0]->ItemUsable) {  
    if (et == 5) {
        if (PlayerParty.Member[0]->CurrentHp < PlayerParty.Member[0]->Hp) {
        PlayerParty.Member[0]->CurrentHp += PlayerParty.Member[0]->Hp/16;
        printf("%s restored a little HP using its Leftovers\n",PlayerParty.Member[0]->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.Member[0]->Poke->Name,PlayerParty.Member[0]->CurrentHp,PlayerParty.Member[0]->Hp);
          }
      }
      }
  } else {
      if (EnemyParty.Member[0]->ItemUsable) {
      if (et == 5) {
      if (EnemyParty.Member[0]->CurrentHp < EnemyParty.Member[0]->Hp) {
      EnemyParty.Member[0]->CurrentHp += EnemyParty.Member[0]->Hp/16;
      printf("The opposing %s restored a little HP using its Leftovers\n",EnemyParty.Member[0]->Poke->Name);
      printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.Member[0]->Poke->Name,EnemyParty.Member[0]->CurrentHp,EnemyParty.Member[0]->Hp);
      }
        }
        }
  }
}

void Focus_Sashf(char et,bool eop) {
  if (!eop) {
    if (PlayerParty.Member[0]->ItemUsable) {
    if (et == -1) {
    if (PlayerParty.Member[0]->CurrentHp == PlayerParty.Member[0]->Hp && EnemyDamage >= PlayerParty.Member[0]->Hp) {
      EnemyDamage = PlayerParty.Member[0]->Hp-1;
      printf("%s hung on with its Focus Sash!\n",PlayerParty.Member[0]->Poke->Name);
      PlayerParty.Member[0]->ItemUsable = 0;
      }
    }
      }
  } else {
    if (EnemyParty.Member[0]->ItemUsable) {
    if (et == -1) {
    if (EnemyParty.Member[0]->CurrentHp == EnemyParty.Member[0]->Hp && Damage >= EnemyParty.Member[0]->Hp) {
        Damage = EnemyParty.Member[0]->Hp-1;
        printf("The opposing %s hung on with its Focus Sash!\n",EnemyParty.Member[0]->Poke->Name);
        EnemyParty.Member[0]->ItemUsable = 0;
      }
      }
    }
  }
}