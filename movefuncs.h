void printBoosts(unsigned char Stat,char num,bool eop) {
  if (!eop) {
    if (num > 0) {
    if (Stat == 0) {
    printf("Your %s's Attack rose by %d stages\n",PlayerParty.P1->Poke->Name,num);
      }
    else if (Stat == 1) {
    printf("Your %s's Defense rose by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 2) {
    printf("Your %s's Special Attack rose by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 3) {
    printf("Your %s's Speical Defense rose by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 4) {
    printf("Your %s's Speed rose by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 5) {
    printf("Your %s's Accuracy rose by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 6) {
    printf("Your %s's Evasion rose by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 7) {
    printf("Your %s's Crit Chance rose by %d stages\n",PlayerParty.P1->Poke->Name,num);
    } 
    } else if (num < 0) {
      if (Stat == 0) {
    printf("Your %s's Attack fell by %d stages\n",PlayerParty.P1->Poke->Name,num);
      }
    else if (Stat == 1) {
    printf("Your %s's Defense fell by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 2) {
    printf("Your %s's Special Attack fell by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 3) {
    printf("Your %s's Speical Defense fell by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 4) {
    printf("Your %s's Speed fell by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 5) {
    printf("Your %s's Accuracy fell by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 6) {
    printf("Your %s's Evasion fell by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
    else if (Stat == 7) {
    printf("Your %s's Crit Chance fell by %d stages\n",PlayerParty.P1->Poke->Name,num);
    }
      }
  } else {
    if (num > 0) {
    if (Stat == 0) {
    printf("Your %s's Attack rose by %d stages\n",EnemyParty.P1->Poke->Name,num);
      }
    else if (Stat == 1) {
    printf("Your %s's Defense rose by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 2) {
    printf("Your %s's Special Attack rose by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 3) {
    printf("Your %s's Speical Defense rose by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 4) {
    printf("Your %s's Speed rose by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 5) {
    printf("Your %s's Accuracy rose by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 6) {
    printf("Your %s's Evasion rose by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 7) {
    printf("Your %s's Crit Chance rose by %d stages\n",EnemyParty.P1->Poke->Name,num);
    } 
    } else if (num < 0) {
      if (Stat == 0) {
    printf("Your %s's Attack fell by %d stages\n",EnemyParty.P1->Poke->Name,num);
      }
    else if (Stat == 1) {
    printf("Your %s's Defense fell by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 2) {
    printf("Your %s's Special Attack fell by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 3) {
    printf("Your %s's Speical Defense fell by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 4) {
    printf("Your %s's Speed fell by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 5) {
    printf("Your %s's Accuracy fell by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 6) {
    printf("Your %s's Evasion fell by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
    else if (Stat == 7) {
    printf("Your %s's Crit Chance fell by %d stages\n",EnemyParty.P1->Poke->Name,num);
    }
  }
}
  }


void Boost(unsigned char stat,char boostrate,struct MyPokemon* pokemon) {
  pokemon->StatBoosts[stat] += boostrate;
  if (pokemon->StatBoosts[stat] > 6) {
    pokemon->StatBoosts[stat] = 6;
  } else if (pokemon->StatBoosts[stat] < -6) {
    pokemon->StatBoosts[stat] = -6;
  }
}

void Boostandprint(unsigned char stat,char boostrate,struct MyPokemon* pokemon,bool eop) {
  pokemon->StatBoosts[stat] += boostrate;
  if (pokemon->StatBoosts[stat] > 6) {
    pokemon->StatBoosts[stat] = 6;
    printf("%s's %s can't go any higher\n",pokemon->Poke->Name,Stagenames[stat]);
  } else if (pokemon->StatBoosts[stat] < -6) {
    pokemon->StatBoosts[stat] = -6;
    printf("%s's %s can't go any lower\n",pokemon->Poke->Name,Stagenames[stat]);
  } else {
    if (!eop) {
    if (boostrate > 0) {
    printf("%s's %s rose by %d stages\n",pokemon->Poke->Name,Stagenames[stat],boostrate);
    } else if (boostrate < 0) {
    printf("%s's %s fell by %d stages\n",pokemon->Poke->Name,Stagenames[stat],boostrate);
    }
      } else {
      if (boostrate > 0) {
    printf("The opposing %s's %s rose by %d stages\n",pokemon->Poke->Name,Stagenames[stat],boostrate);
    } else if (boostrate < 0) {
    printf("The opposing %s's %s fell by %d stages\n",pokemon->Poke->Name,Stagenames[stat],boostrate);
    }
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
  return 0;
}
void Strugglef(unsigned char et, bool eop) {
  YourTurn->PP++;
  if (et == 2) {
    if (eop == 0) {
      PlayerParty.P1->CurrentHp -= PlayerParty.P1->Hp/4;
    } else {
      EnemyParty.P1->CurrentHp -= EnemyParty.P1->Hp/4;
    }
  }
  return 0;
}
void Scratchf(unsigned char et, bool eop) {
  return 0;
}
void Water_Gunf(unsigned char et, bool eop) {
  return 0;
}
void Vine_Whipf(unsigned char et, bool eop) {
  return 0;
}
void Emberf(unsigned char et, bool eop) {
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
void Quick_Attackf(unsigned char et, bool eop) {
  return 0;
}
void Super_Attackf(unsigned char et, bool eop) {
  return 0;
}
void Stone_Edgef(unsigned char et, bool eop) {
  return 0;
}
void Gustf(unsigned char et, bool eop) {
  return 0;
}
void Thunder_Shockf(unsigned char et, bool eop) {
  return 0;
}
void Thunder_Wavef(unsigned char et, bool eop) {
  if (et == 2) {
  if (eop == 0) {
    if (EnemyParty.P1->Non_Volatile_Status == 0) EnemyParty.P1->Non_Volatile_Status = 3;
  } else {
    if (PlayerParty.P1->Non_Volatile_Status == 0) PlayerParty.P1->Non_Volatile_Status = 3;
  }
  }
  return 0;
}

void Swords_Dancef(unsigned char et, bool eop) {
  if (et == 2) {
    if (eop == 0) {
      Boostandprint(0,2,PlayerParty.P1,0);
    } else {
      Boostandprint(0,2,EnemyParty.P1,1);
    }
  }
  return 0;
  }

void Dragon_Dancef(unsigned char et,bool eop) {
  if (et == 2) {
    if (eop == 0) {
      Boostandprint(0,1,PlayerParty.P1,0);
      Boostandprint(4,1,PlayerParty.P1,0);
    } else {
      Boostandprint(0,1,EnemyParty.P1,1);
      Boostandprint(4,1,EnemyParty.P1,1);
    }
  }
  return 0;
}

void Will_O_Wispf(unsigned char et,bool eop) {
  if (et == 2) {
    if (eop == 0) {
     if (EnemyParty.P1->Poke->Type1 != 2 && EnemyParty.P1->Poke->Type1 != 2 && EnemyParty.P1->Non_Volatile_Status == 0) EnemyParty.P1->Non_Volatile_Status = 1;
    } else {
     if (PlayerParty.P1->Poke->Type1 != 2 && PlayerParty.P1->Poke->Type2 != 2 && PlayerParty.P1->Non_Volatile_Status == 0) PlayerParty.P1->Non_Volatile_Status = 1;
    }
  }
  return 0;
}

void Sporef(unsigned char et,bool eop) {
  if (et == 2) {
    if (eop == 0) {
     if (EnemyParty.P1->Non_Volatile_Status == 0) EnemyParty.P1->Non_Volatile_Status = 4;
    } else {
     if (PlayerParty.P1->Non_Volatile_Status == 0) PlayerParty.P1->Non_Volatile_Status = 4;
    }
  }
  return 0;
}

void Toxicf(unsigned char et,bool eop) {
  if (et == 2) {
    if (eop == 0) {
     if (EnemyParty.P1->Poke->Type1 != 8 && EnemyParty.P1->Poke->Type2 != 8 && EnemyParty.P1->Poke->Type1 != 17 && EnemyParty.P1->Poke->Type2 != 17 && EnemyParty.P1->Non_Volatile_Status == 0) EnemyParty.P1->Non_Volatile_Status = 5;
    } else {
     if (PlayerParty.P1->Poke->Type1 != 8 && PlayerParty.P1->Poke->Type2 != 8 && PlayerParty.P1->Poke->Type1 != 17 && PlayerParty.P1->Poke->Type2 != 17 && PlayerParty.P1->Non_Volatile_Status == 0) PlayerParty.P1->Non_Volatile_Status = 5;
    }
  }
  if (et == 3) {
    if (!eop) {
      if (PlayerParty.P1->Poke->Type1 == 8 || PlayerParty.P1->Poke->Type2 == 8) PlayerHit = 1;
    } else {
      if (EnemyParty.P1->Poke->Type1 == 8 || EnemyParty.P1->Poke->Type2 == 8) EnemyHit = 1;
    }
  }
  return 0;
}

void Freezef(unsigned char et,bool eop) {
  if (et == 2) {
    if (!eop) {
      if (EnemyParty.P1->Non_Volatile_Status == 0) EnemyParty.P1->Non_Volatile_Status = 6;
    } else {
      if (PlayerParty.P1->Non_Volatile_Status == 0) PlayerParty.P1->Non_Volatile_Status = 6;
    }
  }
  return 0;
}

void Bulk_Upf(unsigned char et,bool eop) {
  if (et == 2) {
    if (eop == 0) {
      Boostandprint(0,1,PlayerParty.P1,0);
      Boostandprint(1,1,PlayerParty.P1,0);
    } else {
      Boostandprint(0,1,EnemyParty.P1,1);
      Boostandprint(1,1,EnemyParty.P1,1);
    }
  }
  return 0;
}