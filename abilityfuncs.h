void NoAbilityf(char et,bool eop) {
}

void Overgrowf(char et,bool eop) {
  if (!eop) {
  if (et == 1) {
  if (Parties[0].Member[0]->CurrentHp <= Parties[0].Member[0]->Hp/3 && MoveList[YourTurn->Move].Type == 5) PlayerTM*1.5;
    }
    } else {
  if (et == 1) {
  if (Parties[1].Member[0]->CurrentHp <= Parties[1].Member[0]->Hp/3 && MoveList[EnemyTurn->Move].Type == 5) EnemyTM*1.5;
    }
  }
  }

void Blazef(char et,bool eop) {
  if (!eop) {
  if (et == 1) {
  if (Parties[0].Member[0]->CurrentHp <= Parties[0].Member[0]->Hp/3 && MoveList[YourTurn->Move].Type == 2) PlayerTM*1.5;
    }
    } else {
    if (et == 1) {
  if (Parties[1].Member[0]->CurrentHp <= Parties[1].Member[0]->Hp/3 && MoveList[EnemyTurn->Move].Type == 2) EnemyTM*1.5;
      }
  }
}
  
void Torrentf(char et,bool eop) {
  if (!eop) {
  if (et == 1) {
  if (Parties[0].Member[0]->CurrentHp <= Parties[0].Member[0]->Hp/3 && MoveList[YourTurn->Move].Type == 3) PlayerTM*1.5;
    }
    } else {
    if (et == 1) {
    if (Parties[1].Member[0]->CurrentHp <= Parties[1].Member[0]->Hp/3 && MoveList[EnemyTurn->Move].Type == 3) EnemyTM*1.5;
      }
    }
  }

void Big_Pecksf(char et,bool eop) {
  if (!eop) {
  SET_BIT(Parties[0].EFFECT_FLAGS[0],EFFECT_UTL_DEFENSE);
  } else {
  SET_BIT(Parties[1].EFFECT_FLAGS[0],EFFECT_UTL_DEFENSE);
  }
}