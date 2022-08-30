void DBOG(bool eop) {
if (Parties[!eop].Member[0]->CurrentHp < Damages[eop]) {
  Damages[eop] = Parties[!eop].Member[0]->CurrentHp;
}
}

void ExecuteMove(bool eop) {
  if (!eop) {
    if (PlayerDead == 0) {
        if (PlayerSwitch == 0) {
        PlayerHit = (map2(rand(),100,RAND_MAX) < (MoveList[Turns[0]->Move].Accuracy*statboostmult(Parties[0].Member[0]->StatBoosts[5] / statboostmult(Parties[1].Member[0]->StatBoosts[6]))));
        PlayerCrit = map2(rand(),32,RAND_MAX) < 1*power2(Parties[0].Member[0]->StatBoosts[7]);
        if (Parties[0].Member[0]->Non_Volatile_Status == STATUS_PARALYSIS) {
          PlayerPara = (rand() % 4 == 0);
          if (PlayerPara == 1) PlayerCanMove = 0;
          }
        else if (Parties[0].Member[0]->Non_Volatile_Status == STATUS_BURN && MoveList[Turns[0]->Move].Category == 1) PlayerTM /= 2;
        else if (Parties[0].Member[0]->Non_Volatile_Status == STATUS_SLEEP) {
          if (Parties[0].Member[0]->Counter == 0) {
          PlayerCanMove = 0; PlayerSleep = 1;
            } else {
          if (Parties[0].Member[0]->Counter > 3) {
            PlayerSleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
              PlayerSleep = 0;
            } else {
              PlayerCanMove = 0; PlayerSleep = 1;
            }
          }
          if (PlayerSleep == 1) Parties[0].Member[0]->Counter++;
          else {Parties[0].Member[0]->Counter = 0; Parties[0].Member[0]->Non_Volatile_Status = 0; printf("%s woke up\n",Parties[0].Member[0]->Poke->Name);}
          } else if (Parties[0].Member[0]->Non_Volatile_Status == STATUS_FREEZE) {
          PlayerFrozen = (map2(rand(),5,RAND_MAX) != 0);
          if (PlayerFrozen) {
            PlayerCanMove = 0;
          }
          else {
          Parties[0].Member[0]->Non_Volatile_Status = 0;
          printf("%s thawed out\n",Parties[0].Member[0]->Poke->Name); 
          }
          }
        MOVE_FUNC_LIST[MoveList[Turns[0]->Move].movefunc](3,1);
        display_move(0);
      if (Parties[0].Member[0]->CurrentHp > 0 && PlayerHit == 1 && PlayerCanMove == 1) {
        if (MoveList[Turns[0]->Move].Category == 0) {
         MOVE_FUNC_LIST[MoveList[Turns[0]->Move].movefunc](1,0);
         ItemList[Parties[0].Member[0]->Item].itemfunc(1,0);
         ItemList[Parties[1].Member[0]->Item].itemfunc(-1,1);
         Turns[0]->PP--;
         move_result(0);
         MOVE_FUNC_LIST[MoveList[Turns[0]->Move].movefunc](2,0);
          }
        else if (MoveList[Turns[0]->Move].Category == 1) {
        Damages[0] = (((((2 * Parties[0].Member[0]->Level / 5 + 2) * (Parties[0].Member[0]->Atk*tt(PlayerCrit && (Parties[0].Member[0]->StatBoosts[0] < 0),1,statboostmult(Parties[0].Member[0]->StatBoosts[0]))) * MoveList[Turns[0]->Move].BP / (Parties[1].Member[0]->Def*tt(PlayerCrit && (Parties[1].Member[0]->StatBoosts[1] > 0),1,statboostmult(Parties[1].Member[0]->StatBoosts[1])))) / 50) + 2) * STAB * (TypeChart[MoveList[Turns[0]->Move].Type][Parties[1].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[0]->Move].Type][Parties[1].Member[0]->Poke->Type2]) * ((rand() % 16) + 85) / 100) * PlayerTM * tt(PlayerCrit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Turns[0]->Move].movefunc](1,0);
        ItemList[Parties[0].Member[0]->Item].itemfunc(1,0);
        ItemList[Parties[1].Member[0]->Item].itemfunc(-1,1);
        DBOG(0);
        Parties[1].Member[0]->CurrentHp = Parties[1].Member[0]->CurrentHp - Damages[0];
        Turns[0]->PP--;
         move_result(0);
        MOVE_FUNC_LIST[MoveList[Turns[0]->Move].movefunc](2,0);
          } else if (MoveList[Turns[0]->Move].Category == 2) {
        Damages[0] = (((((2 * Parties[0].Member[0]->Level / 5 + 2) * (Parties[0].Member[0]->SpA*tt(PlayerCrit && (Parties[0].Member[0]->StatBoosts[2] < 0),1,statboostmult(Parties[0].Member[0]->StatBoosts[2]))) * MoveList[Turns[0]->Move].BP / (Parties[1].Member[0]->SpD*tt(PlayerCrit && (Parties[1].Member[0]->StatBoosts[3] > 0),1,statboostmult(Parties[1].Member[0]->StatBoosts[3])))) / 50) + 2) * STAB * TypeChart[MoveList[Turns[0]->Move].Type][Parties[1].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[0]->Move].Type][Parties[1].Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * PlayerTM * tt(PlayerCrit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Turns[0]->Move].movefunc](1,0);
        ItemList[Parties[0].Member[0]->Item].itemfunc(1,0);
        ItemList[Parties[1].Member[0]->Item].itemfunc(-1,1);
        DBOG(0);
        Parties[1].Member[0]->CurrentHp = Parties[1].Member[0]->CurrentHp - Damages[0]; 
        Turns[0]->PP--;
         move_result(0);
        MOVE_FUNC_LIST[MoveList[Turns[0]->Move].movefunc](2,0);
          }
          }
          }  else {
        if (Parties[0].Member[0]->Non_Volatile_Status == 5) Parties[0].Member[0]->Counter = 0; 
         ResetBoosts(&Parties[0].Member[0]);
         CLEAR_EFFECTS(0);
         Switcheroo3(&PlayerSwitchSave);
         printf("You switched out to %s\n",Parties[0].Member[0]->Poke->Name);
      }
        printf("\n");
        }
  }
  else {
    if (EnemyDead == 0) {
        if (EnemySwitch == 0) {
        EnemyHit = (map2(rand(),100,RAND_MAX) < (MoveList[Turns[1]->Move].Accuracy*statboostmult(Parties[1].Member[0]->StatBoosts[5] / statboostmult(Parties[0].Member[0]->StatBoosts[6]))));
        EnemyCrit = (map2(rand(),32,RAND_MAX) < 1*power2(Parties[1].Member[0]->StatBoosts[7]));
        if (Parties[1].Member[0]->Non_Volatile_Status == STATUS_PARALYSIS) {
          EnemyPara = (rand() % 4 == 0);
          if (EnemyPara == 1) EnemyCanMove = 0;
          }
        else if (Parties[1].Member[0]->Non_Volatile_Status == STATUS_BURN && MoveList[Turns[1]->Move].Category == 1) EnemyTM /= 2; 
        else if (Parties[1].Member[0]->Non_Volatile_Status == STATUS_SLEEP) {
          if (Parties[1].Member[0]->Counter == 0) {
          EnemyCanMove = 0; EnemySleep = 1;
            } else {
          if (Parties[1].Member[0]->Counter > 3) {
            EnemySleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
            EnemySleep = 0;
            } else {
              EnemyCanMove = 0; EnemySleep = 1;
            }
          }
          if (EnemySleep == 1) Parties[1].Member[0]->Counter++;
          else {Parties[1].Member[0]->Counter = 0; Parties[1].Member[0]->Non_Volatile_Status = 0; printf("The opposing %s woke up\n",Parties[1].Member[0]->Poke->Name);}
          } else if (Parties[1].Member[0]->Non_Volatile_Status == STATUS_FREEZE) {
          EnemyFrozen = (map2(rand(),5,RAND_MAX) != 0);
          if (EnemyFrozen) {
            EnemyCanMove = 0;
          }
          else {
          Parties[1].Member[0]->Non_Volatile_Status = 0;
          printf("The opposing %s thawed out\n",Parties[1].Member[0]->Poke->Name); 
          }
          }
        MOVE_FUNC_LIST[MoveList[Turns[1]->Move].movefunc](3,1);
        display_move(1);
        if (Parties[1].Member[0]->CurrentHp > 0 && EnemyHit == 1 && EnemyCanMove == 1) {
        if (MoveList[Turns[1]->Move].Category == 0) {
         MOVE_FUNC_LIST[MoveList[Turns[1]->Move].movefunc](1,1);
         ItemList[Parties[1].Member[0]->Item].itemfunc(1,1);
         ItemList[Parties[0].Member[0]->Item].itemfunc(-1,0);
         Turns[1]->PP--;
         move_result(1);
         MOVE_FUNC_LIST[MoveList[Turns[1]->Move].movefunc](2,1);
          }
        else if (MoveList[Turns[1]->Move].Category == 1) {
        Damages[1] = (((((2 * Parties[1].Member[0]->Level / 5 + 2) * (Parties[1].Member[0]->Atk*tt(EnemyCrit && (Parties[1].Member[0]->StatBoosts[0] < 0),1,statboostmult(Parties[1].Member[0]->StatBoosts[0]))) * MoveList[Turns[1]->Move].BP / (Parties[0].Member[0]->Def*tt(EnemyCrit && (Parties[0].Member[0]->StatBoosts[1] > 0),1,statboostmult(Parties[0].Member[0]->StatBoosts[1])))) / 50) + 2) * EnemySTAB * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM * tt(EnemyCrit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Turns[1]->Move].movefunc](1,1);
        ItemList[Parties[1].Member[0]->Item].itemfunc(1,1);
        ItemList[Parties[0].Member[0]->Item].itemfunc(-1,0);
        DBOG(1);
        Parties[0].Member[0]->CurrentHp = Parties[0].Member[0]->CurrentHp - Damages[1];
        Turns[1]->PP--;
        move_result(1);
        MOVE_FUNC_LIST[MoveList[Turns[1]->Move].movefunc](2,1);
          }
        else if (MoveList[Turns[1]->Move].Category == 2) {
        Damages[1] = (((((2 * Parties[1].Member[0]->Level / 5 + 2) * (Parties[1].Member[0]->SpA*tt(EnemyCrit && (Parties[1].Member[0]->StatBoosts[2] < 0),1,statboostmult(Parties[1].Member[0]->StatBoosts[2]))) * MoveList[Turns[1]->Move].BP / (Parties[0].Member[0]->SpD*tt(EnemyCrit && (Parties[0].Member[0]->StatBoosts[3] > 0),1,statboostmult(Parties[0].Member[0]->StatBoosts[3])))) / 50) + 2) * EnemySTAB * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM * tt(EnemyCrit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Turns[1]->Move].movefunc](1,1);
        ItemList[Parties[1].Member[0]->Item].itemfunc(1,1);
        ItemList[Parties[0].Member[0]->Item].itemfunc(-1,0);
        DBOG(1);
        Parties[0].Member[0]->CurrentHp = Parties[0].Member[0]->CurrentHp - Damages[1];
        Turns[1]->PP--;
         move_result(1);
        MOVE_FUNC_LIST[MoveList[Turns[1]->Move].movefunc](2,1);
          }
          }
      } else {
        if (Parties[1].Member[0]->Non_Volatile_Status == 5) Parties[1].Member[0]->Counter = 0; 
        ResetBoosts(&Parties[1].Member[0]);
        CLEAR_EFFECTS(1);
        Switcheroo4(&EnemySwitchSave);
        printf("The Enemy switched out to %s\n",Parties[1].Member[0]->Poke->Name);
          }
          printf("\n");
          }
  }
}