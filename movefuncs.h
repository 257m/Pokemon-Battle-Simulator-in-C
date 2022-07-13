int Nothingf(unsigned char et, bool eop) {
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
  if (rand() % 100 < YourTurn->Move->AE[0]) {
    EnemyParty.P1->Non_Volatile_Status = 1;
  }
    } else if (eop == 1) {
  if (rand() % 100 < YourTurn->Move->AE[0]) {
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
  } else if (eop == 1) {
    PlayerParty.P1->Non_Volatile_Status = 3;
  }
  }
  return 0;
}