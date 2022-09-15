void NoAbilityf(char et,bool eop) {
}

void TypeBasedBoost(char et,bool eop) {
  if (et == 1) {
  if (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] == MoveList[Parties[eop].Turn->Move].Type) {
  if (Parties[eop].Member[0]->CurrentHp <= (Parties[eop].Member[0]->Hp/AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1])) {
    Parties[eop].TemporaryMult *= 1.5;
  }
    }
    }
}

void StatDecreaseImmunity(char et,bool eop) {
}

void TypeChange(char et,bool eop) {
  if (et == 2) {
    if (Parties[eop].MoveTempType == AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] >> 3) {
    if (CHK_BIT(AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1],5)) {
    Parties[eop].TemporaryMult *= TypeChart[(((unsigned char)(AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] << 5)) >> 3) + (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1] >> 6)][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1] * TypeChart[(((unsigned char)(AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] << 5)) >> 3) + (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1] >> 6)][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2];
    if (POKEMONDEX[Parties[eop].Member[0]->Poke].Type1 == (((unsigned char)(AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] << 5)) >> 3) + (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1] >> 6) || POKEMONDEX[Parties[eop].Member[0]->Poke].Type2 == (((unsigned char)(AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] << 5)) >> 3) + (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1] >> 6)) Parties[eop].TemporaryMult *= 1.5;
    } else {
    Parties[eop].MoveTempType = ((AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[0] << 5) >> 3) + (AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1] >> 6);
      }
      Parties[eop].TemporaryMult *= 1 + (((double)((((unsigned char)(AbilityList[Parties[eop].Member[0]->Ability].GNRL_PURPOSE[1] << 3)) >> 3)))/20);
      }
  }
}

gpf ABILITY_FUNC_LIST [] = {&NoAbilityf,&TypeBasedBoost,&StatDecreaseImmunity,&TypeChange};