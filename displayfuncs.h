void display (bool eop) {
  if (!eop) {
    if (PlayerSwitch == 0) {
        if (PlayerCanMove == 1) printf("%s used %s!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->Name);
        else {
          printf("%s couldn't move\n",PlayerParty.P1->Poke->Name);
          if (PlayerPara) printf("It was paralyzed!\n");
          else if (PlayerSleep) printf("It is asleep\n");
          else if (PlayerFrozen) printf("It is frozen!\n");
          }
        if (PlayerHit == 1 && PlayerCanMove == 1) {
        if (YourTurn->Move->Category != 0) {
        printf("It did %d damage!\n",Damage);
        if (TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
        }
        printf("The opposing %s is at %d/%d hp\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
          }
           if (YourTurn->Move->BoostRate[0] != 0) {
             if (YourTurn->Move->BoostRate[0] != 0) printf("%s Attack rose by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[0]);
            else printf("%s Attack fell by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[0]);
           }
          if (YourTurn->Move->BoostRate[1] != 0) {
             if (YourTurn->Move->BoostRate[1] != 0) printf("%s Defense rose by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[1]);
            else printf("%s Defense fell by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[1]);
            }
          if (YourTurn->Move->BoostRate[2] != 0) {
             if (YourTurn->Move->BoostRate[2] != 0) printf("%s Special Attack rose by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[2]);
            else printf("%s Special Attack fell by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[2]);
            }
          if (YourTurn->Move->BoostRate[3] != 0) {
             if (YourTurn->Move->BoostRate[3] != 0) printf("%s Special Defense rose by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[3]);
            else printf("%s Special Defense fell by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[3]);
            }
          if (YourTurn->Move->BoostRate[4] != 0) {
             if (YourTurn->Move->BoostRate[4] != 0) printf("%s Speed rose by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[4]);
            else printf("%s Speed fell by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[4]);
          }
          if (YourTurn->Move->BoostRate[5] != 0) {
             if (YourTurn->Move->BoostRate[5] != 0) printf("%s Accuracy rose by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[5]);
            else printf("%s Accuracy fell by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[5]);
          }
          if (YourTurn->Move->BoostRate[6] != 0) {
             if (YourTurn->Move->BoostRate[6] != 0) printf("%s Crit Chance rose by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[6]);
            else printf("%s Crit Chance fell by %d stages!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->BoostRate[6]);
          }
          } else if (PlayerHit == 0) printf("But it missed!\n");
          } else {
          printf("You switched out to %s\n",PlayerParty.P1->Poke->Name);
          }
          
        if (EnemyParty.P1->CurrentHp <= 0) {
          printf("The opposing %s fainted!\n",EnemyParty.P1->Poke->Name);
          SwitchIn(0);
          EnemyDead = 1;
        }
    printf("\n");
  } 
  else {
   if (EnemySwitch == 0) {
         if (EnemyCanMove == 1) printf("The opposing %s used %s!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->Name);
        else {
          printf("The opposing %s couldn't move\n",EnemyParty.P1->Poke->Name);
          if (EnemyPara) printf("It was paralyzed!\n");
          else if (EnemySleep) printf("It is asleep\n");
          else if (EnemyFrozen) printf("It is frozen!\n");
          }      
          if (EnemyHit == 1 && EnemyCanMove == 1) {        
        if (EnemyTurn->Move->Category != 0) {
        printf("It did %d damage!\n",EnemyDamage);
        if (TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
        }
        printf("Your %s is at %d/%d hp\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
          } 
          if (EnemyTurn->Move->BoostRate[0] != 0) {
             if (EnemyTurn->Move->BoostRate[0] != 0) printf("%s Attack rose by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[0]);
            else printf("%s Attack fell by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[0]);
           }
          if (EnemyTurn->Move->BoostRate[1] != 0) {
             if (EnemyTurn->Move->BoostRate[1] != 0) printf("%s Defense rose by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[1]);
            else printf("%s Defense fell by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[1]);
            }
          if (EnemyTurn->Move->BoostRate[2] != 0) {
             if (EnemyTurn->Move->BoostRate[2] != 0) printf("%s Special Attack rose by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[2]);
            else printf("%s Special Attack fell by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[2]);
            }
          if (EnemyTurn->Move->BoostRate[3] != 0) {
             if (EnemyTurn->Move->BoostRate[3] != 0) printf("%s Special Defense rose by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[3]);
            else printf("%s Special Defense fell by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[3]);
            }
          if (EnemyTurn->Move->BoostRate[4] != 0) {
             if (EnemyTurn->Move->BoostRate[4] != 0) printf("%s Speed rose by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[4]);
            else printf("%s Speed fell by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[4]);
          }
          if (EnemyTurn->Move->BoostRate[5] != 0) {
             if (EnemyTurn->Move->BoostRate[5] != 0) printf("%s Accuracy rose by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[5]);
            else printf("%s Accuracy fell by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[5]);
          }
          if (EnemyTurn->Move->BoostRate[6] != 0) {
             if (EnemyTurn->Move->BoostRate[6] != 0) printf("%s Crit Chance rose by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[6]);
            else printf("%s Crit Chance fell by %d stages!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->BoostRate[6]);
          }
          } else if (EnemyHit == 0) printf("But it missed!\n");
          } else {
          printf("The Enemy switched out to %s\n",EnemyParty.P1->Poke->Name);
          }
        if (PlayerParty.P1->CurrentHp <= 0) {
          printf("Your %s fainted!\n",PlayerParty.P1->Poke->Name);
          SwitchIn(1);
          PlayerDead = 1;
        }
    printf("\n");
  }
  }