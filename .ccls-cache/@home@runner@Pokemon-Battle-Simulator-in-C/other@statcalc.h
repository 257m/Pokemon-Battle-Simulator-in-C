void StatCalcMon(unsigned char partymember,bool eop) {
      Parties[eop].Member[partymember]->Hp =  ((Parties[eop].Member[partymember]->IVHp + 2 * POKEMONDEX[Parties[eop].Member[partymember]->Poke].Hp + (Parties[eop].Member[partymember]->EVHp/4)) * Parties[eop].Member[partymember]->Level/100 ) + 10 + Parties[eop].Member[partymember]->Level;
  
  Parties[eop].Member[partymember]->Atk = (((Parties[eop].Member[partymember]->IVAtk + 2 * POKEMONDEX[Parties[eop].Member[partymember]->Poke].Atk + (Parties[eop].Member[partymember]->EVAtk/4) ) * Parties[eop].Member[partymember]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[partymember]->Nature].Atk;
  
  Parties[eop].Member[partymember]->Def = (((Parties[eop].Member[partymember]->IVDef + 2 * POKEMONDEX[Parties[eop].Member[partymember]->Poke].Def + (Parties[eop].Member[partymember]->EVDef/4) ) * Parties[eop].Member[partymember]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[partymember]->Nature].Def;
  
  Parties[eop].Member[partymember]->SpA = (((Parties[eop].Member[partymember]->IVSpA + 2 * POKEMONDEX[Parties[eop].Member[partymember]->Poke].SpA + (Parties[eop].Member[partymember]->EVSpA/4) ) * Parties[eop].Member[partymember]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[partymember]->Nature].SpA;
  
  Parties[eop].Member[partymember]->SpD = (((Parties[eop].Member[partymember]->IVSpD + 2 * POKEMONDEX[Parties[eop].Member[partymember]->Poke].SpD + (Parties[eop].Member[partymember]->EVSpD/4) ) * Parties[eop].Member[partymember]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[partymember]->Nature].SpD;

  Parties[eop].Member[partymember]->Spe = (((Parties[eop].Member[partymember]->IVSpe + 2 * POKEMONDEX[Parties[eop].Member[partymember]->Poke].Spe + (Parties[eop].Member[partymember]->EVSpe/4) ) * Parties[eop].Member[partymember]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[partymember]->Nature].Spe;
}

void PP_Set(unsigned partymember,bool eop) {
    Parties[eop].Member[partymember]->Moves[0].PP = MoveList[Parties[eop].Member[partymember]->Moves[0].Move].PP * 5 * ppboostmult(Parties[eop].Member[partymember]->Moves[0].PPmult);
  Parties[eop].Member[partymember]->Moves[1].PP = MoveList[Parties[eop].Member[partymember]->Moves[1].Move].PP * 5 * ppboostmult(Parties[eop].Member[partymember]->Moves[1].PPmult);
  Parties[eop].Member[partymember]->Moves[2].PP = MoveList[Parties[eop].Member[partymember]->Moves[2].Move].PP * 5 * ppboostmult(Parties[eop].Member[partymember]->Moves[2].PPmult);
  Parties[eop].Member[partymember]->Moves[3].PP = MoveList[Parties[eop].Member[partymember]->Moves[3].Move].PP * 5 * ppboostmult(Parties[eop].Member[partymember]->Moves[3].PPmult);
}