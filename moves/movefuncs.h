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
  char EOPTEXT [16] = "";
  if (eop) strcpy(EOPTEXT,"The opposing ");
  if (pokemon->StatBoosts[stat] >= 6) {
    pokemon->StatBoosts[stat] = 6;
    printf("%s%s's %s can't go any higher\n",EOPTEXT,pokemon->Poke->Name,Stagenames[stat]);
  } else if (pokemon->StatBoosts[stat] <= -6) {
    pokemon->StatBoosts[stat] = -6;
    printf("%s%s's %s can't go any lower\n",EOPTEXT,pokemon->Poke->Name,Stagenames[stat]);
  } else {
    if (boostrate > 0) {
    if (pokemon->StatBoosts[stat] + boostrate > 6) boostrate = pokemon->StatBoosts[stat] + boostrate - 6;
    pokemon->StatBoosts[stat] += boostrate;
    printf("%s%s's %s rose by %d stages\n",EOPTEXT,pokemon->Poke->Name,Stagenames[stat],boostrate);
    } else if (boostrate < 0) {
    if (pokemon->StatBoosts[stat] + boostrate < -6) boostrate = pokemon->StatBoosts[stat] + boostrate + 6;
    pokemon->StatBoosts[stat] += boostrate;
    printf("%s%s's %s fell by %d stages\n",EOPTEXT,pokemon->Poke->Name,Stagenames[stat],boostrate*-1);
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
  if (status == STATUS_BURN && (Parties[!eop].Member[0]->Poke->Type1 == FIRE || Parties[!eop].Member[0]->Poke->Type2 == FIRE)) return 0;
  else if ((status == STATUS_TOXIC || status == STATUS_POISON) && (Parties[!eop].Member[0]->Poke->Type1 == POISON || Parties[!eop].Member[0]->Poke->Type2 == POISON || Parties[!eop].Member[0]->Poke->Type1 == STEEL || Parties[!eop].Member[0]->Poke->Type2 == STEEL)) return 0;
  else if (CHK_BIT(MoveList[Turns[eop]->Move].FLAGS,nFLAG_POWDER_MOVE) && (Parties[!eop].Member[0]->Poke->Type1 == GRASS || Parties[!eop].Member[0]->Poke->Type2 == GRASS)) return 0;
  else if  ((status == STATUS_PARALYSIS) && (Parties[!eop].Member[0]->Poke->Type1 == ELECTRIC || Parties[!eop].Member[0]->Poke->Type2 == ELECTRIC || (Turns[eop]->Move == Thunder_Wave && (Parties[!eop].Member[0]->Poke->Type1 == GROUND || Parties[!eop].Member[0]->Poke->Type2 == GROUND)))) return 0;
  else if ((status == STATUS_FREEZE) && (Parties[!eop].Member[0]->Poke->Type1 == ICE || Parties[!eop].Member[0]->Poke->Type2 == ICE)) return 0;
  return 1;
}

void Nothingf(char et, bool eop) {
}

void Strugglef(char et, bool eop) {
  Turns[eop]->PP++;
  if (et == 2) {
      Parties[eop].Member[0]->CurrentHp -= Parties[0].Member[0]->Hp/4;
  }
}

void OtherBoost(char et,bool eop) {
  char temp;
  char mult;
  bool soo = eop;
  if (CHK_BIT(MoveList[Turns[eop]->Move].GNRL_PURPOSE[4],7)) soo = !eop;
  if (et == 2) {
  if ((TypeChart[MoveList[Turns[eop]->Move].Type][Parties[soo].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[eop]->Move].Type][Parties[soo].Member[0]->Poke->Type2] <= 0) && CHK_BIT(MoveList[Turns[eop]->Move].FLAGS,nFLAG_TYPE_IMMUNITY_AFFECTED) && soo) return;
 if (map2(rand(),100,RAND_MAX) < ((MoveList[Turns[eop]->Move].GNRL_PURPOSE[4] << 1) >> 1)) {  
    for (int i = 0; i < 8;i++) {  
    temp = MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2];
    mult = 1;
    if (i % 2 == 0) {
      if(CHK_BIT(MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2],7)) {
        CLR_BIT(temp,7);
        mult = -1;
      }
      if (!((((temp >> 4)*mult) < 0) && (AbilityList[Parties[soo].Member[0]->Ability].abilityfunc == AF_IMMUNE_TO_STAT_DECREASE) && CHK_BIT(AbilityList[Parties[soo].Member[0]->Ability].GNRL_PURPOSE[0],i) && CHK_BIT(AbilityList[Parties[soo].Member[0]->Ability].GNRL_PURPOSE[1],soo))) {
      Boostandprint(i,(temp >> 4)*mult,Parties[soo].Member[0],soo);
        }
      } else {
      if(CHK_BIT(MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2],3)) {
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

void OtherStatus(char et,bool eop) {
if (et == 2) {
  if (TypeChart[MoveList[Turns[eop]->Move].Type][Parties[!eop].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[eop]->Move].Type][Parties[!eop].Member[0]->Poke->Type2] <= 0 && CHK_BIT(MoveList[Turns[eop]->Move].FLAGS,nFLAG_TYPE_IMMUNITY_AFFECTED)) return;
if (map2(rand(),100,RAND_MAX) < MoveList[Turns[eop]->Move].GNRL_PURPOSE[1]) {  
    if ((StatusImmunity(MoveList[Turns[eop]->Move].GNRL_PURPOSE[0],eop) || !CHK_BIT(MoveList[Turns[eop]->Move].FLAGS,nFLAG_TYPE_IMMUNITY_AFFECTED)) && Parties[!eop].Member[0]->Non_Volatile_Status == 0) {
    Parties[!eop].Member[0]->Non_Volatile_Status = MoveList[Turns[eop]->Move].GNRL_PURPOSE[0];
      }
  }
  }
}

void ProtectingMove(char et,bool eop) {
  if (First = !eop) {
    SET_BIT(Parties[eop].EFFECT_FLAGS[0],EFFECT_PROTECT);
  }
}

gpf MOVE_FUNC_LIST [] = {&Nothingf,&Strugglef,&OtherBoost,&OtherStatus,&ProtectingMove};