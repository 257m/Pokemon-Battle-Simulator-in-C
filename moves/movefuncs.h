void Boost(unsigned char stat,char boostrate,struct MyPokemon* pokemon) {
  pokemon->StatBoosts[stat] += boostrate;
  if (pokemon->StatBoosts[stat] > 6) {
    pokemon->StatBoosts[stat] = 6;
  } else if (pokemon->StatBoosts[stat] < -6) {
    pokemon->StatBoosts[stat] = -6;
  }
}

void Boostandprint(unsigned char stat,char boostrate,struct MyPokemon* pokemon,bool eop) {
  if (boostrate == 0) return;
  if (pokemon->StatBoosts[stat] >= 6) {
    pokemon->StatBoosts[stat] = 6;
    printf("%s%s's %s can't go any higher\n",EOPTEXT[eop],POKEMONDEX[pokemon->Poke].Name,Stagenames[stat]);
  } else if (pokemon->StatBoosts[stat] <= -6) {
    pokemon->StatBoosts[stat] = -6;
    printf("%s%s's %s can't go any lower\n",EOPTEXT[eop],POKEMONDEX[pokemon->Poke].Name,Stagenames[stat]);
  } else {
    if (boostrate > 0) {
    if (pokemon->StatBoosts[stat] + boostrate > 6) boostrate = pokemon->StatBoosts[stat] + boostrate - 6;
    pokemon->StatBoosts[stat] += boostrate;
    printf("%s%s's %s rose by %d stages\n",EOPTEXT[eop],POKEMONDEX[pokemon->Poke].Name,Stagenames[stat],boostrate);
    } else if (boostrate < 0) {
    if (pokemon->StatBoosts[stat] + boostrate < -6) boostrate = pokemon->StatBoosts[stat] + boostrate + 6;
    pokemon->StatBoosts[stat] += boostrate;
    printf("%s%s's %s fell by %d stages\n",EOPTEXT[eop],POKEMONDEX[pokemon->Poke].Name,Stagenames[stat],boostrate*-1);
    }
      }
  }

void BoostChance(unsigned char statc,char boostratec,struct MyPokemon* pokemonc,unsigned char Chance) {
  if (map2(rand(),100,RAND_MAX) < Chance) {
    Boost(statc,boostratec,pokemonc);
  }
};

void ResetBoosts(struct MyPokemon* pokemon) {
  pokemon->StatBoosts[0] = 0;
  pokemon->StatBoosts[1] = 0;
  pokemon->StatBoosts[2] = 0;
  pokemon->StatBoosts[3] = 0;
  pokemon->StatBoosts[4] = 0;
  pokemon->StatBoosts[5] = 0;
  pokemon->StatBoosts[6] = 0;
  pokemon->StatBoosts[7] = 0;
}

char StatusImmunity(unsigned char status,bool eop) {
  if (status == STATUS_BURN && (POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1 == FIRE || POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2 == FIRE)) return 0;
  else if ((status == STATUS_TOXIC || status == STATUS_POISON) && (POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1 == POISON || POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2 == POISON || POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1 == STEEL || POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2 == STEEL)) return 0;
  else if (CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_POWDER_MOVE) && (POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1 == GRASS || POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2 == GRASS)) return 0;
  else if  ((status == STATUS_PARALYSIS) && (POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1 == ELECTRIC || POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2 == ELECTRIC || (Parties[eop].Turn->Move == Thunder_Wave && (POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1 == GROUND || POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2 == GROUND)))) return 0;
  else if ((status == STATUS_FREEZE) && (POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1 == ICE || POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2 == ICE)) return 0;
  return 1;
}

void Nothingf(char et, bool eop) {
}

void Strugglef(char et, bool eop) {
  Parties[eop].Turn->PP = 1;
  if (et == 2) {
      Parties[eop].Member[0]->CurrentHp -= Parties[0].Member[0]->Hp/4;
  }
}

