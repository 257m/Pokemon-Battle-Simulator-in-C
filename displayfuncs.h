void display_move(bool eop) {
  if (!eop) {
        if (PlayerCanMove) {
          printf("%s used %s!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->Name);
          if (!PlayerHit) printf("But it missed!\n");
          } else {
          printf("%s couldn't move\n",PlayerParty.P1->Poke->Name);
          if (PlayerPara) printf("It was paralyzed!\n");
          else if (PlayerSleep) printf("It is asleep\n");
          else if (PlayerFrozen) printf("It is frozen!\n");
          }
  } 
  else {
         if (EnemyCanMove) {
           printf("The opposing %s used %s!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->Name);
           if (!EnemyHit) printf("But it missed!\n");
           }
        else {
          printf("The opposing %s couldn't move\n",EnemyParty.P1->Poke->Name);
          if (EnemyPara) printf("It was paralyzed!\n");
          else if (EnemySleep) printf("It is asleep\n");
          else if (EnemyFrozen) printf("It is frozen!\n");
          }      
  }
}

void move_result(bool eop) {
  if (!eop) {
        if (PlayerHit && PlayerCanMove) {
        if (YourTurn->Move->Category != 0) {
        printf("It did %d damage!\n",Damage);
        if (TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
          }
        if (PlayerCrit) printf("It was a critical hit!\n");
        printf("The opposing %s is at %d/%d hp\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
          }
          } 
        if (EnemyParty.P1->CurrentHp <= 0) {
          printf("The opposing %s fainted!\n",EnemyParty.P1->Poke->Name);
          SwitchIn(0);
          EnemyDead = 1;
        }
  } 
  else {
          if (EnemyHit && EnemyCanMove) {        
        if (EnemyTurn->Move->Category != 0) {
        printf("It did %d damage!\n",EnemyDamage);
        if (TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
        }
        if (EnemyCrit) printf("It was a critical hit!\n");
        printf("Your %s is at %d/%d hp\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
          } 
          } 
        if (PlayerParty.P1->CurrentHp <= 0) {
          printf("Your %s fainted!\n",PlayerParty.P1->Poke->Name);
          SwitchIn(1);
          PlayerDead = 1;
        }
  }
}