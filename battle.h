int Battle() {
  printf("%lu\n",sizeof(struct Move));
  while (StatCalc == 1) {
  PlayerParty.Member[0]->Hp =  ((PlayerParty.Member[0]->IVHp + 2 * PlayerParty.Member[0]->Poke->Hp + (PlayerParty.Member[0]->EVHp/4)) * PlayerParty.Member[0]->Level/100 ) + 10 +PlayerParty.Member[0]->Level;
  
  PlayerParty.Member[0]->Atk = (((PlayerParty.Member[0]->IVAtk + 2 * PlayerParty.Member[0]->Poke->Atk + (PlayerParty.Member[0]->EVAtk/4) ) * PlayerParty.Member[0]->Level/100 ) + 5) * PlayerParty.Member[0]->Nature->Atk;
  
  PlayerParty.Member[0]->Def = (((PlayerParty.Member[0]->IVDef + 2 * PlayerParty.Member[0]->Poke->Def + (PlayerParty.Member[0]->EVDef/4) ) * PlayerParty.Member[0]->Level/100 ) + 5) * PlayerParty.Member[0]->Nature->Def;
  
  PlayerParty.Member[0]->SpA = (((PlayerParty.Member[0]->IVSpA + 2 * PlayerParty.Member[0]->Poke->SpA + (PlayerParty.Member[0]->EVSpA/4) ) * PlayerParty.Member[0]->Level/100 ) + 5) * PlayerParty.Member[0]->Nature->SpA;
  
  PlayerParty.Member[0]->SpD = (((PlayerParty.Member[0]->IVSpD + 2 * PlayerParty.Member[0]->Poke->SpD + (PlayerParty.Member[0]->EVSpD/4) ) * PlayerParty.Member[0]->Level/100 ) + 5) * PlayerParty.Member[0]->Nature->SpD;

  PlayerParty.Member[0]->Spe = (((PlayerParty.Member[0]->IVSpe + 2 * PlayerParty.Member[0]->Poke->Spe + (PlayerParty.Member[0]->EVSpe/4) ) * PlayerParty.Member[0]->Level/100 ) + 5) * PlayerParty.Member[0]->Nature->Spe;

  PlayerParty.Member[0]->Move1.PP = MoveList[PlayerParty.Member[0]->Move1.Move].PP * PlayerParty.Member[0]->Move1.PPmult;
  PlayerParty.Member[0]->Move2.PP = MoveList[PlayerParty.Member[0]->Move2.Move].PP * PlayerParty.Member[0]->Move2.PPmult;
  PlayerParty.Member[0]->Move3.PP = MoveList[PlayerParty.Member[0]->Move3.Move].PP * PlayerParty.Member[0]->Move3.PPmult;
  PlayerParty.Member[0]->Move4.PP = MoveList[PlayerParty.Member[0]->Move4.Move].PP * PlayerParty.Member[0]->Move4.PPmult;
  
  PlayerParty.Member[1]->Hp =  ((PlayerParty.Member[1]->IVHp + 2 * PlayerParty.Member[1]->Poke->Hp + (PlayerParty.Member[1]->EVHp/4)) * PlayerParty.Member[1]->Level/100 ) + 10 +PlayerParty.Member[1]->Level;
  
  PlayerParty.Member[1]->Atk = (((PlayerParty.Member[1]->IVAtk + 2 * PlayerParty.Member[1]->Poke->Atk + (PlayerParty.Member[1]->EVAtk/4) ) * PlayerParty.Member[1]->Level/100 ) + 5) * PlayerParty.Member[1]->Nature->Atk;
  
  PlayerParty.Member[1]->Def = (((PlayerParty.Member[1]->IVDef + 2 * PlayerParty.Member[1]->Poke->Def + (PlayerParty.Member[1]->EVDef/4) ) * PlayerParty.Member[1]->Level/100 ) + 5) * PlayerParty.Member[1]->Nature->Def;
  
  PlayerParty.Member[1]->SpA = (((PlayerParty.Member[1]->IVSpA + 2 * PlayerParty.Member[1]->Poke->SpA + (PlayerParty.Member[1]->EVSpA/4) ) * PlayerParty.Member[1]->Level/100 ) + 5) * PlayerParty.Member[1]->Nature->SpA;
  
  PlayerParty.Member[1]->SpD = (((PlayerParty.Member[1]->IVSpD + 2 * PlayerParty.Member[1]->Poke->SpD + (PlayerParty.Member[1]->EVSpD/4) ) * PlayerParty.Member[1]->Level/100 ) + 5) * PlayerParty.Member[1]->Nature->SpD;

  PlayerParty.Member[1]->Spe = (((PlayerParty.Member[1]->IVSpe + 2 * PlayerParty.Member[1]->Poke->Spe + (PlayerParty.Member[1]->EVSpe/4) ) * PlayerParty.Member[1]->Level/100 ) + 5) * PlayerParty.Member[1]->Nature->Spe;

  PlayerParty.Member[1]->Move1.PP = MoveList[PlayerParty.Member[1]->Move1.Move].PP * PlayerParty.Member[1]->Move1.PPmult;
  PlayerParty.Member[1]->Move2.PP = MoveList[PlayerParty.Member[1]->Move2.Move].PP * PlayerParty.Member[1]->Move2.PPmult;
  PlayerParty.Member[1]->Move3.PP = MoveList[PlayerParty.Member[1]->Move3.Move].PP * PlayerParty.Member[1]->Move3.PPmult;
  PlayerParty.Member[1]->Move4.PP = MoveList[PlayerParty.Member[1]->Move4.Move].PP * PlayerParty.Member[1]->Move4.PPmult;
    
   PlayerParty.Member[2]->Hp =  ((PlayerParty.Member[2]->IVHp + 2 * PlayerParty.Member[2]->Poke->Hp + (PlayerParty.Member[2]->EVHp/4)) * PlayerParty.Member[2]->Level/100 ) + 10 +PlayerParty.Member[2]->Level;
  
  PlayerParty.Member[2]->Atk = (((PlayerParty.Member[2]->IVAtk + 2 * PlayerParty.Member[2]->Poke->Atk + (PlayerParty.Member[2]->EVAtk/4) ) * PlayerParty.Member[2]->Level/100 ) + 5) * PlayerParty.Member[2]->Nature->Atk;
  
  PlayerParty.Member[2]->Def = (((PlayerParty.Member[2]->IVDef + 2 * PlayerParty.Member[2]->Poke->Def + (PlayerParty.Member[2]->EVDef/4) ) * PlayerParty.Member[2]->Level/100 ) + 5) * PlayerParty.Member[2]->Nature->Def;
  
  PlayerParty.Member[2]->SpA = (((PlayerParty.Member[2]->IVSpA + 2 * PlayerParty.Member[2]->Poke->SpA + (PlayerParty.Member[2]->EVSpA/4) ) * PlayerParty.Member[2]->Level/100 ) + 5) * PlayerParty.Member[2]->Nature->SpA;
  
  PlayerParty.Member[2]->SpD = (((PlayerParty.Member[2]->IVSpD + 2 * PlayerParty.Member[2]->Poke->SpD + (PlayerParty.Member[2]->EVSpD/4) ) * PlayerParty.Member[2]->Level/100 ) + 5) * PlayerParty.Member[2]->Nature->SpD;

  PlayerParty.Member[2]->Spe = (((PlayerParty.Member[2]->IVSpe + 2 * PlayerParty.Member[2]->Poke->Spe + (PlayerParty.Member[2]->EVSpe/4) ) * PlayerParty.Member[2]->Level/100 ) + 5) * PlayerParty.Member[2]->Nature->Spe; 

  PlayerParty.Member[2]->Move1.PP = MoveList[PlayerParty.Member[2]->Move1.Move].PP * PlayerParty.Member[2]->Move1.PPmult;
  PlayerParty.Member[2]->Move2.PP = MoveList[PlayerParty.Member[2]->Move2.Move].PP * PlayerParty.Member[2]->Move2.PPmult;
  PlayerParty.Member[2]->Move3.PP = MoveList[PlayerParty.Member[2]->Move3.Move].PP * PlayerParty.Member[2]->Move3.PPmult;
  PlayerParty.Member[2]->Move4.PP = MoveList[PlayerParty.Member[2]->Move4.Move].PP * PlayerParty.Member[2]->Move4.PPmult;

   PlayerParty.Member[3]->Hp =  ((PlayerParty.Member[3]->IVHp + 2 * PlayerParty.Member[3]->Poke->Hp + (PlayerParty.Member[3]->EVHp/4)) * PlayerParty.Member[3]->Level/100 ) + 10 +PlayerParty.Member[3]->Level;
  
  PlayerParty.Member[3]->Atk = (((PlayerParty.Member[3]->IVAtk + 2 * PlayerParty.Member[3]->Poke->Atk + (PlayerParty.Member[3]->EVAtk/4) ) * PlayerParty.Member[3]->Level/100 ) + 5) * PlayerParty.Member[3]->Nature->Atk;
  
  PlayerParty.Member[3]->Def = (((PlayerParty.Member[3]->IVDef + 2 * PlayerParty.Member[3]->Poke->Def + (PlayerParty.Member[3]->EVDef/4) ) * PlayerParty.Member[3]->Level/100 ) + 5) * PlayerParty.Member[3]->Nature->Def;
  
  PlayerParty.Member[3]->SpA = (((PlayerParty.Member[3]->IVSpA + 2 * PlayerParty.Member[3]->Poke->SpA + (PlayerParty.Member[3]->EVSpA/4) ) * PlayerParty.Member[3]->Level/100 ) + 5) * PlayerParty.Member[3]->Nature->SpA;
  
  PlayerParty.Member[3]->SpD = (((PlayerParty.Member[3]->IVSpD + 2 * PlayerParty.Member[3]->Poke->SpD + (PlayerParty.Member[3]->EVSpD/4) ) * PlayerParty.Member[3]->Level/100 ) + 5) * PlayerParty.Member[3]->Nature->SpD;

  PlayerParty.Member[3]->Spe = (((PlayerParty.Member[3]->IVSpe + 2 * PlayerParty.Member[3]->Poke->Spe + (PlayerParty.Member[3]->EVSpe/4) ) * PlayerParty.Member[3]->Level/100 ) + 5) * PlayerParty.Member[3]->Nature->Spe;

  PlayerParty.Member[3]->Move1.PP = MoveList[PlayerParty.Member[3]->Move1.Move].PP * PlayerParty.Member[3]->Move1.PPmult;
  PlayerParty.Member[3]->Move2.PP = MoveList[PlayerParty.Member[3]->Move2.Move].PP * PlayerParty.Member[3]->Move2.PPmult;
  PlayerParty.Member[3]->Move3.PP = MoveList[PlayerParty.Member[3]->Move3.Move].PP * PlayerParty.Member[3]->Move3.PPmult;
  PlayerParty.Member[3]->Move4.PP = MoveList[PlayerParty.Member[3]->Move4.Move].PP * PlayerParty.Member[3]->Move4.PPmult;

  PlayerParty.Member[4]->Hp =  ((PlayerParty.Member[4]->IVHp + 2 * PlayerParty.Member[4]->Poke->Hp + (PlayerParty.Member[4]->EVHp/4)) * PlayerParty.Member[4]->Level/100 ) + 10 +PlayerParty.Member[4]->Level;
  
  PlayerParty.Member[4]->Atk = (((PlayerParty.Member[4]->IVAtk + 2 * PlayerParty.Member[4]->Poke->Atk + (PlayerParty.Member[4]->EVAtk/4) ) * PlayerParty.Member[4]->Level/100 ) + 5) * PlayerParty.Member[4]->Nature->Atk;
  
  PlayerParty.Member[4]->Def = (((PlayerParty.Member[4]->IVDef + 2 * PlayerParty.Member[4]->Poke->Def + (PlayerParty.Member[4]->EVDef/4) ) * PlayerParty.Member[4]->Level/100 ) + 5) * PlayerParty.Member[4]->Nature->Def;
  
  PlayerParty.Member[4]->SpA = (((PlayerParty.Member[4]->IVSpA + 2 * PlayerParty.Member[4]->Poke->SpA + (PlayerParty.Member[4]->EVSpA/4) ) * PlayerParty.Member[4]->Level/100 ) + 5) * PlayerParty.Member[4]->Nature->SpA;
  
  PlayerParty.Member[4]->SpD = (((PlayerParty.Member[4]->IVSpD + 2 * PlayerParty.Member[4]->Poke->SpD + (PlayerParty.Member[4]->EVSpD/4) ) * PlayerParty.Member[4]->Level/100 ) + 5) * PlayerParty.Member[4]->Nature->SpD;

  PlayerParty.Member[4]->Spe = (((PlayerParty.Member[4]->IVSpe + 2 * PlayerParty.Member[4]->Poke->Spe + (PlayerParty.Member[4]->EVSpe/4) ) * PlayerParty.Member[4]->Level/100 ) + 5) * PlayerParty.Member[4]->Nature->Spe;

  PlayerParty.Member[4]->Move1.PP = MoveList[PlayerParty.Member[4]->Move1.Move].PP * PlayerParty.Member[4]->Move1.PPmult;
  PlayerParty.Member[4]->Move2.PP = MoveList[PlayerParty.Member[4]->Move2.Move].PP * PlayerParty.Member[4]->Move2.PPmult;
  PlayerParty.Member[4]->Move3.PP = MoveList[PlayerParty.Member[4]->Move3.Move].PP * PlayerParty.Member[4]->Move3.PPmult;
  PlayerParty.Member[4]->Move4.PP = MoveList[PlayerParty.Member[4]->Move4.Move].PP * PlayerParty.Member[4]->Move4.PPmult;

  PlayerParty.Member[5]->Hp =  ((PlayerParty.Member[5]->IVHp + 2 * PlayerParty.Member[5]->Poke->Hp + (PlayerParty.Member[5]->EVHp/4)) * PlayerParty.Member[5]->Level/100 ) + 10 +PlayerParty.Member[5]->Level;
  
  PlayerParty.Member[5]->Atk = (((PlayerParty.Member[5]->IVAtk + 2 * PlayerParty.Member[5]->Poke->Atk + (PlayerParty.Member[5]->EVAtk/4) ) * PlayerParty.Member[5]->Level/100 ) + 5) * PlayerParty.Member[5]->Nature->Atk;
  
  PlayerParty.Member[5]->Def = (((PlayerParty.Member[5]->IVDef + 2 * PlayerParty.Member[5]->Poke->Def + (PlayerParty.Member[5]->EVDef/4) ) * PlayerParty.Member[5]->Level/100 ) + 5) * PlayerParty.Member[5]->Nature->Def;
  
  PlayerParty.Member[5]->SpA = (((PlayerParty.Member[5]->IVSpA + 2 * PlayerParty.Member[5]->Poke->SpA + (PlayerParty.Member[5]->EVSpA/4) ) * PlayerParty.Member[5]->Level/100 ) + 5) * PlayerParty.Member[5]->Nature->SpA;
  
  PlayerParty.Member[5]->SpD = (((PlayerParty.Member[5]->IVSpD + 2 * PlayerParty.Member[5]->Poke->SpD + (PlayerParty.Member[5]->EVSpD/4) ) * PlayerParty.Member[5]->Level/100 ) + 5) * PlayerParty.Member[5]->Nature->SpD;

  PlayerParty.Member[5]->Spe = (((PlayerParty.Member[5]->IVSpe + 2 * PlayerParty.Member[5]->Poke->Spe + (PlayerParty.Member[5]->EVSpe/4) ) * PlayerParty.Member[5]->Level/100 ) + 5) * PlayerParty.Member[5]->Nature->Spe;

  PlayerParty.Member[5]->Move1.PP = MoveList[PlayerParty.Member[5]->Move1.Move].PP * PlayerParty.Member[5]->Move1.PPmult;
  PlayerParty.Member[5]->Move2.PP = MoveList[PlayerParty.Member[5]->Move2.Move].PP * PlayerParty.Member[5]->Move2.PPmult;
  PlayerParty.Member[5]->Move3.PP = MoveList[PlayerParty.Member[5]->Move3.Move].PP * PlayerParty.Member[5]->Move3.PPmult;
  PlayerParty.Member[5]->Move4.PP = MoveList[PlayerParty.Member[5]->Move4.Move].PP * PlayerParty.Member[5]->Move4.PPmult;

  EnemyParty.Member[0]->Hp =  ((EnemyParty.Member[0]->IVHp + 2 * EnemyParty.Member[0]->Poke->Hp + (EnemyParty.Member[0]->EVHp/4)) * EnemyParty.Member[0]->Level/100 ) + 10 +EnemyParty.Member[0]->Level;
  
  EnemyParty.Member[0]->Atk = (((EnemyParty.Member[0]->IVAtk + 2 * EnemyParty.Member[0]->Poke->Atk + (EnemyParty.Member[0]->EVAtk/4) ) * EnemyParty.Member[0]->Level/100 ) + 5) * EnemyParty.Member[0]->Nature->Atk;
  
  EnemyParty.Member[0]->Def = (((EnemyParty.Member[0]->IVDef + 2 * EnemyParty.Member[0]->Poke->Def + (EnemyParty.Member[0]->EVDef/4) ) * EnemyParty.Member[0]->Level/100 ) + 5) * EnemyParty.Member[0]->Nature->Def;
  
  EnemyParty.Member[0]->SpA = (((EnemyParty.Member[0]->IVSpA + 2 * EnemyParty.Member[0]->Poke->SpA + (EnemyParty.Member[0]->EVSpA/4) ) * EnemyParty.Member[0]->Level/100 ) + 5) * EnemyParty.Member[0]->Nature->SpA;
  
  EnemyParty.Member[0]->SpD = (((EnemyParty.Member[0]->IVSpD + 2 * EnemyParty.Member[0]->Poke->SpD + (EnemyParty.Member[0]->EVSpD/4) ) * EnemyParty.Member[0]->Level/100 ) + 5) * EnemyParty.Member[0]->Nature->SpD;

  EnemyParty.Member[0]->Spe = (((EnemyParty.Member[0]->IVSpe + 2 * EnemyParty.Member[0]->Poke->Spe + (EnemyParty.Member[0]->EVSpe/4) ) * EnemyParty.Member[0]->Level/100 ) + 5) * EnemyParty.Member[0]->Nature->Spe;

  EnemyParty.Member[0]->Move1.PP = MoveList[EnemyParty.Member[0]->Move1.Move].PP * EnemyParty.Member[0]->Move1.PPmult;
  EnemyParty.Member[0]->Move2.PP = MoveList[EnemyParty.Member[0]->Move2.Move].PP * EnemyParty.Member[0]->Move2.PPmult;
  EnemyParty.Member[0]->Move3.PP = MoveList[EnemyParty.Member[0]->Move3.Move].PP * EnemyParty.Member[0]->Move3.PPmult;
  EnemyParty.Member[0]->Move4.PP = MoveList[EnemyParty.Member[0]->Move4.Move].PP * EnemyParty.Member[0]->Move4.PPmult;

  EnemyParty.Member[1]->Hp =  ((EnemyParty.Member[1]->IVHp + 2 * EnemyParty.Member[1]->Poke->Hp + (EnemyParty.Member[1]->EVHp/4)) * EnemyParty.Member[1]->Level/100 ) + 10 +EnemyParty.Member[1]->Level;
  
  EnemyParty.Member[1]->Atk = (((EnemyParty.Member[1]->IVAtk + 2 * EnemyParty.Member[1]->Poke->Atk + (EnemyParty.Member[1]->EVAtk/4) ) * EnemyParty.Member[1]->Level/100 ) + 5) * EnemyParty.Member[1]->Nature->Atk;
  
  EnemyParty.Member[1]->Def = (((EnemyParty.Member[1]->IVDef + 2 * EnemyParty.Member[1]->Poke->Def + (EnemyParty.Member[1]->EVDef/4) ) * EnemyParty.Member[1]->Level/100 ) + 5) * EnemyParty.Member[1]->Nature->Def;
  
  EnemyParty.Member[1]->SpA = (((EnemyParty.Member[1]->IVSpA + 2 * EnemyParty.Member[1]->Poke->SpA + (EnemyParty.Member[1]->EVSpA/4) ) * EnemyParty.Member[1]->Level/100 ) + 5) * EnemyParty.Member[1]->Nature->SpA;
  
  EnemyParty.Member[1]->SpD = (((EnemyParty.Member[1]->IVSpD + 2 * EnemyParty.Member[1]->Poke->SpD + (EnemyParty.Member[1]->EVSpD/4) ) * EnemyParty.Member[1]->Level/100 ) + 5) * EnemyParty.Member[1]->Nature->SpD;

  EnemyParty.Member[1]->Spe = (((EnemyParty.Member[1]->IVSpe + 2 * EnemyParty.Member[1]->Poke->Spe + (EnemyParty.Member[1]->EVSpe/4) ) * EnemyParty.Member[1]->Level/100 ) + 5) * EnemyParty.Member[1]->Nature->Spe;

  EnemyParty.Member[1]->Move1.PP = MoveList[EnemyParty.Member[1]->Move1.Move].PP * EnemyParty.Member[1]->Move1.PPmult;
  EnemyParty.Member[1]->Move2.PP = MoveList[EnemyParty.Member[1]->Move2.Move].PP * EnemyParty.Member[1]->Move2.PPmult;
  EnemyParty.Member[1]->Move3.PP = MoveList[EnemyParty.Member[1]->Move3.Move].PP * EnemyParty.Member[1]->Move3.PPmult;
  EnemyParty.Member[1]->Move4.PP = MoveList[EnemyParty.Member[1]->Move4.Move].PP * EnemyParty.Member[1]->Move4.PPmult;

   EnemyParty.Member[2]->Hp =  ((EnemyParty.Member[2]->IVHp + 2 * EnemyParty.Member[2]->Poke->Hp + (EnemyParty.Member[2]->EVHp/4)) * EnemyParty.Member[2]->Level/100 ) + 10 +EnemyParty.Member[2]->Level;
  
  EnemyParty.Member[2]->Atk = (((EnemyParty.Member[2]->IVAtk + 2 * EnemyParty.Member[2]->Poke->Atk + (EnemyParty.Member[2]->EVAtk/4) ) * EnemyParty.Member[2]->Level/100 ) + 5) * EnemyParty.Member[2]->Nature->Atk;
  
  EnemyParty.Member[2]->Def = (((EnemyParty.Member[2]->IVDef + 2 * EnemyParty.Member[2]->Poke->Def + (EnemyParty.Member[2]->EVDef/4) ) * EnemyParty.Member[2]->Level/100 ) + 5) * EnemyParty.Member[2]->Nature->Def;
  
  EnemyParty.Member[2]->SpA = (((EnemyParty.Member[2]->IVSpA + 2 * EnemyParty.Member[2]->Poke->SpA + (EnemyParty.Member[2]->EVSpA/4) ) * EnemyParty.Member[2]->Level/100 ) + 5) * EnemyParty.Member[2]->Nature->SpA;
  
  EnemyParty.Member[2]->SpD = (((EnemyParty.Member[2]->IVSpD + 2 * EnemyParty.Member[2]->Poke->SpD + (EnemyParty.Member[2]->EVSpD/4) ) * EnemyParty.Member[2]->Level/100 ) + 5) * EnemyParty.Member[2]->Nature->SpD;

  EnemyParty.Member[2]->Spe = (((EnemyParty.Member[2]->IVSpe + 2 * EnemyParty.Member[2]->Poke->Spe + (EnemyParty.Member[2]->EVSpe/4) ) * EnemyParty.Member[2]->Level/100 ) + 5) * EnemyParty.Member[2]->Nature->Spe; 

  EnemyParty.Member[2]->Move1.PP = MoveList[EnemyParty.Member[2]->Move1.Move].PP * EnemyParty.Member[2]->Move1.PPmult;
  EnemyParty.Member[2]->Move2.PP = MoveList[EnemyParty.Member[2]->Move2.Move].PP * EnemyParty.Member[2]->Move2.PPmult;
  EnemyParty.Member[2]->Move3.PP = MoveList[EnemyParty.Member[2]->Move3.Move].PP * EnemyParty.Member[2]->Move3.PPmult;
  EnemyParty.Member[2]->Move4.PP = MoveList[EnemyParty.Member[2]->Move4.Move].PP * EnemyParty.Member[2]->Move4.PPmult;

   EnemyParty.Member[3]->Hp =  ((EnemyParty.Member[3]->IVHp + 2 * EnemyParty.Member[3]->Poke->Hp + (EnemyParty.Member[3]->EVHp/4)) * EnemyParty.Member[3]->Level/100 ) + 10 +EnemyParty.Member[3]->Level;
  
  EnemyParty.Member[3]->Atk = (((EnemyParty.Member[3]->IVAtk + 2 * EnemyParty.Member[3]->Poke->Atk + (EnemyParty.Member[3]->EVAtk/4) ) * EnemyParty.Member[3]->Level/100 ) + 5) * EnemyParty.Member[3]->Nature->Atk;
  
  EnemyParty.Member[3]->Def = (((EnemyParty.Member[3]->IVDef + 2 * EnemyParty.Member[3]->Poke->Def + (EnemyParty.Member[3]->EVDef/4) ) * EnemyParty.Member[3]->Level/100 ) + 5) * EnemyParty.Member[3]->Nature->Def;
  
  EnemyParty.Member[3]->SpA = (((EnemyParty.Member[3]->IVSpA + 2 * EnemyParty.Member[3]->Poke->SpA + (EnemyParty.Member[3]->EVSpA/4) ) * EnemyParty.Member[3]->Level/100 ) + 5) * EnemyParty.Member[3]->Nature->SpA;
  
  EnemyParty.Member[3]->SpD = (((EnemyParty.Member[3]->IVSpD + 2 * EnemyParty.Member[3]->Poke->SpD + (EnemyParty.Member[3]->EVSpD/4) ) * EnemyParty.Member[3]->Level/100 ) + 5) * EnemyParty.Member[3]->Nature->SpD;

  EnemyParty.Member[3]->Spe = (((EnemyParty.Member[3]->IVSpe + 2 * EnemyParty.Member[3]->Poke->Spe + (EnemyParty.Member[3]->EVSpe/4) ) * EnemyParty.Member[3]->Level/100 ) + 5) * EnemyParty.Member[3]->Nature->Spe;

  EnemyParty.Member[3]->Move1.PP = MoveList[EnemyParty.Member[3]->Move1.Move].PP * EnemyParty.Member[3]->Move1.PPmult;
  EnemyParty.Member[3]->Move2.PP = MoveList[EnemyParty.Member[3]->Move2.Move].PP * EnemyParty.Member[3]->Move2.PPmult;
  EnemyParty.Member[3]->Move3.PP = MoveList[EnemyParty.Member[3]->Move3.Move].PP * EnemyParty.Member[3]->Move3.PPmult;
  EnemyParty.Member[3]->Move4.PP = MoveList[EnemyParty.Member[3]->Move4.Move].PP * EnemyParty.Member[3]->Move4.PPmult;
    
  EnemyParty.Member[4]->Hp =  ((EnemyParty.Member[4]->IVHp + 2 * EnemyParty.Member[4]->Poke->Hp + (EnemyParty.Member[4]->EVHp/4)) * EnemyParty.Member[4]->Level/100 ) + 10 +EnemyParty.Member[4]->Level;
  
  EnemyParty.Member[4]->Atk = (((EnemyParty.Member[4]->IVAtk + 2 * EnemyParty.Member[4]->Poke->Atk + (EnemyParty.Member[4]->EVAtk/4) ) * EnemyParty.Member[4]->Level/100 ) + 5) * EnemyParty.Member[4]->Nature->Atk;
  
  EnemyParty.Member[4]->Def = (((EnemyParty.Member[4]->IVDef + 2 * EnemyParty.Member[4]->Poke->Def + (EnemyParty.Member[4]->EVDef/4) ) * EnemyParty.Member[4]->Level/100 ) + 5) * EnemyParty.Member[4]->Nature->Def;
  
  EnemyParty.Member[4]->SpA = (((EnemyParty.Member[4]->IVSpA + 2 * EnemyParty.Member[4]->Poke->SpA + (EnemyParty.Member[4]->EVSpA/4) ) * EnemyParty.Member[4]->Level/100 ) + 5) * EnemyParty.Member[4]->Nature->SpA;
  
  EnemyParty.Member[4]->SpD = (((EnemyParty.Member[4]->IVSpD + 2 * EnemyParty.Member[4]->Poke->SpD + (EnemyParty.Member[4]->EVSpD/4) ) * EnemyParty.Member[4]->Level/100 ) + 5) * EnemyParty.Member[4]->Nature->SpD;

  EnemyParty.Member[4]->Spe = (((EnemyParty.Member[4]->IVSpe + 2 * EnemyParty.Member[4]->Poke->Spe + (EnemyParty.Member[4]->EVSpe/4) ) * EnemyParty.Member[4]->Level/100 ) + 5) * EnemyParty.Member[4]->Nature->Spe;

  EnemyParty.Member[4]->Move1.PP = MoveList[EnemyParty.Member[4]->Move1.Move].PP * EnemyParty.Member[4]->Move1.PPmult;
  EnemyParty.Member[4]->Move2.PP = MoveList[EnemyParty.Member[4]->Move2.Move].PP * EnemyParty.Member[4]->Move2.PPmult;
  EnemyParty.Member[4]->Move3.PP = MoveList[EnemyParty.Member[4]->Move3.Move].PP * EnemyParty.Member[4]->Move3.PPmult;
  EnemyParty.Member[4]->Move4.PP = MoveList[EnemyParty.Member[4]->Move4.Move].PP * EnemyParty.Member[4]->Move4.PPmult;

  EnemyParty.Member[5]->Hp =  ((EnemyParty.Member[5]->IVHp + 2 * EnemyParty.Member[5]->Poke->Hp + (EnemyParty.Member[5]->EVHp/4)) * EnemyParty.Member[5]->Level/100 ) + 10 +EnemyParty.Member[5]->Level;
  
  EnemyParty.Member[5]->Atk = (((EnemyParty.Member[5]->IVAtk + 2 * EnemyParty.Member[5]->Poke->Atk + (EnemyParty.Member[5]->EVAtk/4) ) * EnemyParty.Member[5]->Level/100 ) + 5) * EnemyParty.Member[5]->Nature->Atk;
  
  EnemyParty.Member[5]->Def = (((EnemyParty.Member[5]->IVDef + 2 * EnemyParty.Member[5]->Poke->Def + (EnemyParty.Member[5]->EVDef/4) ) * EnemyParty.Member[5]->Level/100 ) + 5) * EnemyParty.Member[5]->Nature->Def;
  
  EnemyParty.Member[5]->SpA = (((EnemyParty.Member[5]->IVSpA + 2 * EnemyParty.Member[5]->Poke->SpA + (EnemyParty.Member[5]->EVSpA/4) ) * EnemyParty.Member[5]->Level/100 ) + 5) * EnemyParty.Member[5]->Nature->SpA;
  
  EnemyParty.Member[5]->SpD = (((EnemyParty.Member[5]->IVSpD + 2 * EnemyParty.Member[5]->Poke->SpD + (EnemyParty.Member[5]->EVSpD/4) ) * EnemyParty.Member[5]->Level/100 ) + 5) * EnemyParty.Member[5]->Nature->SpD;

  EnemyParty.Member[5]->Spe = (((EnemyParty.Member[5]->IVSpe + 2 * EnemyParty.Member[5]->Poke->Spe + (EnemyParty.Member[5]->EVSpe/4) ) * EnemyParty.Member[5]->Level/100 ) + 5) * EnemyParty.Member[5]->Nature->Spe;

  EnemyParty.Member[5]->Move1.PP = MoveList[EnemyParty.Member[5]->Move1.Move].PP * EnemyParty.Member[5]->Move1.PPmult;
  EnemyParty.Member[5]->Move2.PP = MoveList[EnemyParty.Member[5]->Move2.Move].PP * EnemyParty.Member[5]->Move2.PPmult;
  EnemyParty.Member[5]->Move3.PP = MoveList[EnemyParty.Member[5]->Move3.Move].PP * EnemyParty.Member[5]->Move3.PPmult;
  EnemyParty.Member[5]->Move4.PP = MoveList[EnemyParty.Member[5]->Move4.Move].PP * EnemyParty.Member[5]->Move4.PPmult;


    printf("\nHeal?:");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) {
      PlayerParty.Member[0]->CurrentHp = PlayerParty.Member[0]->Hp;
      PlayerParty.Member[1]->CurrentHp = PlayerParty.Member[1]->Hp;
      PlayerParty.Member[2]->CurrentHp = PlayerParty.Member[2]->Hp;
      PlayerParty.Member[3]->CurrentHp = PlayerParty.Member[3]->Hp;
      PlayerParty.Member[4]->CurrentHp = PlayerParty.Member[4]->Hp;
      PlayerParty.Member[5]->CurrentHp = PlayerParty.Member[5]->Hp;

      EnemyParty.Member[0]->CurrentHp = EnemyParty.Member[0]->Hp;
      EnemyParty.Member[1]->CurrentHp = EnemyParty.Member[1]->Hp;
      EnemyParty.Member[2]->CurrentHp = EnemyParty.Member[2]->Hp;
      EnemyParty.Member[3]->CurrentHp = EnemyParty.Member[3]->Hp;
      EnemyParty.Member[4]->CurrentHp = EnemyParty.Member[4]->Hp;
      EnemyParty.Member[5]->CurrentHp = EnemyParty.Member[5]->Hp;
      
      PlayerParty.Member[0]->Non_Volatile_Status = 0; 
      PlayerParty.Member[1]->Non_Volatile_Status = 0;
      PlayerParty.Member[2]->Non_Volatile_Status = 0;
      PlayerParty.Member[3]->Non_Volatile_Status = 0;
      PlayerParty.Member[4]->Non_Volatile_Status = 0;
      PlayerParty.Member[5]->Non_Volatile_Status = 0;

      EnemyParty.Member[0]->Non_Volatile_Status = 0;
      EnemyParty.Member[1]->Non_Volatile_Status = 0;
      EnemyParty.Member[2]->Non_Volatile_Status = 0;
      EnemyParty.Member[3]->Non_Volatile_Status = 0;
      EnemyParty.Member[4]->Non_Volatile_Status = 0;
      EnemyParty.Member[5]->Non_Volatile_Status = 0;

      PlayerParty.Member[0]->ItemUsable = 1; 
      PlayerParty.Member[1]->ItemUsable = 1;
      PlayerParty.Member[2]->ItemUsable = 1;
      PlayerParty.Member[3]->ItemUsable = 1;
      PlayerParty.Member[4]->ItemUsable = 1;
      PlayerParty.Member[5]->ItemUsable = 1;

      EnemyParty.Member[0]->ItemUsable = 1;
      EnemyParty.Member[1]->ItemUsable = 1;
      EnemyParty.Member[2]->ItemUsable = 1;
      EnemyParty.Member[3]->ItemUsable = 1;
      EnemyParty.Member[4]->ItemUsable = 1;
      EnemyParty.Member[5]->ItemUsable = 1;

    }
    printf("\033[1A");
    printf("\033[2K");
    StatCalc = 0;
    BattleMode = 1;
    Retrieve = 1;
  }
  
  printf("Go %s!\n",PlayerParty.Member[0]->Poke->Name);
  printf("The Enemy sent out %s!\n\n", EnemyParty.Member[0]->Poke->Name);
  YourTurn = &Empty_slot;
  EnemyTurn = &Empty_slot;
  while(BattleMode == 1) {
    
    while(Retrieve == 1) {
    PlayerSwitch = 0;
    EnemySwitch = 0;
    printf("Enter your move: ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,MoveList[PlayerParty.Member[0]->Move1.Move].Name) == 0) {
      YourTurn = &PlayerParty.Member[0]->Move1;
      if(PlayerParty.Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (PlayerParty.Member[0]->Move1.PP <= 0) {
    if (PlayerParty.Member[0]->Move2.PP <= 0 && PlayerParty.Member[0]->Move3.PP <= 0 && PlayerParty.Member[0]->Move4.PP <= 0) {
      YourTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,MoveList[PlayerParty.Member[0]->Move2.Move].Name) == 0) {
       YourTurn = &PlayerParty.Member[0]->Move2;
      if(PlayerParty.Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (PlayerParty.Member[0]->Move2.PP <= 0) {
    if (PlayerParty.Member[0]->Move1.PP <= 0 && PlayerParty.Member[0]->Move3.PP <= 0 && PlayerParty.Member[0]->Move4.PP <= 0) {
      YourTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,MoveList[PlayerParty.Member[0]->Move3.Move].Name) == 0) {
       YourTurn = &PlayerParty.Member[0]->Move3;
       if(PlayerParty.Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (PlayerParty.Member[0]->Move3.PP <= 0) {
    if (PlayerParty.Member[0]->Move1.PP <= 0 && PlayerParty.Member[0]->Move2.PP <= 0 && PlayerParty.Member[0]->Move4.PP <= 0) {
      YourTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,MoveList[PlayerParty.Member[0]->Move4.Move].Name) == 0) {
       YourTurn = &PlayerParty.Member[0]->Move4;
       if(PlayerParty.Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (PlayerParty.Member[0]->Move4.PP <= 0) {
    if (PlayerParty.Member[0]->Move1.PP <= 0 && PlayerParty.Member[0]->Move2.PP <= 0 && PlayerParty.Member[0]->Move3.PP <= 0) {
      YourTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    } else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.Member[1]->Poke->Name)) == 0 || strcmp(x,PlayerParty.Member[1]->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
       PlayerSwitchSave = &PlayerParty.Member[1];
       PlayerSwitch = 1;
      if(PlayerParty.Member[1]->Poke->Name == "NoPoke" || PlayerParty.Member[1]->CurrentHp <= 0) {
        printf("Move Selection Failed. Pilease retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.Member[2]->Poke->Name)) == 0 || strcmp(x,PlayerParty.Member[2]->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
       PlayerSwitchSave = &PlayerParty.Member[2];
       PlayerSwitch = 1;
      if(PlayerParty.Member[2]->Poke->Name == "NoPoke" || PlayerParty.Member[2]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.Member[3]->Poke->Name)) == 0 || strcmp(x,PlayerParty.Member[3]->Poke->Name) == 0  || strcmp(x,"P4") == 0) {
       PlayerSwitchSave = &PlayerParty.Member[3];
       PlayerSwitch = 1;
      if(PlayerParty.Member[3]->Poke->Name == "NoPoke" || PlayerParty.Member[3]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.Member[4]->Poke->Name)) == 0 || strcmp(x,PlayerParty.Member[4]->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
       PlayerSwitchSave = &PlayerParty.Member[4];
       PlayerSwitch = 1;
      if(PlayerParty.Member[4]->Poke->Name == "NoPoke" || PlayerParty.Member[4]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.Member[5]->Poke->Name)) == 0 || strcmp(x,PlayerParty.Member[5]->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
       PlayerSwitchSave = &PlayerParty.Member[5];
       PlayerSwitch = 1;
      if(PlayerParty.Member[5]->Poke->Name == "NoPoke" || PlayerParty.Member[5]->CurrentHp <= 0) {
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
      if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,MoveList[EnemyParty.Member[0]->Move1.Move].Name) == 0) {
      EnemyTurn = &EnemyParty.Member[0]->Move1;
      if(EnemyParty.Member[0]->Move1.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (EnemyParty.Member[0]->Move1.PP <= 0) {
    if (EnemyParty.Member[0]->Move2.PP <= 0 && EnemyParty.Member[0]->Move3.PP <= 0 && EnemyParty.Member[0]->Move4.PP <= 0) {
      EnemyTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,MoveList[EnemyParty.Member[0]->Move2.Move].Name) == 0) {
       EnemyTurn = &EnemyParty.Member[0]->Move2;
      if(EnemyParty.Member[0]->Move2.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (EnemyParty.Member[0]->Move2.PP <= 0) {
    if (EnemyParty.Member[0]->Move1.PP <= 0 && EnemyParty.Member[0]->Move3.PP <= 0 && EnemyParty.Member[0]->Move4.PP <= 0) {
      EnemyTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,MoveList[EnemyParty.Member[0]->Move3.Move].Name) == 0) {
       EnemyTurn = &EnemyParty.Member[0]->Move3;
      if(EnemyParty.Member[0]->Move3.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (EnemyParty.Member[0]->Move3.PP <= 0) {
    if (EnemyParty.Member[0]->Move1.PP <= 0 && EnemyParty.Member[0]->Move2.PP <= 0 && EnemyParty.Member[0]->Move4.PP <= 0) {
      EnemyTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,MoveList[EnemyParty.Member[0]->Move4.Move].Name) == 0) {
       EnemyTurn = &EnemyParty.Member[0]->Move4;
      if(EnemyParty.Member[0]->Move4.Move == Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (EnemyParty.Member[0]->Move4.PP <= 0) {
    if (EnemyParty.Member[0]->Move1.PP <= 0 && EnemyParty.Member[0]->Move2.PP <= 0 && EnemyParty.Member[0]->Move3.PP <= 0) {
      EnemyTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }  else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.Member[1]->Poke->Name)) == 0 || strcmp(x,EnemyParty.Member[1]->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
       EnemySwitchSave = &EnemyParty.Member[1];
       EnemySwitch = 1;
      if(EnemyParty.Member[1]->Poke->Name == "NoPoke" || EnemyParty.Member[1]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.Member[2]->Poke->Name)) == 0 || strcmp(x,EnemyParty.Member[2]->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
       EnemySwitchSave = &EnemyParty.Member[2];
       EnemySwitch = 1;
      if(EnemyParty.Member[2]->Poke->Name == "NoPoke" || EnemyParty.Member[2]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.Member[3]->Poke->Name)) == 0 || strcmp(x,EnemyParty.Member[3]->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
       EnemySwitchSave = &EnemyParty.Member[3];
       EnemySwitch = 1;
      if(EnemyParty.Member[3]->Poke->Name == "NoPoke" || EnemyParty.Member[3]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.Member[4]->Poke->Name)) == 0 || strcmp(x,EnemyParty.Member[4]->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
       EnemySwitchSave = &EnemyParty.Member[4];
       EnemySwitch = 1;
      if(EnemyParty.Member[4]->Poke->Name == "NoPoke" || EnemyParty.Member[4]->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.Member[5]->Poke->Name)) == 0 || strcmp(x,EnemyParty.Member[5]->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
       EnemySwitchSave = &EnemyParty.Member[5];
       EnemySwitch = 1;
      if(EnemyParty.Member[5]->Poke->Name == "NoPoke" || EnemyParty.Member[5]->CurrentHp <= 0) {
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
      if (MoveList[YourTurn->Move].Type == PlayerParty.Member[0]->Poke->Type1 || MoveList[YourTurn->Move].Type == PlayerParty.Member[0]->Poke->Type2) {
        STAB = 1.5;
      } else {
        STAB = 1;
      }

      if (MoveList[EnemyTurn->Move].Type == EnemyParty.Member[0]->Poke->Type1 || MoveList[EnemyTurn->Move].Type == EnemyParty.Member[0]->Poke->Type2) {
        EnemySTAB = 1.5;
      } else {
        EnemySTAB = 1;
      }
      // Change speed temp mult based on status
      if (PlayerParty.Member[0]->Non_Volatile_Status == 3) PlayerSpeedTM /= 2;
      if (EnemyParty.Member[0]->Non_Volatile_Status == 3) EnemySpeedTM /= 2;
      // sees who moves first
      if (MoveList[YourTurn->Move].Priority == MoveList[EnemyTurn->Move].Priority) {
      if (floor(PlayerParty.Member[0]->Spe*statboostmult(PlayerParty.Member[0]->StatBoosts[4]))*PlayerSpeedTM == floor(EnemyParty.Member[0]->Spe*statboostmult(EnemyParty.Member[0]->StatBoosts[4]))*EnemySpeedTM) {
        First = (rand() % 2);
      } else {
        First = floor(PlayerParty.Member[0]->Spe*statboostmult(PlayerParty.Member[0]->StatBoosts[4]))*PlayerSpeedTM > floor(EnemyParty.Member[0]->Spe*statboostmult(EnemyParty.Member[0]->StatBoosts[4]))*EnemySpeedTM;
      }
        } else {
        First = (MoveList[YourTurn->Move].Priority > MoveList[EnemyTurn->Move].Priority);
        }
      if (PlayerSwitch ^ EnemySwitch) {
        First = PlayerSwitch;
      }
      // post speed,stab and reset funcs
      AbilityList[PlayerParty.Member[0]->Ability].abilityfunc(1,0);
      AbilityList[EnemyParty.Member[0]->Ability].abilityfunc(1,1);
      MoveList[YourTurn->Move].movefunc(0,0);
      MoveList[EnemyTurn->Move].movefunc(0,1);
      ACTIVATE_EFFECTS(0,0);
      ACTIVATE_EFFECTS(0,1);
      if (First == 1) {
        ExecuteMove(0);
        ExecuteMove(1);
        } else {
        ExecuteMove(1);
        ExecuteMove(0);
        }
      
      if (floor(PlayerParty.Member[0]->Spe*statboostmult(PlayerParty.Member[0]->StatBoosts[4]))*PlayerSpeedTM == floor(EnemyParty.Member[0]->Spe*statboostmult(EnemyParty.Member[0]->StatBoosts[4]))*EnemySpeedTM) {
        EndFirst = (rand() % 2);
      } else {
        EndFirst = floor(PlayerParty.Member[0]->Spe*statboostmult(PlayerParty.Member[0]->StatBoosts[4]))*PlayerSpeedTM > floor(EnemyParty.Member[0]->Spe*statboostmult(EnemyParty.Member[0]->StatBoosts[4]))*EnemySpeedTM;
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