void OtherBoost(char et,bool eop) {
  char temp;
  char mult;
  bool soo = eop;
  if (CHK_BIT(MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[4],7)) {
    soo = !eop;
    if (Parties[!eop].Dead) return;
    }
  if (et == 2) {
  if (!(CHK_BIT(Parties[!eop].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED) && soo)) {
  if (((Parties[eop].TemporaryMult == 0) || TypeChart[MoveList[Parties[eop].Turn->Move].Type][POKEMONDEX[Parties[soo].Member[0]->Poke].Type1] * TypeChart[MoveList[Parties[eop].Turn->Move].Type][POKEMONDEX[Parties[soo].Member[0]->Poke].Type2] <= 0) && CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_TYPE_IMMUNITY_AFFECTED) && soo == !eop) return;
 if (rand() < RAND_MAX*(((double)(((unsigned char)(MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[4] << 1)) >> 1))/100)) {  
    for (int i = 0; i < 8;i++) {  
    temp = MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[i/2];
    mult = 1;
    if (i % 2 == 0) {
      if(CHK_BIT(MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[i/2],7)) {
        CLR_BIT(temp,7);
        mult = -1;
      }
      if (!((((temp >> 4)*mult) < 0) && (AbilityList[Parties[soo].Member[0]->Ability].abilityfunc == AF_IMMUNE_TO_STAT_DECREASE) && CHK_BIT(AbilityList[Parties[soo].Member[0]->Ability].GNRL_PURPOSE[0],i) && CHK_BIT(AbilityList[Parties[soo].Member[0]->Ability].GNRL_PURPOSE[1],soo))) {
      Boostandprint(i,(temp >> 4)*mult,Parties[soo].Member[0],soo);
        }
      } else {
      if(CHK_BIT(MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[i/2],3)) {
        CLR_BIT(temp,3);
        mult = -1;
      }
      if (!((((temp-((temp >> 4) << 4))*mult) < 0) && (AbilityList[Parties[soo].Member[0]->Ability].abilityfunc == AF_IMMUNE_TO_STAT_DECREASE) && CHK_BIT(AbilityList[Parties[soo].Member[0]->Ability].GNRL_PURPOSE[0],i) && CHK_BIT(AbilityList[Parties[soo].Member[0]->Ability].GNRL_PURPOSE[1],soo))) {
      Boostandprint(i,(temp-((temp >> 4) << 4))*mult,Parties[soo].Member[0],soo);
        }
      }
    }
  }
}
    }
  }

void OtherStatus(char et,bool eop) {
if (et == 2) {
  if (!Parties[!eop].Dead) {
  if (!(CHK_BIT(Parties[!eop].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
  if (((Parties[eop].TemporaryMult == 0) || TypeChart[MoveList[Parties[eop].Turn->Move].Type][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1] * TypeChart[MoveList[Parties[eop].Turn->Move].Type][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2] <= 0) && CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_TYPE_IMMUNITY_AFFECTED)) return;
if (rand() < RAND_MAX*(((double)(MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[1])/100))) {  
    if ((StatusImmunity(MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[0],eop) || !CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_TYPE_IMMUNITY_AFFECTED)) && Parties[!eop].Member[0]->Non_Volatile_Status == 0) {
    if (MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[0] < STATE_CONFUSION) {
    Parties[!eop].Member[0]->Non_Volatile_Status = MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[0];
      } else {
      if (MoveList[Parties[eop].Turn->Move].GNRL_PURPOSE[0] == STATE_CONFUSION) {
        SET_BIT(Parties[!eop].EFFECT_FLAGS[0],EFFECT_CONFUSION);
        if (Parties[!eop].EFFECT_COUNTERS[EFFECT_CONFUSION] == 0) Parties[!eop].EFFECT_COUNTERS[EFFECT_CONFUSION] = (rand() % 4) + 2;
        }
      else {
        Parties[!eop].Flinch = 1;
      }
      }
      }
  }
  }
  }
  }
}

void ProtectingMove(char et,bool eop) {
  if (et == 1) {
  if (rand() < (RAND_MAX/pow(2,Parties[eop].EFFECT_COUNTERS[EFFECT_PROTECT]))+1) {
  if (First == !eop) {
    SET_BIT(Parties[eop].EFFECT_FLAGS[0],EFFECT_PROTECT);
  Parties[eop].EFFECT_COUNTERS[EFFECT_PROTECT]++;
  } else {
  Parties[eop].EFFECT_COUNTERS[EFFECT_PROTECT] = 0;
    printf("But it failed!\n");
  }
    } else {
  Parties[eop].EFFECT_COUNTERS[EFFECT_PROTECT] = 0;
    printf("But it failed!\n");
    }
    } else if (et == 5) {
    CLR_BIT(Parties[eop].EFFECT_FLAGS[0],EFFECT_PROTECT);
    }
}

void RoarFunc(char et,bool eop) {
  char randswitch;
  if (et == 2) {
  if (Parties[!eop].Dead) return;
  if (!(CHK_BIT(Parties[!eop].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[eop].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
    randswitch = 1 + (rand() % ((Parties[!eop].Member[1]->CurrentHp > 0) + (Parties[!eop].Member[2]->CurrentHp > 0) + (Parties[!eop].Member[3]->CurrentHp > 0) + (Parties[!eop].Member[4]->CurrentHp > 0) + (Parties[!eop].Member[5]->CurrentHp > 0)));
    while(1) {
      if (Parties[!eop].Member[randswitch]->CurrentHp > 0) break;
      randswitch++;
    }
    ResetBoosts(Parties[!eop].Member[0]);
    CLEAR_EFFECTS(!eop);
    Switch(!eop,randswitch);
    printf("%s was dragged out!\n",POKEMONDEX[Parties[!eop].Member[0]->Poke].Name);
  } 
    }
}

gpf MOVE_FUNC_LIST [] = {&Nothingf,&Strugglef,&OtherBoost,&OtherStatus,&ProtectingMove,&RoarFunc};