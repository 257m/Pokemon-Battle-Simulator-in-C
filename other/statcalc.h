void StatCalculation(bool eop) {
    Parties[eop].Member[0]->Hp =  ((Parties[eop].Member[0]->IVHp + 2 * Parties[eop].Member[0]->Poke->Hp + (Parties[eop].Member[0]->EVHp/4)) * Parties[eop].Member[0]->Level/100 ) + 10 + Parties[eop].Member[0]->Level;
  
  Parties[eop].Member[0]->Atk = (((Parties[eop].Member[0]->IVAtk + 2 * Parties[eop].Member[0]->Poke->Atk + (Parties[eop].Member[0]->EVAtk/4) ) * Parties[eop].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[0]->Nature].Atk;
  
  Parties[eop].Member[0]->Def = (((Parties[eop].Member[0]->IVDef + 2 * Parties[eop].Member[0]->Poke->Def + (Parties[eop].Member[0]->EVDef/4) ) * Parties[eop].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[0]->Nature].Def;
  
  Parties[eop].Member[0]->SpA = (((Parties[eop].Member[0]->IVSpA + 2 * Parties[eop].Member[0]->Poke->SpA + (Parties[eop].Member[0]->EVSpA/4) ) * Parties[eop].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[0]->Nature].SpA;
  
  Parties[eop].Member[0]->SpD = (((Parties[eop].Member[0]->IVSpD + 2 * Parties[eop].Member[0]->Poke->SpD + (Parties[eop].Member[0]->EVSpD/4) ) * Parties[eop].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[0]->Nature].SpD;

  Parties[eop].Member[0]->Spe = (((Parties[eop].Member[0]->IVSpe + 2 * Parties[eop].Member[0]->Poke->Spe + (Parties[eop].Member[0]->EVSpe/4) ) * Parties[eop].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[0]->Nature].Spe;

  Parties[eop].Member[0]->Move1.PP = MoveList[Parties[eop].Member[0]->Move1.Move].PP * ppboostmult(Parties[eop].Member[0]->Move1.PPmult);
  Parties[eop].Member[0]->Move2.PP = MoveList[Parties[eop].Member[0]->Move2.Move].PP * ppboostmult(Parties[eop].Member[0]->Move2.PPmult);
  Parties[eop].Member[0]->Move3.PP = MoveList[Parties[eop].Member[0]->Move3.Move].PP * ppboostmult(Parties[eop].Member[0]->Move3.PPmult);
  Parties[eop].Member[0]->Move4.PP = MoveList[Parties[eop].Member[0]->Move4.Move].PP * ppboostmult(Parties[eop].Member[0]->Move4.PPmult);
  
  Parties[eop].Member[1]->Hp =  ((Parties[eop].Member[1]->IVHp + 2 * Parties[eop].Member[1]->Poke->Hp + (Parties[eop].Member[1]->EVHp/4)) * Parties[eop].Member[1]->Level/100 ) + 10 +Parties[eop].Member[1]->Level;
  
  Parties[eop].Member[1]->Atk = (((Parties[eop].Member[1]->IVAtk + 2 * Parties[eop].Member[1]->Poke->Atk + (Parties[eop].Member[1]->EVAtk/4) ) * Parties[eop].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[1]->Nature].Atk;
  
  Parties[eop].Member[1]->Def = (((Parties[eop].Member[1]->IVDef + 2 * Parties[eop].Member[1]->Poke->Def + (Parties[eop].Member[1]->EVDef/4) ) * Parties[eop].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[1]->Nature].Def;
  
  Parties[eop].Member[1]->SpA = (((Parties[eop].Member[1]->IVSpA + 2 * Parties[eop].Member[1]->Poke->SpA + (Parties[eop].Member[1]->EVSpA/4) ) * Parties[eop].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[1]->Nature].SpA;
  
  Parties[eop].Member[1]->SpD = (((Parties[eop].Member[1]->IVSpD + 2 * Parties[eop].Member[1]->Poke->SpD + (Parties[eop].Member[1]->EVSpD/4) ) * Parties[eop].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[1]->Nature].SpD;

  Parties[eop].Member[1]->Spe = (((Parties[eop].Member[1]->IVSpe + 2 * Parties[eop].Member[1]->Poke->Spe + (Parties[eop].Member[1]->EVSpe/4) ) * Parties[eop].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[1]->Nature].Spe;

  Parties[eop].Member[1]->Move1.PP = MoveList[Parties[eop].Member[1]->Move1.Move].PP * ppboostmult(Parties[eop].Member[1]->Move1.PPmult);
  Parties[eop].Member[1]->Move2.PP = MoveList[Parties[eop].Member[1]->Move2.Move].PP * ppboostmult(Parties[eop].Member[1]->Move2.PPmult);
  Parties[eop].Member[1]->Move3.PP = MoveList[Parties[eop].Member[1]->Move3.Move].PP * ppboostmult(Parties[eop].Member[1]->Move3.PPmult);
  Parties[eop].Member[1]->Move4.PP = MoveList[Parties[eop].Member[1]->Move4.Move].PP * ppboostmult(Parties[eop].Member[1]->Move4.PPmult);
    
   Parties[eop].Member[2]->Hp =  ((Parties[eop].Member[2]->IVHp + 2 * Parties[eop].Member[2]->Poke->Hp + (Parties[eop].Member[2]->EVHp/4)) * Parties[eop].Member[2]->Level/100 ) + 10 +Parties[eop].Member[2]->Level;
  
  Parties[eop].Member[2]->Atk = (((Parties[eop].Member[2]->IVAtk + 2 * Parties[eop].Member[2]->Poke->Atk + (Parties[eop].Member[2]->EVAtk/4) ) * Parties[eop].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[2]->Nature].Atk;
  
  Parties[eop].Member[2]->Def = (((Parties[eop].Member[2]->IVDef + 2 * Parties[eop].Member[2]->Poke->Def + (Parties[eop].Member[2]->EVDef/4) ) * Parties[eop].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[2]->Nature].Def;
  
  Parties[eop].Member[2]->SpA = (((Parties[eop].Member[2]->IVSpA + 2 * Parties[eop].Member[2]->Poke->SpA + (Parties[eop].Member[2]->EVSpA/4) ) * Parties[eop].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[2]->Nature].SpA;
  
  Parties[eop].Member[2]->SpD = (((Parties[eop].Member[2]->IVSpD + 2 * Parties[eop].Member[2]->Poke->SpD + (Parties[eop].Member[2]->EVSpD/4) ) * Parties[eop].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[2]->Nature].SpD;

  Parties[eop].Member[2]->Spe = (((Parties[eop].Member[2]->IVSpe + 2 * Parties[eop].Member[2]->Poke->Spe + (Parties[eop].Member[2]->EVSpe/4) ) * Parties[eop].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[2]->Nature].Spe; 

  Parties[eop].Member[2]->Move1.PP = MoveList[Parties[eop].Member[2]->Move1.Move].PP * ppboostmult(Parties[eop].Member[2]->Move1.PPmult);
  Parties[eop].Member[2]->Move2.PP = MoveList[Parties[eop].Member[2]->Move2.Move].PP * ppboostmult(Parties[eop].Member[2]->Move2.PPmult);
  Parties[eop].Member[2]->Move3.PP = MoveList[Parties[eop].Member[2]->Move3.Move].PP * ppboostmult(Parties[eop].Member[2]->Move3.PPmult);
  Parties[eop].Member[2]->Move4.PP = MoveList[Parties[eop].Member[2]->Move4.Move].PP * ppboostmult(Parties[eop].Member[2]->Move4.PPmult);

   Parties[eop].Member[3]->Hp =  ((Parties[eop].Member[3]->IVHp + 2 * Parties[eop].Member[3]->Poke->Hp + (Parties[eop].Member[3]->EVHp/4)) * Parties[eop].Member[3]->Level/100 ) + 10 +Parties[eop].Member[3]->Level;
  
  Parties[eop].Member[3]->Atk = (((Parties[eop].Member[3]->IVAtk + 2 * Parties[eop].Member[3]->Poke->Atk + (Parties[eop].Member[3]->EVAtk/4) ) * Parties[eop].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[3]->Nature].Atk;
  
  Parties[eop].Member[3]->Def = (((Parties[eop].Member[3]->IVDef + 2 * Parties[eop].Member[3]->Poke->Def + (Parties[eop].Member[3]->EVDef/4) ) * Parties[eop].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[3]->Nature].Def;
  
  Parties[eop].Member[3]->SpA = (((Parties[eop].Member[3]->IVSpA + 2 * Parties[eop].Member[3]->Poke->SpA + (Parties[eop].Member[3]->EVSpA/4) ) * Parties[eop].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[3]->Nature].SpA;
  
  Parties[eop].Member[3]->SpD = (((Parties[eop].Member[3]->IVSpD + 2 * Parties[eop].Member[3]->Poke->SpD + (Parties[eop].Member[3]->EVSpD/4) ) * Parties[eop].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[3]->Nature].SpD;

  Parties[eop].Member[3]->Spe = (((Parties[eop].Member[3]->IVSpe + 2 * Parties[eop].Member[3]->Poke->Spe + (Parties[eop].Member[3]->EVSpe/4) ) * Parties[eop].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[3]->Nature].Spe;

  Parties[eop].Member[3]->Move1.PP = MoveList[Parties[eop].Member[3]->Move1.Move].PP * ppboostmult(Parties[eop].Member[3]->Move1.PPmult);
  Parties[eop].Member[3]->Move2.PP = MoveList[Parties[eop].Member[3]->Move2.Move].PP * ppboostmult(Parties[eop].Member[3]->Move2.PPmult);
  Parties[eop].Member[3]->Move3.PP = MoveList[Parties[eop].Member[3]->Move3.Move].PP * ppboostmult(Parties[eop].Member[3]->Move3.PPmult);
  Parties[eop].Member[3]->Move4.PP = MoveList[Parties[eop].Member[3]->Move4.Move].PP * ppboostmult(Parties[eop].Member[3]->Move4.PPmult);

  Parties[eop].Member[4]->Hp =  ((Parties[eop].Member[4]->IVHp + 2 * Parties[eop].Member[4]->Poke->Hp + (Parties[eop].Member[4]->EVHp/4)) * Parties[eop].Member[4]->Level/100 ) + 10 +Parties[eop].Member[4]->Level;
  
  Parties[eop].Member[4]->Atk = (((Parties[eop].Member[4]->IVAtk + 2 * Parties[eop].Member[4]->Poke->Atk + (Parties[eop].Member[4]->EVAtk/4) ) * Parties[eop].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[4]->Nature].Atk;
  
  Parties[eop].Member[4]->Def = (((Parties[eop].Member[4]->IVDef + 2 * Parties[eop].Member[4]->Poke->Def + (Parties[eop].Member[4]->EVDef/4) ) * Parties[eop].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[4]->Nature].Def;
  
  Parties[eop].Member[4]->SpA = (((Parties[eop].Member[4]->IVSpA + 2 * Parties[eop].Member[4]->Poke->SpA + (Parties[eop].Member[4]->EVSpA/4) ) * Parties[eop].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[4]->Nature].SpA;
  
  Parties[eop].Member[4]->SpD = (((Parties[eop].Member[4]->IVSpD + 2 * Parties[eop].Member[4]->Poke->SpD + (Parties[eop].Member[4]->EVSpD/4) ) * Parties[eop].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[4]->Nature].SpD;

  Parties[eop].Member[4]->Spe = (((Parties[eop].Member[4]->IVSpe + 2 * Parties[eop].Member[4]->Poke->Spe + (Parties[eop].Member[4]->EVSpe/4) ) * Parties[eop].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[4]->Nature].Spe;

  Parties[eop].Member[4]->Move1.PP = MoveList[Parties[eop].Member[4]->Move1.Move].PP * ppboostmult(Parties[eop].Member[4]->Move1.PPmult);
  Parties[eop].Member[4]->Move2.PP = MoveList[Parties[eop].Member[4]->Move2.Move].PP * ppboostmult(Parties[eop].Member[4]->Move2.PPmult);
  Parties[eop].Member[4]->Move3.PP = MoveList[Parties[eop].Member[4]->Move3.Move].PP * ppboostmult(Parties[eop].Member[4]->Move3.PPmult);
  Parties[eop].Member[4]->Move4.PP = MoveList[Parties[eop].Member[4]->Move4.Move].PP * ppboostmult(Parties[eop].Member[4]->Move4.PPmult);

  Parties[eop].Member[5]->Hp =  ((Parties[eop].Member[5]->IVHp + 2 * Parties[eop].Member[5]->Poke->Hp + (Parties[eop].Member[5]->EVHp/4)) * Parties[eop].Member[5]->Level/100 ) + 10 +Parties[eop].Member[5]->Level;
  
  Parties[eop].Member[5]->Atk = (((Parties[eop].Member[5]->IVAtk + 2 * Parties[eop].Member[5]->Poke->Atk + (Parties[eop].Member[5]->EVAtk/4) ) * Parties[eop].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[5]->Nature].Atk;
  
  Parties[eop].Member[5]->Def = (((Parties[eop].Member[5]->IVDef + 2 * Parties[eop].Member[5]->Poke->Def + (Parties[eop].Member[5]->EVDef/4) ) * Parties[eop].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[5]->Nature].Def;
  
  Parties[eop].Member[5]->SpA = (((Parties[eop].Member[5]->IVSpA + 2 * Parties[eop].Member[5]->Poke->SpA + (Parties[eop].Member[5]->EVSpA/4) ) * Parties[eop].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[5]->Nature].SpA;
  
  Parties[eop].Member[5]->SpD = (((Parties[eop].Member[5]->IVSpD + 2 * Parties[eop].Member[5]->Poke->SpD + (Parties[eop].Member[5]->EVSpD/4) ) * Parties[eop].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[5]->Nature].SpD;

  Parties[eop].Member[5]->Spe = (((Parties[eop].Member[5]->IVSpe + 2 * Parties[eop].Member[5]->Poke->Spe + (Parties[eop].Member[5]->EVSpe/4) ) * Parties[eop].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[eop].Member[5]->Nature].Spe;

  Parties[eop].Member[5]->Move1.PP = MoveList[Parties[eop].Member[5]->Move1.Move].PP * ppboostmult(Parties[eop].Member[5]->Move1.PPmult);
  Parties[eop].Member[5]->Move2.PP = MoveList[Parties[eop].Member[5]->Move2.Move].PP * ppboostmult(Parties[eop].Member[5]->Move2.PPmult);
  Parties[eop].Member[5]->Move3.PP = MoveList[Parties[eop].Member[5]->Move3.Move].PP * ppboostmult(Parties[eop].Member[5]->Move3.PPmult);
  Parties[eop].Member[5]->Move4.PP = MoveList[Parties[eop].Member[5]->Move4.Move].PP * ppboostmult(Parties[eop].Member[5]->Move4.PPmult);
}