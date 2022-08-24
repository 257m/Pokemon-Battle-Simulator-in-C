void ExecuteMove(bool eop) {
  if (!eop) {
    if (PlayerDead == 0) {
        if (PlayerSwitch == 0) {
        PlayerHit = (map2(rand(),100,RAND_MAX) < (MoveList[YourTurn->Move].Accuracy*statboostmult(PlayerParty.Member[0]->StatBoosts[5] / statboostmult(EnemyParty.Member[0]->StatBoosts[6]))));
        PlayerCrit = map2(rand(),32,RAND_MAX) < 1*power2(PlayerParty.Member[0]->StatBoosts[7]);
        if (PlayerParty.Member[0]->Non_Volatile_Status == 3) {
          PlayerPara = (rand() % 4 == 0);
          if (PlayerPara == 1) PlayerCanMove = 0;
          }
        else if (PlayerParty.Member[0]->Non_Volatile_Status == 1 && MoveList[YourTurn->Move].Category == 1) PlayerTM /= 2;
        else if (PlayerParty.Member[0]->Non_Volatile_Status == 4) {
          if (PlayerParty.Member[0]->Counter == 0) {
          PlayerCanMove = 0; PlayerSleep = 1;
            } else {
          if (PlayerParty.Member[0]->Counter > 3) {
            PlayerSleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
              PlayerSleep = 0;
            } else {
              PlayerCanMove = 0; PlayerSleep = 1;
            }
          }
          if (PlayerSleep == 1) PlayerParty.Member[0]->Counter++;
          else {PlayerParty.Member[0]->Counter = 0; PlayerParty.Member[0]->Non_Volatile_Status = 0; printf("%s woke up\n",PlayerParty.Member[0]->Poke->Name);}
          } else if (PlayerParty.Member[0]->Non_Volatile_Status == 6) {
          PlayerFrozen = (map2(rand(),5,RAND_MAX) != 0);
          if (PlayerFrozen) {
            PlayerCanMove = 0;
          }
          else {
          PlayerParty.Member[0]->Non_Volatile_Status = 0;
          printf("%s thawed out\n",PlayerParty.Member[0]->Poke->Name); 
          }
          }
        MoveList[YourTurn->Move].movefunc(3,1);
        display_move(0);
      if (PlayerParty.Member[0]->CurrentHp > 0 && PlayerHit == 1 && PlayerCanMove == 1) {
        if (MoveList[YourTurn->Move].Category == 0) {
         MoveList[YourTurn->Move].movefunc(1,0);
         ItemList[PlayerParty.Member[0]->Item].itemfunc(1,0);
         ItemList[EnemyParty.Member[0]->Item].itemfunc(-1,1);
         YourTurn->PP--;
         move_result(0);
         MoveList[YourTurn->Move].movefunc(2,0);
          }
        else if (MoveList[YourTurn->Move].Category == 1) {
        Damage = (((((2 * PlayerParty.Member[0]->Level / 5 + 2) * (PlayerParty.Member[0]->Atk*tt(PlayerCrit && (PlayerParty.Member[0]->StatBoosts[0] < 0),1,statboostmult(PlayerParty.Member[0]->StatBoosts[0]))) * MoveList[YourTurn->Move].BP / (EnemyParty.Member[0]->Def*tt(PlayerCrit && (EnemyParty.Member[0]->StatBoosts[1] > 0),1,statboostmult(EnemyParty.Member[0]->StatBoosts[1])))) / 50) + 2) * STAB * (TypeChart[MoveList[YourTurn->Move].Type][EnemyParty.Member[0]->Poke->Type1] * TypeChart[MoveList[YourTurn->Move].Type][EnemyParty.Member[0]->Poke->Type2]) * ((rand() % 16) + 85) / 100) * PlayerTM * tt(PlayerCrit,1.5,1);
        MoveList[YourTurn->Move].movefunc(1,0);
        ItemList[PlayerParty.Member[0]->Item].itemfunc(1,0);
        ItemList[EnemyParty.Member[0]->Item].itemfunc(-1,1);
        EnemyParty.Member[0]->CurrentHp = EnemyParty.Member[0]->CurrentHp - Damage;
        YourTurn->PP--;
         move_result(0);
        MoveList[YourTurn->Move].movefunc(2,0);
          } else if (MoveList[YourTurn->Move].Category == 2) {
        Damage = (((((2 * PlayerParty.Member[0]->Level / 5 + 2) * (PlayerParty.Member[0]->SpA*tt(PlayerCrit && (PlayerParty.Member[0]->StatBoosts[2] < 0),1,statboostmult(PlayerParty.Member[0]->StatBoosts[2]))) * MoveList[YourTurn->Move].BP / (EnemyParty.Member[0]->SpD*tt(PlayerCrit && (EnemyParty.Member[0]->StatBoosts[3] > 0),1,statboostmult(EnemyParty.Member[0]->StatBoosts[3])))) / 50) + 2) * STAB * TypeChart[MoveList[YourTurn->Move].Type][EnemyParty.Member[0]->Poke->Type1] * TypeChart[MoveList[YourTurn->Move].Type][EnemyParty.Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * PlayerTM * tt(PlayerCrit,1.5,1);
        MoveList[YourTurn->Move].movefunc(1,0);
        ItemList[PlayerParty.Member[0]->Item].itemfunc(1,0);
        ItemList[EnemyParty.Member[0]->Item].itemfunc(-1,1);
        EnemyParty.Member[0]->CurrentHp = EnemyParty.Member[0]->CurrentHp - Damage; 
        YourTurn->PP--;
         move_result(0);
        MoveList[YourTurn->Move].movefunc(2,0);
          }
          }
          }  else {
        if (PlayerParty.Member[0]->Non_Volatile_Status == 5) PlayerParty.Member[0]->Counter = 0; 
         ResetBoosts(&PlayerParty.Member[0]);
         Switcheroo3(&PlayerSwitchSave);
         printf("You switched out to %s\n",PlayerParty.Member[0]->Poke->Name);
      }
        printf("\n");
        }
  }
  else {
    if (EnemyDead == 0) {
        if (EnemySwitch == 0) {
        EnemyHit = (map2(rand(),100,RAND_MAX) < (MoveList[EnemyTurn->Move].Accuracy*statboostmult(EnemyParty.Member[0]->StatBoosts[5] / statboostmult(PlayerParty.Member[0]->StatBoosts[6]))));
        EnemyCrit = (map2(rand(),32,RAND_MAX) < 1*power2(EnemyParty.Member[0]->StatBoosts[7]));
        if (EnemyParty.Member[0]->Non_Volatile_Status == 3) {
          EnemyPara = (rand() % 4 == 0);
          if (EnemyPara == 1) EnemyCanMove = 0;
          }
        else if (EnemyParty.Member[0]->Non_Volatile_Status == 1 && MoveList[EnemyTurn->Move].Category == 1) EnemyTM /= 2; 
        else if (EnemyParty.Member[0]->Non_Volatile_Status == 4) {
          if (EnemyParty.Member[0]->Counter == 0) {
          EnemyCanMove = 0; EnemySleep = 1;
            } else {
          if (EnemyParty.Member[0]->Counter > 3) {
            EnemySleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
            EnemySleep = 0;
            } else {
              EnemyCanMove = 0; EnemySleep = 1;
            }
          }
          if (EnemySleep == 1) EnemyParty.Member[0]->Counter++;
          else {EnemyParty.Member[0]->Counter = 0; EnemyParty.Member[0]->Non_Volatile_Status = 0; printf("The opposing %s woke up\n",EnemyParty.Member[0]->Poke->Name);}
          } else if (EnemyParty.Member[0]->Non_Volatile_Status == 6) {
          EnemyFrozen = (map2(rand(),5,RAND_MAX) != 0);
          if (EnemyFrozen) {
            EnemyCanMove = 0;
          }
          else {
          EnemyParty.Member[0]->Non_Volatile_Status = 0;
          printf("The opposing %s thawed out\n",EnemyParty.Member[0]->Poke->Name); 
          }
          }
        MoveList[EnemyTurn->Move].movefunc(3,1);
        display_move(1);
        if (EnemyParty.Member[0]->CurrentHp > 0 && EnemyHit == 1 && EnemyCanMove == 1) {
        if (MoveList[EnemyTurn->Move].Category == 0) {
         MoveList[EnemyTurn->Move].movefunc(1,1);
         ItemList[EnemyParty.Member[0]->Item].itemfunc(1,1);
         ItemList[PlayerParty.Member[0]->Item].itemfunc(-1,0);
         EnemyTurn->PP--;
         move_result(1);
         MoveList[EnemyTurn->Move].movefunc(2,1);
          }
        else if (MoveList[EnemyTurn->Move].Category == 1) {
        EnemyDamage = (((((2 * EnemyParty.Member[0]->Level / 5 + 2) * (EnemyParty.Member[0]->Atk*tt(EnemyCrit && (EnemyParty.Member[0]->StatBoosts[0] < 0),1,statboostmult(EnemyParty.Member[0]->StatBoosts[0]))) * MoveList[EnemyTurn->Move].BP / (PlayerParty.Member[0]->Def*tt(EnemyCrit && (PlayerParty.Member[0]->StatBoosts[1] > 0),1,statboostmult(PlayerParty.Member[0]->StatBoosts[1])))) / 50) + 2) * EnemySTAB * TypeChart[MoveList[EnemyTurn->Move].Type][PlayerParty.Member[0]->Poke->Type1] * TypeChart[MoveList[EnemyTurn->Move].Type][PlayerParty.Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM * tt(EnemyCrit,1.5,1);
        MoveList[EnemyTurn->Move].movefunc(1,1);
        ItemList[EnemyParty.Member[0]->Item].itemfunc(1,1);
        ItemList[PlayerParty.Member[0]->Item].itemfunc(-1,0);
        PlayerParty.Member[0]->CurrentHp = PlayerParty.Member[0]->CurrentHp - EnemyDamage;
        EnemyTurn->PP--;
        move_result(1);
        MoveList[EnemyTurn->Move].movefunc(2,1);
          }
        else if (MoveList[EnemyTurn->Move].Category == 2) {
        EnemyDamage = (((((2 * EnemyParty.Member[0]->Level / 5 + 2) * (EnemyParty.Member[0]->SpA*tt(EnemyCrit && (EnemyParty.Member[0]->StatBoosts[2] < 0),1,statboostmult(EnemyParty.Member[0]->StatBoosts[2]))) * MoveList[EnemyTurn->Move].BP / (PlayerParty.Member[0]->SpD*tt(EnemyCrit && (PlayerParty.Member[0]->StatBoosts[3] > 0),1,statboostmult(PlayerParty.Member[0]->StatBoosts[3])))) / 50) + 2) * EnemySTAB * TypeChart[MoveList[EnemyTurn->Move].Type][PlayerParty.Member[0]->Poke->Type1] * TypeChart[MoveList[EnemyTurn->Move].Type][PlayerParty.Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM * tt(EnemyCrit,1.5,1);
        MoveList[EnemyTurn->Move].movefunc(1,1);
        ItemList[EnemyParty.Member[0]->Item].itemfunc(1,1);
        ItemList[PlayerParty.Member[0]->Item].itemfunc(-1,0);
        PlayerParty.Member[0]->CurrentHp = PlayerParty.Member[0]->CurrentHp - EnemyDamage;
        EnemyTurn->PP--;
         move_result(1);
        MoveList[EnemyTurn->Move].movefunc(2,1);
          }
          }
      } else {
        if (EnemyParty.Member[0]->Non_Volatile_Status == 5) EnemyParty.Member[0]->Counter = 0; 
        ResetBoosts(&EnemyParty.Member[0]);
        Switcheroo4(&EnemySwitchSave);
        printf("The Enemy switched out to %s\n",EnemyParty.Member[0]->Poke->Name);
          }
          printf("\n");
          }
  }
}