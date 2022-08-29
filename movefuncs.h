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
  YourTurn->PP++;
  if (et == 2) {
      Parties[eop].Member[0]->CurrentHp -= Parties[0].Member[0]->Hp/4;
  }
}
void Scratchf(unsigned char et, bool eop) {
}
void Water_Gunf(unsigned char et, bool eop) {
}
void Vine_Whipf(unsigned char et, bool eop) {
}
void Emberf(unsigned char et, bool eop) {
  if (et == 2) {
  if (map2(rand(),100,RAND_MAX) < 10) {
  if (Parties[!eop].Member[0]->Non_Volatile_Status == 0) Parties[!eop].Member[0]->Non_Volatile_Status = 1;
    }
    }
}
void Quick_Attackf(unsigned char et, bool eop) {
}
void Super_Attackf(unsigned char et, bool eop) {
}
void Stone_Edgef(unsigned char et, bool eop) {
}
void Gustf(unsigned char et, bool eop) {
}
void Thunder_Shockf(unsigned char et, bool eop) {
}
void Thunder_Wavef(unsigned char et, bool eop) {
  if (et == 2) {
    if (Parties[!eop].Member[0]->Non_Volatile_Status == 0) Parties[!eop].Member[0]->Non_Volatile_Status = 3;
  }
}

void Swords_Dancef(unsigned char et, bool eop) {
  if (et == 2) {
      Boostandprint(0,2,Parties[eop].Member[0],0);
  }
  }

void Dragon_Dancef(unsigned char et,bool eop) {
  if (et == 2) {
      Boostandprint(0,1,Parties[eop].Member[0],0);
      Boostandprint(4,1,Parties[eop].Member[0],0);
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

void Bulk_Upf(unsigned char et,bool eop) {
  if (et == 2) {
      Boostandprint(0,1,Parties[eop].Member[0],0);
      Boostandprint(1,1,Parties[eop].Member[0],0);
  }
}

void Charmf(unsigned char et,bool eop) {
  if (et == 2) {
      Boostandprint(0,-2,Parties[!eop].Member[0],1);
  }
}

void Leerf(unsigned char et,bool eop) {
  if (et == 2) {
  if (!CHK_BIT(Parties[!eop].EFFECT_FLAGS[0],EFFECT_UTL_DEFENSE)) Boostandprint(1,-1,Parties[!eop].Member[0],1);
    }
}