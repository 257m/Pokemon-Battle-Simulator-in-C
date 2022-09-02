void NoAbilityf(char et,bool eop) {
}

void TypeBasedBoost(char et,bool eop) {
  if (et == 1) {
  if (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] == MoveList[Turns[eop]->Move].Type) {
  if ((Parties[eop].Member[0]->CurrentHp/Parties[eop].Member[0]->Hp) <= (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1]/100)) {
    TemporaryMults[eop] *= 1.5;
  }
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

gpf ABILITY_FUNC_LIST [] = {&NoAbilityf,&TypeBasedBoost,&Big_Pecksf};