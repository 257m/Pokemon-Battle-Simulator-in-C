void NoAbilityf(char et,bool eop) {
}


void Overgrowf(char et,bool eop) {
  if (!eop) {
  if (et == 1) {
  if (PlayerParty.P1->CurrentHp <= PlayerParty.P1->Hp/3 && MoveList[YourTurn->Move].Type == 5) PlayerTM*1.5;
    }
    } else {
  if (et == 1) {
  if (EnemyParty.P1->CurrentHp <= EnemyParty.P1->Hp/3 && MoveList[EnemyTurn->Move].Type == 5) EnemyTM*1.5;
    }
  }
  }

void Blazef(char et,bool eop) {
  if (!eop) {
  if (et == 1) {
  if (PlayerParty.P1->CurrentHp <= PlayerParty.P1->Hp/3 && MoveList[YourTurn->Move].Type == 2) PlayerTM*1.5;
    }
    } else {
    if (et == 1) {
  if (EnemyParty.P1->CurrentHp <= EnemyParty.P1->Hp/3 && MoveList[EnemyTurn->Move].Type == 2) EnemyTM*1.5;
      }
  }
}
  
void Torrentf(char et,bool eop) {
  if (!eop) {
  if (et == 1) {
  if (PlayerParty.P1->CurrentHp <= PlayerParty.P1->Hp/3 && MoveList[YourTurn->Move].Type == 3) PlayerTM*1.5;
    }
    } else {
    if (et == 1) {
    if (EnemyParty.P1->CurrentHp <= EnemyParty.P1->Hp/3 && MoveList[EnemyTurn->Move].Type == 3) EnemyTM*1.5;
      }
    }
  }