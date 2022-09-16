void DBOG(bool eop) {
if (Parties[!eop].Member[0]->CurrentHp < Parties[eop].Damage) {
  Parties[eop].Damage = Parties[!eop].Member[0]->CurrentHp;
}
}

void UDBOG(int* hp,int* damage) {
  if (*hp-*damage < 0) *damage = *hp;
  *hp -= *damage;
}

void UDBOG2(int *hp,int damage,bool eop) {
  if (*hp-damage < 0) damage = *hp;
  *hp -= damage;
  printf("It hurt itself in its confusion\n");
  printf("%s%s is at %d/%d\n",EOPTEXT[eop],POKEMONDEX[Parties[eop].Member[0]->Poke].Name,Parties[eop].Member[0]->CurrentHp,Parties[eop].Member[0]->Hp);
}

void ExecuteMove(bool eop) {
    if (!Parties[eop].Dead) {
        if (!Parties[eop].Switching) {
        Parties[eop].Hit = (rand() < RAND_MAX*((double)(MoveList[Parties[eop].Turn->Move].Accuracy*statboostmult(Parties[eop].Member[0]->StatBoosts[5] / statboostmult(Parties[!eop].Member[0]->StatBoosts[6])))/100));
        if (MoveList[Parties[eop].Turn->Move].Accuracy > 100) Parties[eop].Hit = 1;
        Parties[eop].Crit = rand() % CRIT_CHANCE < power2(Parties[eop].Member[0]->StatBoosts[7] + CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_HIGH_CRIT));
        if (Parties[eop].Member[0]->Non_Volatile_Status == STATUS_PARALYSIS) {
          Parties[eop].Para = (rand() % 4 == 0);
          if (Parties[eop].Para) Parties[eop].CanMove = 0;
          }
        else if (Parties[eop].Member[0]->Non_Volatile_Status == STATUS_BURN && MoveList[Parties[eop].Turn->Move].Category == 1) Parties[eop].TemporaryMult /= 2;
        else if (Parties[eop].Member[0]->Non_Volatile_Status == STATUS_SLEEP) {
          if (Parties[eop].Member[0]->Counter == 0) {
          Parties[eop].CanMove = 0; Parties[eop].Sleep = 1;
            } else {
          if (Parties[eop].Member[0]->Counter > 3) {
            Parties[eop].Sleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
              Parties[eop].Sleep = 0;
            } else {
              Parties[eop].CanMove = 0; Parties[eop].Sleep = 1;
            }
          }
          if (Parties[eop].Sleep) Parties[eop].Member[0]->Counter++;
          else {Parties[eop].Member[0]->Counter = 0; Parties[eop].Member[0]->Non_Volatile_Status = 0; printf("%s%s woke up\n",EOPTEXT[eop],POKEMONDEX[Parties[eop].Member[0]->Poke].Name);}
          } else if (Parties[eop].Member[0]->Non_Volatile_Status == STATUS_FREEZE) {
          Parties[eop].Frozen = (map2(rand(),5,RAND_MAX) != 0);
          if (Parties[eop].Frozen) {
            Parties[eop].CanMove = 0;
          }
          else {
          Parties[eop].Member[0]->Non_Volatile_Status = 0;
          printf("%s%s thawed out\n",EOPTEXT[eop],POKEMONDEX[Parties[eop].Member[0]->Poke].Name); 
          }
          }
        if (Parties[eop].Flinch) Parties[eop].CanMove = 0;
        if (CHK_BIT(Parties[eop].EFFECT_FLAGS[0],EFFECT_CONFUSION) && Parties[eop].CanMove) {
        printf("%s%s is confused!\n",EOPTEXT[eop],POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
          if (Parties[eop].EFFECT_COUNTERS[EFFECT_CONFUSION] > 0) {
          if (rand() % 2) {
            Parties[eop].CanMove = 0;
            Parties[eop].Confused = 1;
            UDBOG2(&Parties[eop].Member[0]->CurrentHp,(((((2 * Parties[eop].Member[0]->Level / 5 + 2) * (Parties[eop].Member[0]->Atk*statboostmult(Parties[eop].Member[0]->StatBoosts[0])) * 40 / (Parties[eop].Member[0]->Def*statboostmult(Parties[eop].Member[0]->StatBoosts[1]))) / 50) + 2) * ((rand() % 16) + 85) / 100),eop);
          }
          Parties[eop].EFFECT_COUNTERS[EFFECT_CONFUSION]--;
            }
          else {
            CLR_BIT(Parties[eop].EFFECT_FLAGS[0],EFFECT_CONFUSION);
            printf("%s%s snapped out of its confusion!\n",EOPTEXT[eop],POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
          }
        }
        MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc](3,eop);
        display_move(eop);
      if (Parties[eop].Member[0]->CurrentHp > 0 && Parties[eop].Hit && Parties[eop].CanMove) {
        if (MoveList[Parties[eop].Turn->Move].Category == 0) {
         ABILITY_FUNC_LIST[AbilityList[Parties[eop].Member[0]->Ability].abilityfunc](2,eop);
         MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc](1,eop);
         ItemList[Parties[eop].Member[0]->Item].itemfunc(1,eop);
         ItemList[Parties[!eop].Member[0]->Item].itemfunc(-1,!eop);
         Parties[eop].Turn->PP--;
         move_result(eop);
         MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc](2,eop);
          }
        else if (MoveList[Parties[eop].Turn->Move].Category == 1) {
        ABILITY_FUNC_LIST[AbilityList[Parties[eop].Member[0]->Ability].abilityfunc](2,eop);
        Parties[eop].Damage = (((((2 * Parties[eop].Member[0]->Level / 5 + 2) * (Parties[eop].Member[0]->Atk*tt(Parties[eop].Crit && (Parties[eop].Member[0]->StatBoosts[0] < 0),1,statboostmult(Parties[eop].Member[0]->StatBoosts[0]))) * MoveList[Parties[eop].Turn->Move].BP / (Parties[!eop].Member[0]->Def*tt(Parties[eop].Crit && (Parties[!eop].Member[0]->StatBoosts[1] > 0),1,statboostmult(Parties[!eop].Member[0]->StatBoosts[1])))) / 50) + 2) * tt2(Parties[eop].MoveTempType == POKEMONDEX[Parties[eop].Member[0]->Poke].Type1 || Parties[eop].MoveTempType == POKEMONDEX[Parties[eop].Member[0]->Poke].Type1,1.5,1,&Parties[eop].STAB) * (TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1] * TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2]) * ((rand() % 16) + 85) / 100) * Parties[eop].TemporaryMult * tt(Parties[eop].Crit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc](1,eop);
        ItemList[Parties[eop].Member[0]->Item].itemfunc(1,eop);
        ItemList[Parties[!eop].Member[0]->Item].itemfunc(-1,!eop);
  if (!(CHK_BIT(Parties[!eop].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
        UDBOG(&Parties[!eop].Member[0]->CurrentHp,&Parties[eop].Damage);
    } else {
    Parties[eop].Damage = 0;
    }
        Parties[eop].Turn->PP--;
         move_result(eop);
        MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc](2,eop);
          } else if (MoveList[Parties[eop].Turn->Move].Category == 2) {
        ABILITY_FUNC_LIST[AbilityList[Parties[eop].Member[0]->Ability].abilityfunc](2,eop);
        Parties[eop].Damage = (((((2 * Parties[eop].Member[0]->Level / 5 + 2) * (Parties[eop].Member[0]->SpA*tt(Parties[eop].Crit && (Parties[eop].Member[0]->StatBoosts[2] < 0),1,statboostmult(Parties[eop].Member[0]->StatBoosts[2]))) * MoveList[Parties[eop].Turn->Move].BP / (Parties[!eop].Member[0]->SpD*tt(Parties[eop].Crit && (Parties[!eop].Member[0]->StatBoosts[3] > 0),1,statboostmult(Parties[!eop].Member[0]->StatBoosts[3])))) / 50) + 2) * tt2(Parties[eop].MoveTempType == POKEMONDEX[Parties[eop].Member[0]->Poke].Type1 || Parties[eop].MoveTempType == POKEMONDEX[Parties[eop].Member[0]->Poke].Type1,1.5,1,&Parties[eop].STAB) * TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1] * TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2] * ((rand() % 16) + 85) / 100) * Parties[eop].TemporaryMult * tt(Parties[eop].Crit,1.5,1);
        MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc](1,eop);
        ItemList[Parties[eop].Member[0]->Item].itemfunc(1,eop);
        ItemList[Parties[!eop].Member[0]->Item].itemfunc(-1,!eop);
  if (!(CHK_BIT(Parties[!eop].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
        UDBOG(&Parties[!eop].Member[0]->CurrentHp,&Parties[eop].Damage);
    } else {
    Parties[eop].Damage = 0;
    }
        Parties[eop].Turn->PP--;
         move_result(eop);
        MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc](2,eop);
          }
          }
          }  else {
        if (Parties[eop].Member[0]->Non_Volatile_Status == 5) Parties[eop].Member[0]->Counter = 0; 
         printf("%s, that's enough!\nCome back!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
         ResetBoosts(Parties[eop].Member[0]);
         CLEAR_EFFECTS(eop);
         CLEAR_EFFECT_COUNTERS(eop);
         Switch(eop,Parties[eop].SwitchSave);
         printf("Go! %s!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
      }
        printf("\n");
        }
}