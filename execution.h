void ExecuteMove(bool eop) {
  if (!eop) {
    if (PlayerDead == 0) {
        if (PlayerSwitch == 0) {
        PlayerHit = (map2(rand(),100,RAND_MAX) < (YourTurn->Move->Accuracy*statboostmult(PlayerParty.P1->StatBoosts[5] / statboostmult(EnemyParty.P1->StatBoosts[6]))));
        PlayerCrit = map2(rand(),32,RAND_MAX) < 1*power2(PlayerParty.P1->StatBoosts[7]);
        if (PlayerParty.P1->Non_Volatile_Status == 3) {
          PlayerPara = (rand() % 4 == 0);
          if (PlayerPara == 1) PlayerCanMove = 0;
          }
        else if (PlayerParty.P1->Non_Volatile_Status == 1 && YourTurn->Move->Category == 1) PlayerTM /= 2;
        else if (PlayerParty.P1->Non_Volatile_Status == 4) {
          if (PlayerParty.P1->Counter == 0) {
          PlayerCanMove = 0; PlayerSleep = 1;
            } else {
          if (PlayerParty.P1->Counter > 3) {
            PlayerSleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
              PlayerSleep = 0;
            } else {
              PlayerCanMove = 0; PlayerSleep = 1;
            }
          }
          if (PlayerSleep == 1) PlayerParty.P1->Counter++;
          else {PlayerParty.P1->Counter = 0; PlayerParty.P1->Non_Volatile_Status = 0; printf("%s woke up\n",PlayerParty.P1->Poke->Name);}
          } else if (PlayerParty.P1->Non_Volatile_Status == 6) {
          PlayerFrozen = (map2(rand(),5,RAND_MAX) != 0);
          if (PlayerFrozen) {
            PlayerCanMove = 0;
          }
          else {
          PlayerParty.P1->Non_Volatile_Status = 0;
          printf("%s thawed out\n",PlayerParty.P1->Poke->Name); 
          }
          }
        YourTurn->Move->movefunc(3,1);
        display_move(0);
      if (PlayerParty.P1->CurrentHp > 0 && PlayerHit == 1 && PlayerCanMove == 1) {
        if (YourTurn->Move->Category == 0) {
         YourTurn->Move->movefunc(1,0);
         ItemList[PlayerParty.P1->Item].itemfunc(1,0);
         ItemList[EnemyParty.P1->Item].itemfunc(-1,1);
         YourTurn->PP--;
         move_result(0);
         YourTurn->Move->movefunc(2,0);
          }
        else if (YourTurn->Move->Category == 1) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * (PlayerParty.P1->Atk*tt(PlayerCrit && (PlayerParty.P1->StatBoosts[0] < 0),1,statboostmult(PlayerParty.P1->StatBoosts[0]))) * YourTurn->Move->BP / (EnemyParty.P1->Def*tt(PlayerCrit && (EnemyParty.P1->StatBoosts[1] > 0),1,statboostmult(EnemyParty.P1->StatBoosts[1])))) / 50) + 2) * STAB * (TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2]) * ((rand() % 16) + 85) / 100) * PlayerTM * tt(PlayerCrit,1.5,1);
        YourTurn->Move->movefunc(1,0);
        ItemList[PlayerParty.P1->Item].itemfunc(1,0);
        ItemList[EnemyParty.P1->Item].itemfunc(-1,1);
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage;
        YourTurn->PP--;
         move_result(0);
        YourTurn->Move->movefunc(2,0);
          } else if (YourTurn->Move->Category == 2) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * (PlayerParty.P1->SpA*tt(PlayerCrit && (PlayerParty.P1->StatBoosts[2] < 0),1,statboostmult(PlayerParty.P1->StatBoosts[2]))) * YourTurn->Move->BP / (EnemyParty.P1->SpD*tt(PlayerCrit && (EnemyParty.P1->StatBoosts[3] > 0),1,statboostmult(EnemyParty.P1->StatBoosts[3])))) / 50) + 2) * STAB * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * PlayerTM * tt(PlayerCrit,1.5,1);
        YourTurn->Move->movefunc(1,0);
        ItemList[PlayerParty.P1->Item].itemfunc(1,0);
        ItemList[EnemyParty.P1->Item].itemfunc(-1,1);
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage; 
        YourTurn->PP--;
         move_result(0);
        YourTurn->Move->movefunc(2,0);
          }
          }
          }  else {
        if (PlayerParty.P1->Non_Volatile_Status == 5) PlayerParty.P1->Counter = 0; 
         ResetBoosts(&PlayerParty.P1);
         Switcheroo3(&PlayerSwitchSave);
         printf("You switched out to %s\n",PlayerParty.P1->Poke->Name);
      }
        printf("\n");
        }
  }
  else {
    if (EnemyDead == 0) {
        if (EnemySwitch == 0) {
        EnemyHit = (map2(rand(),100,RAND_MAX) < (EnemyTurn->Move->Accuracy*statboostmult(EnemyParty.P1->StatBoosts[5] / statboostmult(PlayerParty.P1->StatBoosts[6]))));
        EnemyCrit = (map2(rand(),32,RAND_MAX) < 1*power2(EnemyParty.P1->StatBoosts[7]));
        if (EnemyParty.P1->Non_Volatile_Status == 3) {
          EnemyPara = (rand() % 4 == 0);
          if (EnemyPara == 1) EnemyCanMove = 0;
          }
        else if (EnemyParty.P1->Non_Volatile_Status == 1 && EnemyTurn->Move->Category == 1) EnemyTM /= 2; 
        else if (EnemyParty.P1->Non_Volatile_Status == 4) {
          if (EnemyParty.P1->Counter == 0) {
          EnemyCanMove = 0; EnemySleep = 1;
            } else {
          if (EnemyParty.P1->Counter > 3) {
            EnemySleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
            EnemySleep = 0;
            } else {
              EnemyCanMove = 0; EnemySleep = 1;
            }
          }
          if (EnemySleep == 1) EnemyParty.P1->Counter++;
          else {EnemyParty.P1->Counter = 0; EnemyParty.P1->Non_Volatile_Status = 0; printf("The opposing %s woke up\n",EnemyParty.P1->Poke->Name);}
          } else if (EnemyParty.P1->Non_Volatile_Status == 6) {
          EnemyFrozen = (map2(rand(),5,RAND_MAX) != 0);
          if (EnemyFrozen) {
            EnemyCanMove = 0;
          }
          else {
          EnemyParty.P1->Non_Volatile_Status = 0;
          printf("The opposing %s thawed out\n",EnemyParty.P1->Poke->Name); 
          }
          }
        EnemyTurn->Move->movefunc(3,1);
        display_move(1);
        if (EnemyParty.P1->CurrentHp > 0 && EnemyHit == 1 && EnemyCanMove == 1) {
        if (EnemyTurn->Move->Category == 0) {
         EnemyTurn->Move->movefunc(1,1);
         ItemList[EnemyParty.P1->Item].itemfunc(1,1);
         ItemList[PlayerParty.P1->Item].itemfunc(-1,0);
         EnemyTurn->PP--;
         move_result(1);
         EnemyTurn->Move->movefunc(2,1);
          }
        else if (EnemyTurn->Move->Category == 1) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * (EnemyParty.P1->Atk*tt(EnemyCrit && (EnemyParty.P1->StatBoosts[0] < 0),1,statboostmult(EnemyParty.P1->StatBoosts[0]))) * EnemyTurn->Move->BP / (PlayerParty.P1->Def*tt(EnemyCrit && (PlayerParty.P1->StatBoosts[1] > 0),1,statboostmult(PlayerParty.P1->StatBoosts[1])))) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM * tt(EnemyCrit,1.5,1);
        EnemyTurn->Move->movefunc(1,1);
        ItemList[EnemyParty.P1->Item].itemfunc(1,1);
        ItemList[PlayerParty.P1->Item].itemfunc(-1,0);
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
        EnemyTurn->PP--;
        move_result(1);
        EnemyTurn->Move->movefunc(2,1);
          }
        else if (EnemyTurn->Move->Category == 2) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * (EnemyParty.P1->SpA*tt(EnemyCrit && (EnemyParty.P1->StatBoosts[2] < 0),1,statboostmult(EnemyParty.P1->StatBoosts[2]))) * EnemyTurn->Move->BP / (PlayerParty.P1->SpD*tt(EnemyCrit && (PlayerParty.P1->StatBoosts[3] > 0),1,statboostmult(PlayerParty.P1->StatBoosts[3])))) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM * tt(EnemyCrit,1.5,1);
        EnemyTurn->Move->movefunc(1,1);
        ItemList[EnemyParty.P1->Item].itemfunc(1,1);
        ItemList[PlayerParty.P1->Item].itemfunc(-1,0);
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
        EnemyTurn->PP--;
         move_result(1);
        EnemyTurn->Move->movefunc(2,1);
          }
          }
      } else {
        if (EnemyParty.P1->Non_Volatile_Status == 5) EnemyParty.P1->Counter = 0; 
        ResetBoosts(&EnemyParty.P1);
        Switcheroo4(&EnemySwitchSave);
        printf("The Enemy switched out to %s\n",EnemyParty.P1->Poke->Name);
          }
          printf("\n");
          }
  }
}