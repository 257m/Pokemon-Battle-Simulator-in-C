void Boost(unsigned char stat,char boostrate,struct MyPokemon* pokemon) {
  pokemon->StatBoosts[stat] += boostrate;
  if (pokemon->StatBoosts[stat] > 6) {
    pokemon->StatBoosts[stat] = 6;
  } else if (pokemon->StatBoosts[stat] < -6) {
    pokemon->StatBoosts[stat] = -6;
  }
}

void BoostChance(unsigned char statc,char boostratec,struct MyPokemon* pokemonc,unsigned char Chance) {
  if (map2(rand(),100,RAND_MAX) < Chance) {
    Boost(statc,boostratec,pokemonc);
  }
};

int Nothingf(unsigned char et, bool eop) {
  return 0;
}
int Strugglef(unsigned char et, bool eop) {
  YourTurn->PP++;
  if (et == 2) {
    if (eop == 0) {
      PlayerParty.P1->CurrentHp -= Damage/4;
    } else {
      EnemyParty.P1->CurrentHp -= EnemyDamage/4;
    }
  }
  return 0;
}
int Scratchf(unsigned char et, bool eop) {
  return 0;
}
int Water_Gunf(unsigned char et, bool eop) {
  return 0;
}
int Vine_Whipf(unsigned char et, bool eop) {
  return 0;
}
int Emberf(unsigned char et, bool eop) {
  if (et == 2) {
  if (eop == 0) {
  if (map2(rand(),100,RAND_MAX) < 10) {
    EnemyParty.P1->Non_Volatile_Status = 1;
  }
    } else if (eop == 1) {
  if (map2(rand(),100,RAND_MAX) < 10) {
    PlayerParty.P1->Non_Volatile_Status = 1;
  }
    }
    }
  return 0;
}
int Quick_Attackf(unsigned char et, bool eop) {
  return 0;
}
int Super_Attackf(unsigned char et, bool eop) {
  return 0;
}
int Stone_Edgef(unsigned char et, bool eop) {
  return 0;
}
int Gustf(unsigned char et, bool eop) {
  return 0;
}
int Thunder_Shockf(unsigned char et, bool eop) {
  return 0;
}
int Thunder_Wavef(unsigned char et, bool eop) {
  if (et == 2) {
  if (eop == 0) {
    EnemyParty.P1->Non_Volatile_Status = 3;
  } else {
    PlayerParty.P1->Non_Volatile_Status = 3;
  }
    return 0;
  }
  return 0;
}

int Swords_Dancef(unsigned char et, bool eop) {
  if (et == 1) {
    if (eop == 0) {
      Boost(0,2,PlayerParty.P1);
    } else {
      Boost(0,2,EnemyParty.P1);
    }
  }
  return 0;
  }

int Dragon_Dancef(unsigned char et,bool eop) {
  if (et == 1) {
    if (eop == 0) {
      Boost(0,1,PlayerParty.P1);
      Boost(4,1,PlayerParty.P1);
    } else {
      Boost(0,1,EnemyParty.P1);
      Boost(4,1,EnemyParty.P1);
    }
  }
  return 0;
}