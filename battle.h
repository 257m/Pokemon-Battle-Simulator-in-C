int Battle() {
  while (StatCalc == 1) {
  Parties[0].Member[0]->Hp =  ((Parties[0].Member[0]->IVHp + 2 * Parties[0].Member[0]->Poke->Hp + (Parties[0].Member[0]->EVHp/4)) * Parties[0].Member[0]->Level/100 ) + 10 + Parties[0].Member[0]->Level;
  
  Parties[0].Member[0]->Atk = (((Parties[0].Member[0]->IVAtk + 2 * Parties[0].Member[0]->Poke->Atk + (Parties[0].Member[0]->EVAtk/4) ) * Parties[0].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[0]->Nature].Atk;
  
  Parties[0].Member[0]->Def = (((Parties[0].Member[0]->IVDef + 2 * Parties[0].Member[0]->Poke->Def + (Parties[0].Member[0]->EVDef/4) ) * Parties[0].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[0]->Nature].Def;
  
  Parties[0].Member[0]->SpA = (((Parties[0].Member[0]->IVSpA + 2 * Parties[0].Member[0]->Poke->SpA + (Parties[0].Member[0]->EVSpA/4) ) * Parties[0].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[0]->Nature].SpA;
  
  Parties[0].Member[0]->SpD = (((Parties[0].Member[0]->IVSpD + 2 * Parties[0].Member[0]->Poke->SpD + (Parties[0].Member[0]->EVSpD/4) ) * Parties[0].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[0]->Nature].SpD;

  Parties[0].Member[0]->Spe = (((Parties[0].Member[0]->IVSpe + 2 * Parties[0].Member[0]->Poke->Spe + (Parties[0].Member[0]->EVSpe/4) ) * Parties[0].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[0]->Nature].Spe;

  Parties[0].Member[0]->Move1.PP = MoveList[Parties[0].Member[0]->Move1.Move].PP * ppboostmult(Parties[0].Member[0]->Move1.PPmult);
  Parties[0].Member[0]->Move2.PP = MoveList[Parties[0].Member[0]->Move2.Move].PP * ppboostmult(Parties[0].Member[0]->Move2.PPmult);
  Parties[0].Member[0]->Move3.PP = MoveList[Parties[0].Member[0]->Move3.Move].PP * ppboostmult(Parties[0].Member[0]->Move3.PPmult);
  Parties[0].Member[0]->Move4.PP = MoveList[Parties[0].Member[0]->Move4.Move].PP * ppboostmult(Parties[0].Member[0]->Move4.PPmult);
  
  Parties[0].Member[1]->Hp =  ((Parties[0].Member[1]->IVHp + 2 * Parties[0].Member[1]->Poke->Hp + (Parties[0].Member[1]->EVHp/4)) * Parties[0].Member[1]->Level/100 ) + 10 +Parties[0].Member[1]->Level;
  
  Parties[0].Member[1]->Atk = (((Parties[0].Member[1]->IVAtk + 2 * Parties[0].Member[1]->Poke->Atk + (Parties[0].Member[1]->EVAtk/4) ) * Parties[0].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[1]->Nature].Atk;
  
  Parties[0].Member[1]->Def = (((Parties[0].Member[1]->IVDef + 2 * Parties[0].Member[1]->Poke->Def + (Parties[0].Member[1]->EVDef/4) ) * Parties[0].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[1]->Nature].Def;
  
  Parties[0].Member[1]->SpA = (((Parties[0].Member[1]->IVSpA + 2 * Parties[0].Member[1]->Poke->SpA + (Parties[0].Member[1]->EVSpA/4) ) * Parties[0].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[1]->Nature].SpA;
  
  Parties[0].Member[1]->SpD = (((Parties[0].Member[1]->IVSpD + 2 * Parties[0].Member[1]->Poke->SpD + (Parties[0].Member[1]->EVSpD/4) ) * Parties[0].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[1]->Nature].SpD;

  Parties[0].Member[1]->Spe = (((Parties[0].Member[1]->IVSpe + 2 * Parties[0].Member[1]->Poke->Spe + (Parties[0].Member[1]->EVSpe/4) ) * Parties[0].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[1]->Nature].Spe;

  Parties[0].Member[1]->Move1.PP = MoveList[Parties[0].Member[1]->Move1.Move].PP * ppboostmult(Parties[0].Member[1]->Move1.PPmult);
  Parties[0].Member[1]->Move2.PP = MoveList[Parties[0].Member[1]->Move2.Move].PP * ppboostmult(Parties[0].Member[1]->Move2.PPmult);
  Parties[0].Member[1]->Move3.PP = MoveList[Parties[0].Member[1]->Move3.Move].PP * ppboostmult(Parties[0].Member[1]->Move3.PPmult);
  Parties[0].Member[1]->Move4.PP = MoveList[Parties[0].Member[1]->Move4.Move].PP * ppboostmult(Parties[0].Member[1]->Move4.PPmult);
    
   Parties[0].Member[2]->Hp =  ((Parties[0].Member[2]->IVHp + 2 * Parties[0].Member[2]->Poke->Hp + (Parties[0].Member[2]->EVHp/4)) * Parties[0].Member[2]->Level/100 ) + 10 +Parties[0].Member[2]->Level;
  
  Parties[0].Member[2]->Atk = (((Parties[0].Member[2]->IVAtk + 2 * Parties[0].Member[2]->Poke->Atk + (Parties[0].Member[2]->EVAtk/4) ) * Parties[0].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[2]->Nature].Atk;
  
  Parties[0].Member[2]->Def = (((Parties[0].Member[2]->IVDef + 2 * Parties[0].Member[2]->Poke->Def + (Parties[0].Member[2]->EVDef/4) ) * Parties[0].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[2]->Nature].Def;
  
  Parties[0].Member[2]->SpA = (((Parties[0].Member[2]->IVSpA + 2 * Parties[0].Member[2]->Poke->SpA + (Parties[0].Member[2]->EVSpA/4) ) * Parties[0].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[2]->Nature].SpA;
  
  Parties[0].Member[2]->SpD = (((Parties[0].Member[2]->IVSpD + 2 * Parties[0].Member[2]->Poke->SpD + (Parties[0].Member[2]->EVSpD/4) ) * Parties[0].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[2]->Nature].SpD;

  Parties[0].Member[2]->Spe = (((Parties[0].Member[2]->IVSpe + 2 * Parties[0].Member[2]->Poke->Spe + (Parties[0].Member[2]->EVSpe/4) ) * Parties[0].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[2]->Nature].Spe; 

  Parties[0].Member[2]->Move1.PP = MoveList[Parties[0].Member[2]->Move1.Move].PP * ppboostmult(Parties[0].Member[2]->Move1.PPmult);
  Parties[0].Member[2]->Move2.PP = MoveList[Parties[0].Member[2]->Move2.Move].PP * ppboostmult(Parties[0].Member[2]->Move2.PPmult);
  Parties[0].Member[2]->Move3.PP = MoveList[Parties[0].Member[2]->Move3.Move].PP * ppboostmult(Parties[0].Member[2]->Move3.PPmult);
  Parties[0].Member[2]->Move4.PP = MoveList[Parties[0].Member[2]->Move4.Move].PP * ppboostmult(Parties[0].Member[2]->Move4.PPmult);

   Parties[0].Member[3]->Hp =  ((Parties[0].Member[3]->IVHp + 2 * Parties[0].Member[3]->Poke->Hp + (Parties[0].Member[3]->EVHp/4)) * Parties[0].Member[3]->Level/100 ) + 10 +Parties[0].Member[3]->Level;
  
  Parties[0].Member[3]->Atk = (((Parties[0].Member[3]->IVAtk + 2 * Parties[0].Member[3]->Poke->Atk + (Parties[0].Member[3]->EVAtk/4) ) * Parties[0].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[3]->Nature].Atk;
  
  Parties[0].Member[3]->Def = (((Parties[0].Member[3]->IVDef + 2 * Parties[0].Member[3]->Poke->Def + (Parties[0].Member[3]->EVDef/4) ) * Parties[0].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[3]->Nature].Def;
  
  Parties[0].Member[3]->SpA = (((Parties[0].Member[3]->IVSpA + 2 * Parties[0].Member[3]->Poke->SpA + (Parties[0].Member[3]->EVSpA/4) ) * Parties[0].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[3]->Nature].SpA;
  
  Parties[0].Member[3]->SpD = (((Parties[0].Member[3]->IVSpD + 2 * Parties[0].Member[3]->Poke->SpD + (Parties[0].Member[3]->EVSpD/4) ) * Parties[0].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[3]->Nature].SpD;

  Parties[0].Member[3]->Spe = (((Parties[0].Member[3]->IVSpe + 2 * Parties[0].Member[3]->Poke->Spe + (Parties[0].Member[3]->EVSpe/4) ) * Parties[0].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[3]->Nature].Spe;

  Parties[0].Member[3]->Move1.PP = MoveList[Parties[0].Member[3]->Move1.Move].PP * ppboostmult(Parties[0].Member[3]->Move1.PPmult);
  Parties[0].Member[3]->Move2.PP = MoveList[Parties[0].Member[3]->Move2.Move].PP * ppboostmult(Parties[0].Member[3]->Move2.PPmult);
  Parties[0].Member[3]->Move3.PP = MoveList[Parties[0].Member[3]->Move3.Move].PP * ppboostmult(Parties[0].Member[3]->Move3.PPmult);
  Parties[0].Member[3]->Move4.PP = MoveList[Parties[0].Member[3]->Move4.Move].PP * ppboostmult(Parties[0].Member[3]->Move4.PPmult);

  Parties[0].Member[4]->Hp =  ((Parties[0].Member[4]->IVHp + 2 * Parties[0].Member[4]->Poke->Hp + (Parties[0].Member[4]->EVHp/4)) * Parties[0].Member[4]->Level/100 ) + 10 +Parties[0].Member[4]->Level;
  
  Parties[0].Member[4]->Atk = (((Parties[0].Member[4]->IVAtk + 2 * Parties[0].Member[4]->Poke->Atk + (Parties[0].Member[4]->EVAtk/4) ) * Parties[0].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[4]->Nature].Atk;
  
  Parties[0].Member[4]->Def = (((Parties[0].Member[4]->IVDef + 2 * Parties[0].Member[4]->Poke->Def + (Parties[0].Member[4]->EVDef/4) ) * Parties[0].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[4]->Nature].Def;
  
  Parties[0].Member[4]->SpA = (((Parties[0].Member[4]->IVSpA + 2 * Parties[0].Member[4]->Poke->SpA + (Parties[0].Member[4]->EVSpA/4) ) * Parties[0].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[4]->Nature].SpA;
  
  Parties[0].Member[4]->SpD = (((Parties[0].Member[4]->IVSpD + 2 * Parties[0].Member[4]->Poke->SpD + (Parties[0].Member[4]->EVSpD/4) ) * Parties[0].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[4]->Nature].SpD;

  Parties[0].Member[4]->Spe = (((Parties[0].Member[4]->IVSpe + 2 * Parties[0].Member[4]->Poke->Spe + (Parties[0].Member[4]->EVSpe/4) ) * Parties[0].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[4]->Nature].Spe;

  Parties[0].Member[4]->Move1.PP = MoveList[Parties[0].Member[4]->Move1.Move].PP * ppboostmult(Parties[0].Member[4]->Move1.PPmult);
  Parties[0].Member[4]->Move2.PP = MoveList[Parties[0].Member[4]->Move2.Move].PP * ppboostmult(Parties[0].Member[4]->Move2.PPmult);
  Parties[0].Member[4]->Move3.PP = MoveList[Parties[0].Member[4]->Move3.Move].PP * ppboostmult(Parties[0].Member[4]->Move3.PPmult);
  Parties[0].Member[4]->Move4.PP = MoveList[Parties[0].Member[4]->Move4.Move].PP * ppboostmult(Parties[0].Member[4]->Move4.PPmult);

  Parties[0].Member[5]->Hp =  ((Parties[0].Member[5]->IVHp + 2 * Parties[0].Member[5]->Poke->Hp + (Parties[0].Member[5]->EVHp/4)) * Parties[0].Member[5]->Level/100 ) + 10 +Parties[0].Member[5]->Level;
  
  Parties[0].Member[5]->Atk = (((Parties[0].Member[5]->IVAtk + 2 * Parties[0].Member[5]->Poke->Atk + (Parties[0].Member[5]->EVAtk/4) ) * Parties[0].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[5]->Nature].Atk;
  
  Parties[0].Member[5]->Def = (((Parties[0].Member[5]->IVDef + 2 * Parties[0].Member[5]->Poke->Def + (Parties[0].Member[5]->EVDef/4) ) * Parties[0].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[5]->Nature].Def;
  
  Parties[0].Member[5]->SpA = (((Parties[0].Member[5]->IVSpA + 2 * Parties[0].Member[5]->Poke->SpA + (Parties[0].Member[5]->EVSpA/4) ) * Parties[0].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[5]->Nature].SpA;
  
  Parties[0].Member[5]->SpD = (((Parties[0].Member[5]->IVSpD + 2 * Parties[0].Member[5]->Poke->SpD + (Parties[0].Member[5]->EVSpD/4) ) * Parties[0].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[5]->Nature].SpD;

  Parties[0].Member[5]->Spe = (((Parties[0].Member[5]->IVSpe + 2 * Parties[0].Member[5]->Poke->Spe + (Parties[0].Member[5]->EVSpe/4) ) * Parties[0].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[0].Member[5]->Nature].Spe;

  Parties[0].Member[5]->Move1.PP = MoveList[Parties[0].Member[5]->Move1.Move].PP * ppboostmult(Parties[0].Member[5]->Move1.PPmult);
  Parties[0].Member[5]->Move2.PP = MoveList[Parties[0].Member[5]->Move2.Move].PP * ppboostmult(Parties[0].Member[5]->Move2.PPmult);
  Parties[0].Member[5]->Move3.PP = MoveList[Parties[0].Member[5]->Move3.Move].PP * ppboostmult(Parties[0].Member[5]->Move3.PPmult);
  Parties[0].Member[5]->Move4.PP = MoveList[Parties[0].Member[5]->Move4.Move].PP * ppboostmult(Parties[0].Member[5]->Move4.PPmult);

  Parties[1].Member[0]->Hp =  ((Parties[1].Member[0]->IVHp + 2 * Parties[1].Member[0]->Poke->Hp + (Parties[1].Member[0]->EVHp/4)) * Parties[1].Member[0]->Level/100 ) + 10 +Parties[1].Member[0]->Level;
  
  Parties[1].Member[0]->Atk = (((Parties[1].Member[0]->IVAtk + 2 * Parties[1].Member[0]->Poke->Atk + (Parties[1].Member[0]->EVAtk/4) ) * Parties[1].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[0]->Nature].Atk;
  
  Parties[1].Member[0]->Def = (((Parties[1].Member[0]->IVDef + 2 * Parties[1].Member[0]->Poke->Def + (Parties[1].Member[0]->EVDef/4) ) * Parties[1].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[0]->Nature].Def;
  
  Parties[1].Member[0]->SpA = (((Parties[1].Member[0]->IVSpA + 2 * Parties[1].Member[0]->Poke->SpA + (Parties[1].Member[0]->EVSpA/4) ) * Parties[1].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[0]->Nature].SpA;
  
  Parties[1].Member[0]->SpD = (((Parties[1].Member[0]->IVSpD + 2 * Parties[1].Member[0]->Poke->SpD + (Parties[1].Member[0]->EVSpD/4) ) * Parties[1].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[0]->Nature].SpD;

  Parties[1].Member[0]->Spe = (((Parties[1].Member[0]->IVSpe + 2 * Parties[1].Member[0]->Poke->Spe + (Parties[1].Member[0]->EVSpe/4) ) * Parties[1].Member[0]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[0]->Nature].Spe;

  Parties[1].Member[0]->Move1.PP = MoveList[Parties[1].Member[0]->Move1.Move].PP * ppboostmult(Parties[1].Member[0]->Move1.PPmult);
  Parties[1].Member[0]->Move2.PP = MoveList[Parties[1].Member[0]->Move2.Move].PP * ppboostmult(Parties[1].Member[0]->Move2.PPmult);
  Parties[1].Member[0]->Move3.PP = MoveList[Parties[1].Member[0]->Move3.Move].PP * ppboostmult(Parties[1].Member[0]->Move3.PPmult);
  Parties[1].Member[0]->Move4.PP = MoveList[Parties[1].Member[0]->Move4.Move].PP * ppboostmult(Parties[1].Member[0]->Move4.PPmult);

  Parties[1].Member[1]->Hp =  ((Parties[1].Member[1]->IVHp + 2 * Parties[1].Member[1]->Poke->Hp + (Parties[1].Member[1]->EVHp/4)) * Parties[1].Member[1]->Level/100 ) + 10 +Parties[1].Member[1]->Level;
  
  Parties[1].Member[1]->Atk = (((Parties[1].Member[1]->IVAtk + 2 * Parties[1].Member[1]->Poke->Atk + (Parties[1].Member[1]->EVAtk/4) ) * Parties[1].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[1]->Nature].Atk;
  
  Parties[1].Member[1]->Def = (((Parties[1].Member[1]->IVDef + 2 * Parties[1].Member[1]->Poke->Def + (Parties[1].Member[1]->EVDef/4) ) * Parties[1].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[1]->Nature].Def;
  
  Parties[1].Member[1]->SpA = (((Parties[1].Member[1]->IVSpA + 2 * Parties[1].Member[1]->Poke->SpA + (Parties[1].Member[1]->EVSpA/4) ) * Parties[1].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[1]->Nature].SpA;
  
  Parties[1].Member[1]->SpD = (((Parties[1].Member[1]->IVSpD + 2 * Parties[1].Member[1]->Poke->SpD + (Parties[1].Member[1]->EVSpD/4) ) * Parties[1].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[1]->Nature].SpD;

  Parties[1].Member[1]->Spe = (((Parties[1].Member[1]->IVSpe + 2 * Parties[1].Member[1]->Poke->Spe + (Parties[1].Member[1]->EVSpe/4) ) * Parties[1].Member[1]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[1]->Nature].Spe;

  Parties[1].Member[1]->Move1.PP = MoveList[Parties[1].Member[1]->Move1.Move].PP * ppboostmult(Parties[1].Member[1]->Move1.PPmult);
  Parties[1].Member[1]->Move2.PP = MoveList[Parties[1].Member[1]->Move2.Move].PP * ppboostmult(Parties[1].Member[1]->Move2.PPmult);
  Parties[1].Member[1]->Move3.PP = MoveList[Parties[1].Member[1]->Move3.Move].PP * ppboostmult(Parties[1].Member[1]->Move3.PPmult);
  Parties[1].Member[1]->Move4.PP = MoveList[Parties[1].Member[1]->Move4.Move].PP * ppboostmult(Parties[1].Member[1]->Move4.PPmult);

   Parties[1].Member[2]->Hp =  ((Parties[1].Member[2]->IVHp + 2 * Parties[1].Member[2]->Poke->Hp + (Parties[1].Member[2]->EVHp/4)) * Parties[1].Member[2]->Level/100 ) + 10 +Parties[1].Member[2]->Level;
  
  Parties[1].Member[2]->Atk = (((Parties[1].Member[2]->IVAtk + 2 * Parties[1].Member[2]->Poke->Atk + (Parties[1].Member[2]->EVAtk/4) ) * Parties[1].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[2]->Nature].Atk;
  
  Parties[1].Member[2]->Def = (((Parties[1].Member[2]->IVDef + 2 * Parties[1].Member[2]->Poke->Def + (Parties[1].Member[2]->EVDef/4) ) * Parties[1].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[2]->Nature].Def;
  
  Parties[1].Member[2]->SpA = (((Parties[1].Member[2]->IVSpA + 2 * Parties[1].Member[2]->Poke->SpA + (Parties[1].Member[2]->EVSpA/4) ) * Parties[1].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[2]->Nature].SpA;
  
  Parties[1].Member[2]->SpD = (((Parties[1].Member[2]->IVSpD + 2 * Parties[1].Member[2]->Poke->SpD + (Parties[1].Member[2]->EVSpD/4) ) * Parties[1].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[2]->Nature].SpD;

  Parties[1].Member[2]->Spe = (((Parties[1].Member[2]->IVSpe + 2 * Parties[1].Member[2]->Poke->Spe + (Parties[1].Member[2]->EVSpe/4) ) * Parties[1].Member[2]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[2]->Nature].Spe; 

  Parties[1].Member[2]->Move1.PP = MoveList[Parties[1].Member[2]->Move1.Move].PP * ppboostmult(Parties[1].Member[2]->Move1.PPmult);
  Parties[1].Member[2]->Move2.PP = MoveList[Parties[1].Member[2]->Move2.Move].PP * ppboostmult(Parties[1].Member[2]->Move2.PPmult);
  Parties[1].Member[2]->Move3.PP = MoveList[Parties[1].Member[2]->Move3.Move].PP * ppboostmult(Parties[1].Member[2]->Move3.PPmult);
  Parties[1].Member[2]->Move4.PP = MoveList[Parties[1].Member[2]->Move4.Move].PP * ppboostmult(Parties[1].Member[2]->Move4.PPmult);

   Parties[1].Member[3]->Hp =  ((Parties[1].Member[3]->IVHp + 2 * Parties[1].Member[3]->Poke->Hp + (Parties[1].Member[3]->EVHp/4)) * Parties[1].Member[3]->Level/100 ) + 10 +Parties[1].Member[3]->Level;
  
  Parties[1].Member[3]->Atk = (((Parties[1].Member[3]->IVAtk + 2 * Parties[1].Member[3]->Poke->Atk + (Parties[1].Member[3]->EVAtk/4) ) * Parties[1].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[3]->Nature].Atk;
  
  Parties[1].Member[3]->Def = (((Parties[1].Member[3]->IVDef + 2 * Parties[1].Member[3]->Poke->Def + (Parties[1].Member[3]->EVDef/4) ) * Parties[1].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[3]->Nature].Def;
  
  Parties[1].Member[3]->SpA = (((Parties[1].Member[3]->IVSpA + 2 * Parties[1].Member[3]->Poke->SpA + (Parties[1].Member[3]->EVSpA/4) ) * Parties[1].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[3]->Nature].SpA;
  
  Parties[1].Member[3]->SpD = (((Parties[1].Member[3]->IVSpD + 2 * Parties[1].Member[3]->Poke->SpD + (Parties[1].Member[3]->EVSpD/4) ) * Parties[1].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[3]->Nature].SpD;

  Parties[1].Member[3]->Spe = (((Parties[1].Member[3]->IVSpe + 2 * Parties[1].Member[3]->Poke->Spe + (Parties[1].Member[3]->EVSpe/4) ) * Parties[1].Member[3]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[3]->Nature].Spe;

  Parties[1].Member[3]->Move1.PP = MoveList[Parties[1].Member[3]->Move1.Move].PP * ppboostmult(Parties[1].Member[3]->Move1.PPmult);
  Parties[1].Member[3]->Move2.PP = MoveList[Parties[1].Member[3]->Move2.Move].PP * ppboostmult(Parties[1].Member[3]->Move2.PPmult);
  Parties[1].Member[3]->Move3.PP = MoveList[Parties[1].Member[3]->Move3.Move].PP * ppboostmult(Parties[1].Member[3]->Move3.PPmult);
  Parties[1].Member[3]->Move4.PP = MoveList[Parties[1].Member[3]->Move4.Move].PP * ppboostmult(Parties[1].Member[3]->Move4.PPmult);
    
  Parties[1].Member[4]->Hp =  ((Parties[1].Member[4]->IVHp + 2 * Parties[1].Member[4]->Poke->Hp + (Parties[1].Member[4]->EVHp/4)) * Parties[1].Member[4]->Level/100 ) + 10 +Parties[1].Member[4]->Level;
  
  Parties[1].Member[4]->Atk = (((Parties[1].Member[4]->IVAtk + 2 * Parties[1].Member[4]->Poke->Atk + (Parties[1].Member[4]->EVAtk/4) ) * Parties[1].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[4]->Nature].Atk;
  
  Parties[1].Member[4]->Def = (((Parties[1].Member[4]->IVDef + 2 * Parties[1].Member[4]->Poke->Def + (Parties[1].Member[4]->EVDef/4) ) * Parties[1].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[4]->Nature].Def;
  
  Parties[1].Member[4]->SpA = (((Parties[1].Member[4]->IVSpA + 2 * Parties[1].Member[4]->Poke->SpA + (Parties[1].Member[4]->EVSpA/4) ) * Parties[1].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[4]->Nature].SpA;
  
  Parties[1].Member[4]->SpD = (((Parties[1].Member[4]->IVSpD + 2 * Parties[1].Member[4]->Poke->SpD + (Parties[1].Member[4]->EVSpD/4) ) * Parties[1].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[4]->Nature].SpD;

  Parties[1].Member[4]->Spe = (((Parties[1].Member[4]->IVSpe + 2 * Parties[1].Member[4]->Poke->Spe + (Parties[1].Member[4]->EVSpe/4) ) * Parties[1].Member[4]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[4]->Nature].Spe;

  Parties[1].Member[4]->Move1.PP = MoveList[Parties[1].Member[4]->Move1.Move].PP * ppboostmult(Parties[1].Member[4]->Move1.PPmult);
  Parties[1].Member[4]->Move2.PP = MoveList[Parties[1].Member[4]->Move2.Move].PP * ppboostmult(Parties[1].Member[4]->Move2.PPmult);
  Parties[1].Member[4]->Move3.PP = MoveList[Parties[1].Member[4]->Move3.Move].PP * ppboostmult(Parties[1].Member[4]->Move3.PPmult);
  Parties[1].Member[4]->Move4.PP = MoveList[Parties[1].Member[4]->Move4.Move].PP * ppboostmult(Parties[1].Member[4]->Move4.PPmult);

  Parties[1].Member[5]->Hp =  ((Parties[1].Member[5]->IVHp + 2 * Parties[1].Member[5]->Poke->Hp + (Parties[1].Member[5]->EVHp/4)) * Parties[1].Member[5]->Level/100 ) + 10 +Parties[1].Member[5]->Level;
  
  Parties[1].Member[5]->Atk = (((Parties[1].Member[5]->IVAtk + 2 * Parties[1].Member[5]->Poke->Atk + (Parties[1].Member[5]->EVAtk/4) ) * Parties[1].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[5]->Nature].Atk;
  
  Parties[1].Member[5]->Def = (((Parties[1].Member[5]->IVDef + 2 * Parties[1].Member[5]->Poke->Def + (Parties[1].Member[5]->EVDef/4) ) * Parties[1].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[5]->Nature].Def;
  
  Parties[1].Member[5]->SpA = (((Parties[1].Member[5]->IVSpA + 2 * Parties[1].Member[5]->Poke->SpA + (Parties[1].Member[5]->EVSpA/4) ) * Parties[1].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[5]->Nature].SpA;
  
  Parties[1].Member[5]->SpD = (((Parties[1].Member[5]->IVSpD + 2 * Parties[1].Member[5]->Poke->SpD + (Parties[1].Member[5]->EVSpD/4) ) * Parties[1].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[5]->Nature].SpD;

  Parties[1].Member[5]->Spe = (((Parties[1].Member[5]->IVSpe + 2 * Parties[1].Member[5]->Poke->Spe + (Parties[1].Member[5]->EVSpe/4) ) * Parties[1].Member[5]->Level/100 ) + 5) * NATURE_LIST[Parties[1].Member[5]->Nature].Spe;

  Parties[1].Member[5]->Move1.PP = MoveList[Parties[1].Member[5]->Move1.Move].PP * ppboostmult(Parties[1].Member[5]->Move1.PPmult);
  Parties[1].Member[5]->Move2.PP = MoveList[Parties[1].Member[5]->Move2.Move].PP * ppboostmult(Parties[1].Member[5]->Move2.PPmult);
  Parties[1].Member[5]->Move3.PP = MoveList[Parties[1].Member[5]->Move3.Move].PP * ppboostmult(Parties[1].Member[5]->Move3.PPmult);
  Parties[1].Member[5]->Move4.PP = MoveList[Parties[1].Member[5]->Move4.Move].PP * ppboostmult(Parties[1].Member[5]->Move4.PPmult);


    printf("\nHeal?:");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) {
      Parties[0].Member[0]->CurrentHp = Parties[0].Member[0]->Hp;
      Parties[0].Member[1]->CurrentHp = Parties[0].Member[1]->Hp;
      Parties[0].Member[2]->CurrentHp = Parties[0].Member[2]->Hp;
      Parties[0].Member[3]->CurrentHp = Parties[0].Member[3]->Hp;
      Parties[0].Member[4]->CurrentHp = Parties[0].Member[4]->Hp;
      Parties[0].Member[5]->CurrentHp = Parties[0].Member[5]->Hp;

      Parties[1].Member[0]->CurrentHp = Parties[1].Member[0]->Hp;
      Parties[1].Member[1]->CurrentHp = Parties[1].Member[1]->Hp;
      Parties[1].Member[2]->CurrentHp = Parties[1].Member[2]->Hp;
      Parties[1].Member[3]->CurrentHp = Parties[1].Member[3]->Hp;
      Parties[1].Member[4]->CurrentHp = Parties[1].Member[4]->Hp;
      Parties[1].Member[5]->CurrentHp = Parties[1].Member[5]->Hp;
      
      Parties[0].Member[0]->Non_Volatile_Status = 0; 
      Parties[0].Member[1]->Non_Volatile_Status = 0;
      Parties[0].Member[2]->Non_Volatile_Status = 0;
      Parties[0].Member[3]->Non_Volatile_Status = 0;
      Parties[0].Member[4]->Non_Volatile_Status = 0;
      Parties[0].Member[5]->Non_Volatile_Status = 0;

      Parties[1].Member[0]->Non_Volatile_Status = 0;
      Parties[1].Member[1]->Non_Volatile_Status = 0;
      Parties[1].Member[2]->Non_Volatile_Status = 0;
      Parties[1].Member[3]->Non_Volatile_Status = 0;
      Parties[1].Member[4]->Non_Volatile_Status = 0;
      Parties[1].Member[5]->Non_Volatile_Status = 0;

      Parties[0].Member[0]->ItemUsable = 1; 
      Parties[0].Member[1]->ItemUsable = 1;
      Parties[0].Member[2]->ItemUsable = 1;
      Parties[0].Member[3]->ItemUsable = 1;
      Parties[0].Member[4]->ItemUsable = 1;
      Parties[0].Member[5]->ItemUsable = 1;

      Parties[1].Member[0]->ItemUsable = 1;
      Parties[1].Member[1]->ItemUsable = 1;
      Parties[1].Member[2]->ItemUsable = 1;
      Parties[1].Member[3]->ItemUsable = 1;
      Parties[1].Member[4]->ItemUsable = 1;
      Parties[1].Member[5]->ItemUsable = 1;

    }
    printf("\033[1A");
    printf("\033[2K");
    StatCalc = 0;
    BattleMode = 1;
    Retrieve = 1;
  }
  
  printf("Go %s!\n",Parties[0].Member[0]->Poke->Name);
  printf("The Enemy sent out %s!\n\n", Parties[1].Member[0]->Poke->Name);
  Turns[0] = &Empty_slot;
  Turns[1] = &Empty_slot;
  while(BattleMode == 1) {
    
    while(Retrieve == 1) {
    PlayerSwitch = 0;
    EnemySwitch = 0;
    printf("Enter your move: ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,MoveList[Parties[0].Member[0]->Move1.Move].Name) == 0) {
      Turns[0] = &Parties[0].Member[0]->Move1;
      if(Parties[0].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[0].Member[0]->Move1.PP <= 0) {
    if (Parties[0].Member[0]->Move2.PP <= 0 && Parties[0].Member[0]->Move3.PP <= 0 && Parties[0].Member[0]->Move4.PP <= 0) {
      Turns[0] = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,MoveList[Parties[0].Member[0]->Move2.Move].Name) == 0) {
       Turns[0] = &Parties[0].Member[0]->Move2;
      if(Parties[0].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[0].Member[0]->Move2.PP <= 0) {
    if (Parties[0].Member[0]->Move1.PP <= 0 && Parties[0].Member[0]->Move3.PP <= 0 && Parties[0].Member[0]->Move4.PP <= 0) {
      Turns[0] = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,MoveList[Parties[0].Member[0]->Move3.Move].Name) == 0) {
       Turns[0] = &Parties[0].Member[0]->Move3;
       if(Parties[0].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[0].Member[0]->Move3.PP <= 0) {
    if (Parties[0].Member[0]->Move1.PP <= 0 && Parties[0].Member[0]->Move2.PP <= 0 && Parties[0].Member[0]->Move4.PP <= 0) {
      Turns[0] = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,MoveList[Parties[0].Member[0]->Move4.Move].Name) == 0) {
       Turns[0] = &Parties[0].Member[0]->Move4;
       if(Parties[0].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[0].Member[0]->Move4.PP <= 0) {
    if (Parties[0].Member[0]->Move1.PP <= 0 && Parties[0].Member[0]->Move2.PP <= 0 && Parties[0].Member[0]->Move3.PP <= 0) {
      Turns[0] = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    } else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[1]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[1]->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
       PlayerSwitchSave = &Parties[0].Member[1];
       PlayerSwitch = 1;
      if(Parties[0].Member[1]->Poke->Name == "NoPoke" || Parties[0].Member[1]->CurrentHp <= 0) {
        printf("Move Selection Failed. Pilease retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[2]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[2]->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
       PlayerSwitchSave = &Parties[0].Member[2];
       PlayerSwitch = 1;
      if(Parties[0].Member[2]->Poke->Name == "NoPoke" || Parties[0].Member[2]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[3]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[3]->Poke->Name) == 0  || strcmp(x,"P4") == 0) {
       PlayerSwitchSave = &Parties[0].Member[3];
       PlayerSwitch = 1;
      if(Parties[0].Member[3]->Poke->Name == "NoPoke" || Parties[0].Member[3]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[4]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[4]->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
       PlayerSwitchSave = &Parties[0].Member[4];
       PlayerSwitch = 1;
      if(Parties[0].Member[4]->Poke->Name == "NoPoke" || Parties[0].Member[4]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[5]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[5]->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
       PlayerSwitchSave = &Parties[0].Member[5];
       PlayerSwitch = 1;
      if(Parties[0].Member[5]->Poke->Name == "NoPoke" || Parties[0].Member[5]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
     displayparty(0);
     Reset = 1;
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
      if (Reset != 1) {
     printf("\nEnter enemy's move: ");
     fgets(x,31,stdin);
     x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,MoveList[Parties[1].Member[0]->Move1.Move].Name) == 0) {
      Turns[1] = &Parties[1].Member[0]->Move1;
      if(Parties[1].Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[1].Member[0]->Move1.PP <= 0) {
    if (Parties[1].Member[0]->Move2.PP <= 0 && Parties[1].Member[0]->Move3.PP <= 0 && Parties[1].Member[0]->Move4.PP <= 0) {
      Turns[1] = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,MoveList[Parties[1].Member[0]->Move2.Move].Name) == 0) {
       Turns[1] = &Parties[1].Member[0]->Move2;
      if(Parties[1].Member[0]->Move2.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[1].Member[0]->Move2.PP <= 0) {
    if (Parties[1].Member[0]->Move1.PP <= 0 && Parties[1].Member[0]->Move3.PP <= 0 && Parties[1].Member[0]->Move4.PP <= 0) {
      Turns[1] = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,MoveList[Parties[1].Member[0]->Move3.Move].Name) == 0) {
       Turns[1] = &Parties[1].Member[0]->Move3;
      if(Parties[1].Member[0]->Move3.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[1].Member[0]->Move3.PP <= 0) {
    if (Parties[1].Member[0]->Move1.PP <= 0 && Parties[1].Member[0]->Move2.PP <= 0 && Parties[1].Member[0]->Move4.PP <= 0) {
      Turns[1] = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,MoveList[Parties[1].Member[0]->Move4.Move].Name) == 0) {
       Turns[1] = &Parties[1].Member[0]->Move4;
      if(Parties[1].Member[0]->Move4.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (Parties[1].Member[0]->Move4.PP <= 0) {
    if (Parties[1].Member[0]->Move1.PP <= 0 && Parties[1].Member[0]->Move2.PP <= 0 && Parties[1].Member[0]->Move3.PP <= 0) {
      Turns[1] = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }  else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[1]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[1]->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
       EnemySwitchSave = &Parties[1].Member[1];
       EnemySwitch = 1;
      if(Parties[1].Member[1]->Poke->Name == "NoPoke" || Parties[1].Member[1]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[2]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[2]->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
       EnemySwitchSave = &Parties[1].Member[2];
       EnemySwitch = 1;
      if(Parties[1].Member[2]->Poke->Name == "NoPoke" || Parties[1].Member[2]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[3]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[3]->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
       EnemySwitchSave = &Parties[1].Member[3];
       EnemySwitch = 1;
      if(Parties[1].Member[3]->Poke->Name == "NoPoke" || Parties[1].Member[3]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[4]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[4]->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
       EnemySwitchSave = &Parties[1].Member[4];
       EnemySwitch = 1;
      if(Parties[1].Member[4]->Poke->Name == "NoPoke" || Parties[1].Member[4]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[5]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[5]->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
       EnemySwitchSave = &Parties[1].Member[5];
       EnemySwitch = 1;
      if(Parties[1].Member[5]->Poke->Name == "NoPoke" || Parties[1].Member[5]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
      displayparty(1);
      Reset = 1;
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
        }
      if(Reset == 0) {
      Retrieve = 0;
      Execute = 1;
      printf("\n");
        } else {
        printf("\n\n");
        Reset = 0;
        }
      }

    
    while (Execute == 1) {
      // reset damage counters, temporary mults and flags 
      Damage = 0;
      EnemyDamage = 0;
      PlayerHit = 1;
      EnemyHit = 1;
      PlayerTM = 1;
      EnemyTM = 1;
      PlayerSpeedTM = 1;
      EnemySpeedTM = 1;
      PlayerCanMove = 1;
      EnemyCanMove = 1;
      PlayerPara = 0;
      EnemyPara = 0;
      EnemyDead = 0;
      PlayerDead = 0;
      PlayerSleep = 0;
      EnemySleep = 0;
      // sets stabs
      if (MoveList[Turns[0]->Move].Type == Parties[0].Member[0]->Poke->Type1 || MoveList[Turns[0]->Move].Type == Parties[0].Member[0]->Poke->Type2) {
        STAB = 1.5;
      } else {
        STAB = 1;
      }

      if (MoveList[Turns[1]->Move].Type == Parties[1].Member[0]->Poke->Type1 || MoveList[Turns[1]->Move].Type == Parties[1].Member[0]->Poke->Type2) {
        EnemySTAB = 1.5;
      } else {
        EnemySTAB = 1;
      }
      // Change speed temp mult based on status
      if (Parties[0].Member[0]->Non_Volatile_Status == 3) PlayerSpeedTM /= 2;
      if (Parties[1].Member[0]->Non_Volatile_Status == 3) EnemySpeedTM /= 2;
      // sees who moves first
      if (MoveList[Turns[0]->Move].Priority == MoveList[Turns[1]->Move].Priority) {
      if (floor(Parties[0].Member[0]->Spe*statboostmult(Parties[0].Member[0]->StatBoosts[4]))*PlayerSpeedTM == floor(Parties[1].Member[0]->Spe*statboostmult(Parties[1].Member[0]->StatBoosts[4]))*EnemySpeedTM) {
        First = (rand() % 2);
      } else {
        First = floor(Parties[0].Member[0]->Spe*statboostmult(Parties[0].Member[0]->StatBoosts[4]))*PlayerSpeedTM > floor(Parties[1].Member[0]->Spe*statboostmult(Parties[1].Member[0]->StatBoosts[4]))*EnemySpeedTM;
      }
        } else {
        First = (MoveList[Turns[0]->Move].Priority > MoveList[Turns[1]->Move].Priority);
        }
      if (PlayerSwitch ^ EnemySwitch) {
        First = PlayerSwitch;
      }
      // post speed,stab and reset funcs
      AbilityList[Parties[0].Member[0]->Ability].abilityfunc(1,0);
      AbilityList[Parties[1].Member[0]->Ability].abilityfunc(1,1);
      MOVE_FUNC_LIST[MoveList[Turns[0]->Move].movefunc](0,0);
      MOVE_FUNC_LIST[MoveList[Turns[1]->Move].movefunc](0,1);
      ACTIVATE_EFFECTS(0,0);
      ACTIVATE_EFFECTS(0,1);
      
        ExecuteMove(!First);
        ExecuteMove(First);
      
      if (floor(Parties[0].Member[0]->Spe*statboostmult(Parties[0].Member[0]->StatBoosts[4]))*PlayerSpeedTM == floor(Parties[1].Member[0]->Spe*statboostmult(Parties[1].Member[0]->StatBoosts[4]))*EnemySpeedTM) {
        EndFirst = (rand() % 2);
      } else {
        EndFirst = floor(Parties[0].Member[0]->Spe*statboostmult(Parties[0].Member[0]->StatBoosts[4]))*PlayerSpeedTM > floor(Parties[1].Member[0]->Spe*statboostmult(Parties[1].Member[0]->StatBoosts[4]))*EnemySpeedTM;
      }

      endturn(!EndFirst);
      endturn(EndFirst);
      
      printf("\n");

      Execute = 0;
      Retrieve = 1;
    }
  }
  return 0;
}