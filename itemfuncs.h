void NoItemf(char et,bool eop) {
}


void Leftoversf(char et,bool eop) {
  if (!eop) {
    if (PlayerParty.P1->ItemUsable) {  
    if (et == 5) {
        if (PlayerParty.P1->CurrentHp < PlayerParty.P1->Hp) {
        PlayerParty.P1->CurrentHp += PlayerParty.P1->Hp/16;
        printf("%s restored a little HP using its Leftovers\n",PlayerParty.P1->Poke->Name);
        printf("%s is at %d/%d hp\n\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
          }
      }
      }
  } else {
      if (EnemyParty.P1->ItemUsable) {
      if (et == 5) {
      if (EnemyParty.P1->CurrentHp < EnemyParty.P1->Hp) {
      EnemyParty.P1->CurrentHp += EnemyParty.P1->Hp/16;
      printf("The opposing %s restored a little HP using its Leftovers\n",EnemyParty.P1->Poke->Name);
      printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      }
        }
        }
  }
}

void Focus_Sashf(char et,bool eop) {
  if (!eop) {
    if (PlayerParty.P1->ItemUsable) {
    if (et == -1) {
    if (PlayerParty.P1->CurrentHp == PlayerParty.P1->Hp && EnemyDamage >= PlayerParty.P1->Hp) {
      EnemyDamage = PlayerParty.P1->Hp-1;
      printf("%s hung on with its Focus Sash!\n",PlayerParty.P1->Poke->Name);
      PlayerParty.P1->ItemUsable = 0;
      }
    }
      }
  } else {
    if (EnemyParty.P1->ItemUsable) {
    if (et == -1) {
    if (EnemyParty.P1->CurrentHp == EnemyParty.P1->Hp && Damage >= EnemyParty.P1->Hp) {
        Damage = EnemyParty.P1->Hp-1;
        printf("The opposing %s hung on with its Focus Sash!\n",EnemyParty.P1->Poke->Name);
        EnemyParty.P1->ItemUsable = 0;
      }
      }
    }
  }
}