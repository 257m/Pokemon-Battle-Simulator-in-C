gpf EFFECT_FUNC_LIST [] = {&UTL_ATTACKF,&UTL_DEFENSEF,&UTL_SP_ATKF,&UTL_SP_DEFF,&UTL_SPEEDF,&UTL_ACCURACYF,&UTL_EVASIONF,&UTL_CRIT_CHANCEF,&LEECH_SEEDF,&PERISH_SONGF};

void ACTIVATE_EFFECTS(char et,bool eop) {
  for (int i = 0;i < 10;i++) {
  if (CHK_BIT(Parties[0].EFFECT_FLAGS[0],i)) EFFECT_FUNC_LIST[i](et,eop);
  }
}

void CLEAR_EFFECTS(bool eop) {
  for (int i = 0;i < 64;i++) {
    CLR_BIT(Parties[0].EFFECT_FLAGS[0],i);
  }
}