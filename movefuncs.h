void Boost(unsigned char stat,char boostrate,struct MyPokemon* pokemon) {
  pokemon->StatBoosts[stat] += boostrate;
  if (pokemon->StatBoosts[stat] > 6) {
    pokemon->StatBoosts[stat] = 6;
  } else if (pokemon->StatBoosts[stat] < -6) {
    pokemon->StatBoosts[stat] = -6;
  }
}

void Boostandprint(unsigned char stat,char boostrate,struct MyPokemon* pokemon,bool eop) {
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

void Nothingf(unsigned char et, bool eop) {
}

void Strugglef(unsigned char et, bool eop) {
  Turns[eop]->PP++;
  if (et == 2) {
      Parties[eop].Member[0]->CurrentHp -= Parties[0].Member[0]->Hp/4;
  }
}

void Emberf(unsigned char et, bool eop) {
  if (et == 2) {
  if (map2(rand(),100,RAND_MAX) < 10) {
  if (Parties[!eop].Member[0]->Non_Volatile_Status == 0) Parties[!eop].Member[0]->Non_Volatile_Status = 1;
    }
    }
}

void Thunder_Wavef(unsigned char et, bool eop) {
  if (et == 2) {
    if (Parties[!eop].Member[0]->Non_Volatile_Status == 0) Parties[!eop].Member[0]->Non_Volatile_Status = 3;
  }
}

void Will_O_Wispf(unsigned char et,bool eop) {
  if (et == 2) {
     if (Parties[!eop].Member[0]->Poke->Type1 != 2 && Parties[!eop].Member[0]->Poke->Type1 != 2 && Parties[!eop].Member[0]->Non_Volatile_Status == 0) Parties[!eop].Member[0]->Non_Volatile_Status = 1;
  }
}

void Sporef(unsigned char et,bool eop) {
  if (et == 2) {
     if (Parties[!eop].Member[0]->Non_Volatile_Status == 0) Parties[!eop].Member[0]->Non_Volatile_Status = 4;
  }
}

void Toxicf(unsigned char et,bool eop) {
  if (et == 2) {
     if (Parties[!eop].Member[0]->Poke->Type1 != POISON && Parties[!eop].Member[0]->Poke->Type2 != POISON && Parties[!eop].Member[0]->Poke->Type1 != STEEL && Parties[!eop].Member[0]->Poke->Type2 != STEEL && Parties[!eop].Member[0]->Non_Volatile_Status == 0) Parties[!eop].Member[0]->Non_Volatile_Status = 5;
  }
  if (et == 3) {
      if (Parties[eop].Member[0]->Poke->Type1 == POISON || Parties[eop].Member[0]->Poke->Type2 == POISON) PlayerHit = 1;
  }
}

void Freezef(unsigned char et,bool eop) {
  if (et == 2) {
      if (Parties[!eop].Member[0]->Non_Volatile_Status == 0) Parties[!eop].Member[0]->Non_Volatile_Status = 6;
  }
}

void SelfBoost(unsigned char et,bool eop) {
  char temp;
  char mult;
  if (et == 2) {
    for (int i = 0; i < 8;i++) {  
    temp = MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2];
    mult = 1;
    if (i % 2 == 0) {
      if(CHK_BIT(MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2],7)) {
        CLR_BIT(temp,7);
        mult = -1;
      }
      Boostandprint(i,(temp >> 4)*mult,Parties[eop].Member[0],eop);
      } else {
      if(CHK_BIT(MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2],3)) {
        CLR_BIT(temp,3);
        mult = -1;
      }
      Boostandprint(i,(temp-((temp >> 4) << 4))*mult,Parties[eop].Member[0],eop);
      }
    }
  }
}

void OtherBoost(unsigned char et,bool eop) {
  char temp;
  char mult;
  if (et == 2) {
    for (int i = 0; i < 8;i++) {  
    temp = MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2];
    mult = 1;
    if (i % 2 == 0) {
      if(CHK_BIT(MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2],7)) {
        CLR_BIT(temp,7);
        mult = -1;
      }
      Boostandprint(i,(temp >> 4)*mult,Parties[!eop].Member[0],!eop);
      } else {
      if(CHK_BIT(MoveList[Turns[eop]->Move].GNRL_PURPOSE[i/2],3)) {
        CLR_BIT(temp,3);
        mult = -1;
      }
      Boostandprint(i,(temp-((temp >> 4) << 4))*mult,Parties[!eop].Member[0],!eop);
      }
    }
  }
}

void OtherStatus(unsigned char et,bool eop) {
if (et == 2) {
unsigned char temp;
if (map2(rand(),100,RAND_MAX) < MoveList[Turns[eop]->Move].GNRL_PURPOSE[1]) {
  if (MoveList[Turns[eop]->Move].GNRL_PURPOSE[0] != STATE_CONFUSION) {
    Parties[!eop].Member[0]->Non_Volatile_Status = (unsigned char)MoveList[Turns[eop]->Move].GNRL_PURPOSE[0];
    }
  }
  }
}

gpf MOVE_FUNC_LIST [] = {&Nothingf,&Strugglef,&SelfBoost,&OtherBoost,&OtherStatus};