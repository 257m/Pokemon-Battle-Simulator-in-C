void NoAbilityf(char et,bool eop) {
}

void TypeBasedBoost(char et,bool eop) {
  if (et == 1) {
  if (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] == MoveList[Parties[eop].Turn->Move].Type) {
  if (Parties[eop].Member[0]->CurrentHp <= (Parties[eop].Member[0]->Hp/AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1])) {
    TemporaryMults[eop] *= 1.5;
  }
    }
    }
}

void StatDecreaseImmunity(char et,bool eop) {
}

gpf ABILITY_FUNC_LIST [] = {&NoAbilityf,&TypeBasedBoost,&StatDecreaseImmunity};