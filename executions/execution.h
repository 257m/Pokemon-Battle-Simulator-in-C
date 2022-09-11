void DBOG(bool eop) {
if (Parties[!eop].Member[0]->CurrentHp < Parties[eop].Damage) {
  Parties[eop].Damage = Parties[!eop].Member[0]->CurrentHp;
}
}

void UDBOG(int* hp,int* damage) {
  if (*hp-*damage < 0) *damage = *hp;
  *hp -= *damage;
}

void ExecuteMove(bool eop) {
  if (!eop) {
    if (!Parties[eop].Dead) {
        if (!Parties[0].Switching) {
        Parties[0].Hit = (rand() < RAND_MAX*((double)(MoveList[Parties[0].Turn->Move].Accuracy*statboostmult(Parties[0].Member[0]->StatBoosts[5] / statboostmult(Parties[1].Member[0]->StatBoosts[6])))/100));
        if (MoveList[Parties[0].Turn->Move].Accuracy > 100) Parties[0].Hit = 1;
        Parties[0].Crit = map2(rand(),32,RAND_MAX) < 1*power2(Parties[0].Member[0]->StatBoosts[7]);
        if (Parties[0].Member[0]->Non_Volatile_Status == STATUS_PARALYSIS) {
          Parties[0].Para = (rand() % 4 == 0);
          if (Parties[0].Para) Parties[0].CanMove = 0;
          }
        else if (Parties[0].Member[0]->Non_Volatile_Status == STATUS_BURN && MoveList[Parties[0].Turn->Move].Category == 1) Parties[0].TemporaryMult /= 2;
        else if (Parties[0].Member[0]->Non_Volatile_Status == STATUS_SLEEP) {
          if (Parties[0].Member[0]->Counter == 0) {
          Parties[0].CanMove = 0; Parties[0].Sleep = 1;
            } else {
          if (Parties[0].Member[0]->Counter > 3) {
            Parties[0].Sleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
              Parties[0].Sleep = 0;
            } else {
              Parties[0].CanMove = 0; Parties[0].Sleep = 1;
            }
          }
          if (Parties[0].Sleep) Parties[0].Member[0]->Counter++;
          else {Parties[0].Member[0]->Counter = 0; Parties[0].Member[0]->Non_Volatile_Status = 0; printf("%s woke up\n",Parties[0].Member[0]->Poke->Name);}
          } else if (Parties[0].Member[0]->Non_Volatile_Status == STATUS_FREEZE) {
          Parties[0].Frozen = (map2(rand(),5,RAND_MAX) != 0);
          if (Parties[0].Frozen) {
            Parties[0].CanMove = 0;
          }
          else {
          Parties[0].Member[0]->Non_Volatile_Status = 0;
          printf("%s thawed out\n",Parties[0].Member[0]->Poke->Name); 
          }
          }
        MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc](3,1);
        display_move(0);
      if (Parties[0].Member[0]->CurrentHp > 0 && Parties[0].Hit && Parties[0].CanMove) {
        if (MoveList[Parties[0].Turn->Move].Category == 0) {
         MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc](1,0);
         ItemList[Parties[0].Member[0]->Item].itemfunc(1,0);
         ItemList[Parties[1].Member[0]->Item].itemfunc(-1,1);
         Parties[0].Turn->PP--;
         move_result(0);
         MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc](2,0);
          }
        else if (MoveList[Parties[0].Turn->Move].Category == 1) {
        Parties[0].Damage = (((((2 * Parties[0].Member[0]->Level / 5 + 2) * (Parties[0].Member[0]->Atk*tt(Parties[0].Crit && (Parties[0].Member[0]->StatBoosts[0] < 0),1,statboostmult(Parties[0].Member[0]->StatBoosts[0]))) * MoveList[Parties[0].Turn->Move].BP / (Parties[1].Member[0]->Def*tt(Parties[0].Crit && (Parties[1].Member[0]->StatBoosts[1] > 0),1,statboostmult(Parties[1].Member[0]->StatBoosts[1])))) / 50) + 2) * Parties[0].STAB * (TypeChart[MoveList[Parties[0].Turn->Move].Type][Parties[1].Member[0]->Poke->Type1] * TypeChart[MoveList[Parties[0].Turn->Move].Type][Parties[1].Member[0]->Poke->Type2]) * ((rand() % 16) + 85) / 100) * Parties[0].TemporaryMult * tt(Parties[0].Crit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc](1,0);
        ItemList[Parties[0].Member[0]->Item].itemfunc(1,0);
        ItemList[Parties[1].Member[0]->Item].itemfunc(-1,1);
  if (!(CHK_BIT(Parties[1].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[0].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
        UDBOG(&Parties[1].Member[0]->CurrentHp,&Parties[0].Damage);
    } else {
    Parties[0].Damage = 0;
    }
        Parties[0].Turn->PP--;
         move_result(0);
        MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc](2,0);
          } else if (MoveList[Parties[0].Turn->Move].Category == 2) {
        Parties[0].Damage = (((((2 * Parties[0].Member[0]->Level / 5 + 2) * (Parties[0].Member[0]->SpA*tt(Parties[0].Crit && (Parties[0].Member[0]->StatBoosts[2] < 0),1,statboostmult(Parties[0].Member[0]->StatBoosts[2]))) * MoveList[Parties[0].Turn->Move].BP / (Parties[1].Member[0]->SpD*tt(Parties[0].Crit && (Parties[1].Member[0]->StatBoosts[3] > 0),1,statboostmult(Parties[1].Member[0]->StatBoosts[3])))) / 50) + 2) * Parties[0].STAB * TypeChart[MoveList[Parties[0].Turn->Move].Type][Parties[1].Member[0]->Poke->Type1] * TypeChart[MoveList[Parties[0].Turn->Move].Type][Parties[1].Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * Parties[0].TemporaryMult * tt(Parties[0].Crit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc](1,0);
        ItemList[Parties[0].Member[0]->Item].itemfunc(1,0);
        ItemList[Parties[1].Member[0]->Item].itemfunc(-1,1);
  if (!(CHK_BIT(Parties[1].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[0].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
        UDBOG(&Parties[1].Member[0]->CurrentHp,&Parties[0].Damage);
    } else {
    Parties[0].Damage = 0;
    }
        Parties[0].Turn->PP--;
         move_result(0);
        MOVE_FUNC_LIST[MoveList[Parties[0].Turn->Move].movefunc](2,0);
          }
          }
          }  else {
        if (Parties[0].Member[0]->Non_Volatile_Status == 5) Parties[0].Member[0]->Counter = 0; 
         ResetBoosts(Parties[0].Member[0]);
         CLEAR_EFFECTS(0);
          CLEAR_EFFECT_COUNTERS(0);
         Switch(0,Parties[0].SwitchSave);
         printf("You switched out to %s\n",Parties[0].Member[0]->Poke->Name);
      }
        printf("\n");
        }
  }
  else {
    if (Parties[1].Dead == 0) {
        if (Parties[1].Switching == 0) {
        Parties[1].Hit = (rand() < RAND_MAX*((double)(MoveList[Parties[1].Turn->Move].Accuracy*statboostmult(Parties[1].Member[0]->StatBoosts[5] / statboostmult(Parties[0].Member[0]->StatBoosts[6])))/100));
        if (MoveList[Parties[1].Turn->Move].Accuracy > 100) Parties[1].Hit = 1;
        Parties[1].Crit = (map2(rand(),32,RAND_MAX) < 1*power2(Parties[1].Member[0]->StatBoosts[7]));
        if (Parties[1].Member[0]->Non_Volatile_Status == STATUS_PARALYSIS) {
          Parties[1].Para = (rand() % 4 == 0);
          if (Parties[1].Para == 1) Parties[1].CanMove = 0;
          }
        else if (Parties[1].Member[0]->Non_Volatile_Status == STATUS_BURN && MoveList[Parties[1].Turn->Move].Category == 1) Parties[1].TemporaryMult /= 2; 
        else if (Parties[1].Member[0]->Non_Volatile_Status == STATUS_SLEEP) {
          if (Parties[1].Member[0]->Counter == 0) {
          Parties[1].CanMove = 0; Parties[1].Sleep = 1;
            } else {
          if (Parties[1].Member[0]->Counter > 3) {
            Parties[1].Sleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
            Parties[1].Sleep = 0;
            } else {
              Parties[1].CanMove = 0; Parties[1].Sleep = 1;
            }
          }
          if (Parties[1].Sleep == 1) Parties[1].Member[0]->Counter++;
          else {Parties[1].Member[0]->Counter = 0; Parties[1].Member[0]->Non_Volatile_Status = 0; printf("The opposing %s woke up\n",Parties[1].Member[0]->Poke->Name);}
          } else if (Parties[1].Member[0]->Non_Volatile_Status == STATUS_FREEZE) {
          Parties[1].Frozen = (map2(rand(),5,RAND_MAX) != 0);
          if (Parties[1].Frozen) {
            Parties[1].CanMove = 0;
          }
          else {
          Parties[1].Member[0]->Non_Volatile_Status = 0;
          printf("The opposing %s thawed out\n",Parties[1].Member[0]->Poke->Name); 
          }
          }
        MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc](3,1);
        display_move(1);
        if (Parties[1].Member[0]->CurrentHp > 0 && Parties[1].Hit == 1 && Parties[1].CanMove == 1) {
        if (MoveList[Parties[1].Turn->Move].Category == 0) {
         MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc](1,1);
         ItemList[Parties[1].Member[0]->Item].itemfunc(1,1);
         ItemList[Parties[0].Member[0]->Item].itemfunc(-1,0);
         Parties[1].Turn->PP--;
         move_result(1);
         MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc](2,1);
          }
        else if (MoveList[Parties[1].Turn->Move].Category == 1) {
        Parties[1].Damage = (((((2 * Parties[1].Member[0]->Level / 5 + 2) * (Parties[1].Member[0]->Atk*tt(Parties[1].Crit && (Parties[1].Member[0]->StatBoosts[0] < 0),1,statboostmult(Parties[1].Member[0]->StatBoosts[0]))) * MoveList[Parties[1].Turn->Move].BP / (Parties[0].Member[0]->Def*tt(Parties[1].Crit && (Parties[0].Member[0]->StatBoosts[1] > 0),1,statboostmult(Parties[0].Member[0]->StatBoosts[1])))) / 50) + 2) * Parties[1].STAB * TypeChart[MoveList[Parties[1].Turn->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Parties[1].Turn->Move].Type][Parties[0].Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * Parties[1].TemporaryMult * tt(Parties[1].Crit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc](1,1);
        ItemList[Parties[1].Member[0]->Item].itemfunc(1,1);
        ItemList[Parties[0].Member[0]->Item].itemfunc(-1,0);
  if (!(CHK_BIT(Parties[0].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[1].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
        UDBOG(&Parties[0].Member[0]->CurrentHp,&Parties[1].Damage);
        } else {
        Parties[1].Damage = 0;
        }
        Parties[1].Turn->PP--;
        move_result(1);
        MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc](2,1);
          }
        else if (MoveList[Parties[1].Turn->Move].Category == 2) {
        Parties[1].Damage = (((((2 * Parties[1].Member[0]->Level / 5 + 2) * (Parties[1].Member[0]->SpA*tt(Parties[1].Crit && (Parties[1].Member[0]->StatBoosts[2] < 0),1,statboostmult(Parties[1].Member[0]->StatBoosts[2]))) * MoveList[Parties[1].Turn->Move].BP / (Parties[0].Member[0]->SpD*tt(Parties[1].Crit && (Parties[0].Member[0]->StatBoosts[3] > 0),1,statboostmult(Parties[0].Member[0]->StatBoosts[3])))) / 50) + 2) * Parties[1].STAB * TypeChart[MoveList[Parties[1].Turn->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Parties[1].Turn->Move].Type][Parties[0].Member[0]->Poke->Type2] * ((rand() % 16) + 85) / 100) * Parties[1].TemporaryMult * tt(Parties[1].Crit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc](1,1);
        ItemList[Parties[1].Member[0]->Item].itemfunc(1,1);
        ItemList[Parties[0].Member[0]->Item].itemfunc(-1,0);
  if (!(CHK_BIT(Parties[0].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[1].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
        UDBOG(&Parties[0].Member[0]->CurrentHp,&Parties[1].Damage);
    } else {
    Parties[1].Damage = 0;
    }
        Parties[1].Turn->PP--;
         move_result(1);
        MOVE_FUNC_LIST[MoveList[Parties[1].Turn->Move].movefunc](2,1);
          }
          }
      } else {
        if (Parties[1].Member[0]->Non_Volatile_Status == 5) Parties[1].Member[0]->Counter = 0; 
        ResetBoosts(Parties[1].Member[0]);
        CLEAR_EFFECTS(1);
        CLEAR_EFFECT_COUNTERS(1);
        Switch(1,Parties[1].SwitchSave);
        printf("The Enemy switched out to %s\n",Parties[1].Member[0]->Poke->Name);
          }
          printf("\n");
          }
  }
}