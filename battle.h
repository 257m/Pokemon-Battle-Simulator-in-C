int Battle() {
  printf("%lu\n",sizeof(struct Move));
  while (StatCalc == 1) {
  PlayerParty.P1->Hp =  ((PlayerParty.P1->IVHp + 2 * PlayerParty.P1->Poke->Hp + (PlayerParty.P1->EVHp/4)) * PlayerParty.P1->Level/100 ) + 10 +PlayerParty.P1->Level;
  
  PlayerParty.P1->Atk = (((PlayerParty.P1->IVAtk + 2 * PlayerParty.P1->Poke->Atk + (PlayerParty.P1->EVAtk/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->Atk;
  
  PlayerParty.P1->Def = (((PlayerParty.P1->IVDef + 2 * PlayerParty.P1->Poke->Def + (PlayerParty.P1->EVDef/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->Def;
  
  PlayerParty.P1->SpA = (((PlayerParty.P1->IVSpA + 2 * PlayerParty.P1->Poke->SpA + (PlayerParty.P1->EVSpA/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->SpA;
  
  PlayerParty.P1->SpD = (((PlayerParty.P1->IVSpD + 2 * PlayerParty.P1->Poke->SpD + (PlayerParty.P1->EVSpD/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->SpD;

  PlayerParty.P1->Spe = (((PlayerParty.P1->IVSpe + 2 * PlayerParty.P1->Poke->Spe + (PlayerParty.P1->EVSpe/4) ) * PlayerParty.P1->Level/100 ) + 5) * PlayerParty.P1->Nature->Spe;

  PlayerParty.P1->Move1.PP = PlayerParty.P1->Move1.Move->PP * PlayerParty.P1->Move1.PPmult;
  PlayerParty.P1->Move2.PP = PlayerParty.P1->Move2.Move->PP * PlayerParty.P1->Move2.PPmult;
  PlayerParty.P1->Move3.PP = PlayerParty.P1->Move3.Move->PP * PlayerParty.P1->Move3.PPmult;
  PlayerParty.P1->Move4.PP = PlayerParty.P1->Move4.Move->PP * PlayerParty.P1->Move4.PPmult;
  
  PlayerParty.P2->Hp =  ((PlayerParty.P2->IVHp + 2 * PlayerParty.P2->Poke->Hp + (PlayerParty.P2->EVHp/4)) * PlayerParty.P2->Level/100 ) + 10 +PlayerParty.P2->Level;
  
  PlayerParty.P2->Atk = (((PlayerParty.P2->IVAtk + 2 * PlayerParty.P2->Poke->Atk + (PlayerParty.P2->EVAtk/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->Atk;
  
  PlayerParty.P2->Def = (((PlayerParty.P2->IVDef + 2 * PlayerParty.P2->Poke->Def + (PlayerParty.P2->EVDef/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->Def;
  
  PlayerParty.P2->SpA = (((PlayerParty.P2->IVSpA + 2 * PlayerParty.P2->Poke->SpA + (PlayerParty.P2->EVSpA/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->SpA;
  
  PlayerParty.P2->SpD = (((PlayerParty.P2->IVSpD + 2 * PlayerParty.P2->Poke->SpD + (PlayerParty.P2->EVSpD/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->SpD;

  PlayerParty.P2->Spe = (((PlayerParty.P2->IVSpe + 2 * PlayerParty.P2->Poke->Spe + (PlayerParty.P2->EVSpe/4) ) * PlayerParty.P2->Level/100 ) + 5) * PlayerParty.P2->Nature->Spe;

  PlayerParty.P2->Move1.PP = PlayerParty.P2->Move1.Move->PP * PlayerParty.P2->Move1.PPmult;
  PlayerParty.P2->Move2.PP = PlayerParty.P2->Move2.Move->PP * PlayerParty.P2->Move2.PPmult;
  PlayerParty.P2->Move3.PP = PlayerParty.P2->Move3.Move->PP * PlayerParty.P2->Move3.PPmult;
  PlayerParty.P2->Move4.PP = PlayerParty.P2->Move4.Move->PP * PlayerParty.P2->Move4.PPmult;
    
   PlayerParty.P3->Hp =  ((PlayerParty.P3->IVHp + 2 * PlayerParty.P3->Poke->Hp + (PlayerParty.P3->EVHp/4)) * PlayerParty.P3->Level/100 ) + 10 +PlayerParty.P3->Level;
  
  PlayerParty.P3->Atk = (((PlayerParty.P3->IVAtk + 2 * PlayerParty.P3->Poke->Atk + (PlayerParty.P3->EVAtk/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->Atk;
  
  PlayerParty.P3->Def = (((PlayerParty.P3->IVDef + 2 * PlayerParty.P3->Poke->Def + (PlayerParty.P3->EVDef/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->Def;
  
  PlayerParty.P3->SpA = (((PlayerParty.P3->IVSpA + 2 * PlayerParty.P3->Poke->SpA + (PlayerParty.P3->EVSpA/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->SpA;
  
  PlayerParty.P3->SpD = (((PlayerParty.P3->IVSpD + 2 * PlayerParty.P3->Poke->SpD + (PlayerParty.P3->EVSpD/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->SpD;

  PlayerParty.P3->Spe = (((PlayerParty.P3->IVSpe + 2 * PlayerParty.P3->Poke->Spe + (PlayerParty.P3->EVSpe/4) ) * PlayerParty.P3->Level/100 ) + 5) * PlayerParty.P3->Nature->Spe; 

  PlayerParty.P3->Move1.PP = PlayerParty.P3->Move1.Move->PP * PlayerParty.P3->Move1.PPmult;
  PlayerParty.P3->Move2.PP = PlayerParty.P3->Move2.Move->PP * PlayerParty.P3->Move2.PPmult;
  PlayerParty.P3->Move3.PP = PlayerParty.P3->Move3.Move->PP * PlayerParty.P3->Move3.PPmult;
  PlayerParty.P3->Move4.PP = PlayerParty.P3->Move4.Move->PP * PlayerParty.P3->Move4.PPmult;

   PlayerParty.P4->Hp =  ((PlayerParty.P4->IVHp + 2 * PlayerParty.P4->Poke->Hp + (PlayerParty.P4->EVHp/4)) * PlayerParty.P4->Level/100 ) + 10 +PlayerParty.P4->Level;
  
  PlayerParty.P4->Atk = (((PlayerParty.P4->IVAtk + 2 * PlayerParty.P4->Poke->Atk + (PlayerParty.P4->EVAtk/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->Atk;
  
  PlayerParty.P4->Def = (((PlayerParty.P4->IVDef + 2 * PlayerParty.P4->Poke->Def + (PlayerParty.P4->EVDef/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->Def;
  
  PlayerParty.P4->SpA = (((PlayerParty.P4->IVSpA + 2 * PlayerParty.P4->Poke->SpA + (PlayerParty.P4->EVSpA/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->SpA;
  
  PlayerParty.P4->SpD = (((PlayerParty.P4->IVSpD + 2 * PlayerParty.P4->Poke->SpD + (PlayerParty.P4->EVSpD/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->SpD;

  PlayerParty.P4->Spe = (((PlayerParty.P4->IVSpe + 2 * PlayerParty.P4->Poke->Spe + (PlayerParty.P4->EVSpe/4) ) * PlayerParty.P4->Level/100 ) + 5) * PlayerParty.P4->Nature->Spe;

  PlayerParty.P4->Move1.PP = PlayerParty.P4->Move1.Move->PP * PlayerParty.P4->Move1.PPmult;
  PlayerParty.P4->Move2.PP = PlayerParty.P4->Move2.Move->PP * PlayerParty.P4->Move2.PPmult;
  PlayerParty.P4->Move3.PP = PlayerParty.P4->Move3.Move->PP * PlayerParty.P4->Move3.PPmult;
  PlayerParty.P4->Move4.PP = PlayerParty.P4->Move4.Move->PP * PlayerParty.P4->Move4.PPmult;

  PlayerParty.P5->Hp =  ((PlayerParty.P5->IVHp + 2 * PlayerParty.P5->Poke->Hp + (PlayerParty.P5->EVHp/4)) * PlayerParty.P5->Level/100 ) + 10 +PlayerParty.P5->Level;
  
  PlayerParty.P5->Atk = (((PlayerParty.P5->IVAtk + 2 * PlayerParty.P5->Poke->Atk + (PlayerParty.P5->EVAtk/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->Atk;
  
  PlayerParty.P5->Def = (((PlayerParty.P5->IVDef + 2 * PlayerParty.P5->Poke->Def + (PlayerParty.P5->EVDef/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->Def;
  
  PlayerParty.P5->SpA = (((PlayerParty.P5->IVSpA + 2 * PlayerParty.P5->Poke->SpA + (PlayerParty.P5->EVSpA/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->SpA;
  
  PlayerParty.P5->SpD = (((PlayerParty.P5->IVSpD + 2 * PlayerParty.P5->Poke->SpD + (PlayerParty.P5->EVSpD/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->SpD;

  PlayerParty.P5->Spe = (((PlayerParty.P5->IVSpe + 2 * PlayerParty.P5->Poke->Spe + (PlayerParty.P5->EVSpe/4) ) * PlayerParty.P5->Level/100 ) + 5) * PlayerParty.P5->Nature->Spe;

  PlayerParty.P5->Move1.PP = PlayerParty.P5->Move1.Move->PP * PlayerParty.P5->Move1.PPmult;
  PlayerParty.P5->Move2.PP = PlayerParty.P5->Move2.Move->PP * PlayerParty.P5->Move2.PPmult;
  PlayerParty.P5->Move3.PP = PlayerParty.P5->Move3.Move->PP * PlayerParty.P5->Move3.PPmult;
  PlayerParty.P5->Move4.PP = PlayerParty.P5->Move4.Move->PP * PlayerParty.P5->Move4.PPmult;

  PlayerParty.P6->Hp =  ((PlayerParty.P6->IVHp + 2 * PlayerParty.P6->Poke->Hp + (PlayerParty.P6->EVHp/4)) * PlayerParty.P6->Level/100 ) + 10 +PlayerParty.P6->Level;
  
  PlayerParty.P6->Atk = (((PlayerParty.P6->IVAtk + 2 * PlayerParty.P6->Poke->Atk + (PlayerParty.P6->EVAtk/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->Atk;
  
  PlayerParty.P6->Def = (((PlayerParty.P6->IVDef + 2 * PlayerParty.P6->Poke->Def + (PlayerParty.P6->EVDef/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->Def;
  
  PlayerParty.P6->SpA = (((PlayerParty.P6->IVSpA + 2 * PlayerParty.P6->Poke->SpA + (PlayerParty.P6->EVSpA/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->SpA;
  
  PlayerParty.P6->SpD = (((PlayerParty.P6->IVSpD + 2 * PlayerParty.P6->Poke->SpD + (PlayerParty.P6->EVSpD/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->SpD;

  PlayerParty.P6->Spe = (((PlayerParty.P6->IVSpe + 2 * PlayerParty.P6->Poke->Spe + (PlayerParty.P6->EVSpe/4) ) * PlayerParty.P6->Level/100 ) + 5) * PlayerParty.P6->Nature->Spe;

  PlayerParty.P6->Move1.PP = PlayerParty.P6->Move1.Move->PP * PlayerParty.P6->Move1.PPmult;
  PlayerParty.P6->Move2.PP = PlayerParty.P6->Move2.Move->PP * PlayerParty.P6->Move2.PPmult;
  PlayerParty.P6->Move3.PP = PlayerParty.P6->Move3.Move->PP * PlayerParty.P6->Move3.PPmult;
  PlayerParty.P6->Move4.PP = PlayerParty.P6->Move4.Move->PP * PlayerParty.P6->Move4.PPmult;

  EnemyParty.P1->Hp =  ((EnemyParty.P1->IVHp + 2 * EnemyParty.P1->Poke->Hp + (EnemyParty.P1->EVHp/4)) * EnemyParty.P1->Level/100 ) + 10 +EnemyParty.P1->Level;
  
  EnemyParty.P1->Atk = (((EnemyParty.P1->IVAtk + 2 * EnemyParty.P1->Poke->Atk + (EnemyParty.P1->EVAtk/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Atk;
  
  EnemyParty.P1->Def = (((EnemyParty.P1->IVDef + 2 * EnemyParty.P1->Poke->Def + (EnemyParty.P1->EVDef/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Def;
  
  EnemyParty.P1->SpA = (((EnemyParty.P1->IVSpA + 2 * EnemyParty.P1->Poke->SpA + (EnemyParty.P1->EVSpA/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->SpA;
  
  EnemyParty.P1->SpD = (((EnemyParty.P1->IVSpD + 2 * EnemyParty.P1->Poke->SpD + (EnemyParty.P1->EVSpD/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->SpD;

  EnemyParty.P1->Spe = (((EnemyParty.P1->IVSpe + 2 * EnemyParty.P1->Poke->Spe + (EnemyParty.P1->EVSpe/4) ) * EnemyParty.P1->Level/100 ) + 5) * EnemyParty.P1->Nature->Spe;

  EnemyParty.P1->Move1.PP = EnemyParty.P1->Move1.Move->PP * EnemyParty.P1->Move1.PPmult;
  EnemyParty.P1->Move2.PP = EnemyParty.P1->Move2.Move->PP * EnemyParty.P1->Move2.PPmult;
  EnemyParty.P1->Move3.PP = EnemyParty.P1->Move3.Move->PP * EnemyParty.P1->Move3.PPmult;
  EnemyParty.P1->Move4.PP = EnemyParty.P1->Move4.Move->PP * EnemyParty.P1->Move4.PPmult;

  EnemyParty.P2->Hp =  ((EnemyParty.P2->IVHp + 2 * EnemyParty.P2->Poke->Hp + (EnemyParty.P2->EVHp/4)) * EnemyParty.P2->Level/100 ) + 10 +EnemyParty.P2->Level;
  
  EnemyParty.P2->Atk = (((EnemyParty.P2->IVAtk + 2 * EnemyParty.P2->Poke->Atk + (EnemyParty.P2->EVAtk/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->Atk;
  
  EnemyParty.P2->Def = (((EnemyParty.P2->IVDef + 2 * EnemyParty.P2->Poke->Def + (EnemyParty.P2->EVDef/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->Def;
  
  EnemyParty.P2->SpA = (((EnemyParty.P2->IVSpA + 2 * EnemyParty.P2->Poke->SpA + (EnemyParty.P2->EVSpA/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->SpA;
  
  EnemyParty.P2->SpD = (((EnemyParty.P2->IVSpD + 2 * EnemyParty.P2->Poke->SpD + (EnemyParty.P2->EVSpD/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->SpD;

  EnemyParty.P2->Spe = (((EnemyParty.P2->IVSpe + 2 * EnemyParty.P2->Poke->Spe + (EnemyParty.P2->EVSpe/4) ) * EnemyParty.P2->Level/100 ) + 5) * EnemyParty.P2->Nature->Spe;

  EnemyParty.P2->Move1.PP = EnemyParty.P2->Move1.Move->PP * EnemyParty.P2->Move1.PPmult;
  EnemyParty.P2->Move2.PP = EnemyParty.P2->Move2.Move->PP * EnemyParty.P2->Move2.PPmult;
  EnemyParty.P2->Move3.PP = EnemyParty.P2->Move3.Move->PP * EnemyParty.P2->Move3.PPmult;
  EnemyParty.P2->Move4.PP = EnemyParty.P2->Move4.Move->PP * EnemyParty.P2->Move4.PPmult;

   EnemyParty.P3->Hp =  ((EnemyParty.P3->IVHp + 2 * EnemyParty.P3->Poke->Hp + (EnemyParty.P3->EVHp/4)) * EnemyParty.P3->Level/100 ) + 10 +EnemyParty.P3->Level;
  
  EnemyParty.P3->Atk = (((EnemyParty.P3->IVAtk + 2 * EnemyParty.P3->Poke->Atk + (EnemyParty.P3->EVAtk/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->Atk;
  
  EnemyParty.P3->Def = (((EnemyParty.P3->IVDef + 2 * EnemyParty.P3->Poke->Def + (EnemyParty.P3->EVDef/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->Def;
  
  EnemyParty.P3->SpA = (((EnemyParty.P3->IVSpA + 2 * EnemyParty.P3->Poke->SpA + (EnemyParty.P3->EVSpA/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->SpA;
  
  EnemyParty.P3->SpD = (((EnemyParty.P3->IVSpD + 2 * EnemyParty.P3->Poke->SpD + (EnemyParty.P3->EVSpD/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->SpD;

  EnemyParty.P3->Spe = (((EnemyParty.P3->IVSpe + 2 * EnemyParty.P3->Poke->Spe + (EnemyParty.P3->EVSpe/4) ) * EnemyParty.P3->Level/100 ) + 5) * EnemyParty.P3->Nature->Spe; 

  EnemyParty.P3->Move1.PP = EnemyParty.P3->Move1.Move->PP * EnemyParty.P3->Move1.PPmult;
  EnemyParty.P3->Move2.PP = EnemyParty.P3->Move2.Move->PP * EnemyParty.P3->Move2.PPmult;
  EnemyParty.P3->Move3.PP = EnemyParty.P3->Move3.Move->PP * EnemyParty.P3->Move3.PPmult;
  EnemyParty.P3->Move4.PP = EnemyParty.P3->Move4.Move->PP * EnemyParty.P3->Move4.PPmult;

   EnemyParty.P4->Hp =  ((EnemyParty.P4->IVHp + 2 * EnemyParty.P4->Poke->Hp + (EnemyParty.P4->EVHp/4)) * EnemyParty.P4->Level/100 ) + 10 +EnemyParty.P4->Level;
  
  EnemyParty.P4->Atk = (((EnemyParty.P4->IVAtk + 2 * EnemyParty.P4->Poke->Atk + (EnemyParty.P4->EVAtk/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->Atk;
  
  EnemyParty.P4->Def = (((EnemyParty.P4->IVDef + 2 * EnemyParty.P4->Poke->Def + (EnemyParty.P4->EVDef/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->Def;
  
  EnemyParty.P4->SpA = (((EnemyParty.P4->IVSpA + 2 * EnemyParty.P4->Poke->SpA + (EnemyParty.P4->EVSpA/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->SpA;
  
  EnemyParty.P4->SpD = (((EnemyParty.P4->IVSpD + 2 * EnemyParty.P4->Poke->SpD + (EnemyParty.P4->EVSpD/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->SpD;

  EnemyParty.P4->Spe = (((EnemyParty.P4->IVSpe + 2 * EnemyParty.P4->Poke->Spe + (EnemyParty.P4->EVSpe/4) ) * EnemyParty.P4->Level/100 ) + 5) * EnemyParty.P4->Nature->Spe;

  EnemyParty.P4->Move1.PP = EnemyParty.P4->Move1.Move->PP * EnemyParty.P4->Move1.PPmult;
  EnemyParty.P4->Move2.PP = EnemyParty.P4->Move2.Move->PP * EnemyParty.P4->Move2.PPmult;
  EnemyParty.P4->Move3.PP = EnemyParty.P4->Move3.Move->PP * EnemyParty.P4->Move3.PPmult;
  EnemyParty.P4->Move4.PP = EnemyParty.P4->Move4.Move->PP * EnemyParty.P4->Move4.PPmult;

  EnemyParty.P5->Hp =  ((EnemyParty.P5->IVHp + 2 * EnemyParty.P5->Poke->Hp + (EnemyParty.P5->EVHp/4)) * EnemyParty.P5->Level/100 ) + 10 +EnemyParty.P5->Level;
  
  EnemyParty.P5->Atk = (((EnemyParty.P5->IVAtk + 2 * EnemyParty.P5->Poke->Atk + (EnemyParty.P5->EVAtk/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->Atk;
  
  EnemyParty.P5->Def = (((EnemyParty.P5->IVDef + 2 * EnemyParty.P5->Poke->Def + (EnemyParty.P5->EVDef/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->Def;
  
  EnemyParty.P5->SpA = (((EnemyParty.P5->IVSpA + 2 * EnemyParty.P5->Poke->SpA + (EnemyParty.P5->EVSpA/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->SpA;
  
  EnemyParty.P5->SpD = (((EnemyParty.P5->IVSpD + 2 * EnemyParty.P5->Poke->SpD + (EnemyParty.P5->EVSpD/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->SpD;

  EnemyParty.P5->Spe = (((EnemyParty.P5->IVSpe + 2 * EnemyParty.P5->Poke->Spe + (EnemyParty.P5->EVSpe/4) ) * EnemyParty.P5->Level/100 ) + 5) * EnemyParty.P5->Nature->Spe;

  EnemyParty.P5->Move1.PP = EnemyParty.P5->Move1.Move->PP * EnemyParty.P5->Move1.PPmult;
  EnemyParty.P5->Move2.PP = EnemyParty.P5->Move2.Move->PP * EnemyParty.P5->Move2.PPmult;
  EnemyParty.P5->Move3.PP = EnemyParty.P5->Move3.Move->PP * EnemyParty.P5->Move3.PPmult;
  EnemyParty.P5->Move4.PP = EnemyParty.P5->Move4.Move->PP * EnemyParty.P5->Move4.PPmult;

  EnemyParty.P6->Hp =  ((EnemyParty.P6->IVHp + 2 * EnemyParty.P6->Poke->Hp + (EnemyParty.P6->EVHp/4)) * EnemyParty.P6->Level/100 ) + 10 +EnemyParty.P6->Level;
  
  EnemyParty.P6->Atk = (((EnemyParty.P6->IVAtk + 2 * EnemyParty.P6->Poke->Atk + (EnemyParty.P6->EVAtk/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->Atk;
  
  EnemyParty.P6->Def = (((EnemyParty.P6->IVDef + 2 * EnemyParty.P6->Poke->Def + (EnemyParty.P6->EVDef/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->Def;
  
  EnemyParty.P6->SpA = (((EnemyParty.P6->IVSpA + 2 * EnemyParty.P6->Poke->SpA + (EnemyParty.P6->EVSpA/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->SpA;
  
  EnemyParty.P6->SpD = (((EnemyParty.P6->IVSpD + 2 * EnemyParty.P6->Poke->SpD + (EnemyParty.P6->EVSpD/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->SpD;

  EnemyParty.P6->Spe = (((EnemyParty.P6->IVSpe + 2 * EnemyParty.P6->Poke->Spe + (EnemyParty.P6->EVSpe/4) ) * EnemyParty.P6->Level/100 ) + 5) * EnemyParty.P6->Nature->Spe;

  EnemyParty.P6->Move1.PP = EnemyParty.P6->Move1.Move->PP * EnemyParty.P6->Move1.PPmult;
  EnemyParty.P6->Move2.PP = EnemyParty.P6->Move2.Move->PP * EnemyParty.P6->Move2.PPmult;
  EnemyParty.P6->Move3.PP = EnemyParty.P6->Move3.Move->PP * EnemyParty.P6->Move3.PPmult;
  EnemyParty.P6->Move4.PP = EnemyParty.P6->Move4.Move->PP * EnemyParty.P6->Move4.PPmult;


    printf("\nHeal?:");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"y") == 0) {
      PlayerParty.P1->CurrentHp = PlayerParty.P1->Hp;
      PlayerParty.P2->CurrentHp = PlayerParty.P2->Hp;
      PlayerParty.P3->CurrentHp = PlayerParty.P3->Hp;
      PlayerParty.P4->CurrentHp = PlayerParty.P4->Hp;
      PlayerParty.P5->CurrentHp = PlayerParty.P5->Hp;
      PlayerParty.P6->CurrentHp = PlayerParty.P6->Hp;

      EnemyParty.P1->CurrentHp = EnemyParty.P1->Hp;
      EnemyParty.P2->CurrentHp = EnemyParty.P2->Hp;
      EnemyParty.P3->CurrentHp = EnemyParty.P3->Hp;
      EnemyParty.P4->CurrentHp = EnemyParty.P4->Hp;
      EnemyParty.P5->CurrentHp = EnemyParty.P5->Hp;
      EnemyParty.P6->CurrentHp = EnemyParty.P6->Hp;
      
      PlayerParty.P1->Non_Volatile_Status = 0; 
      PlayerParty.P2->Non_Volatile_Status = 0;
      PlayerParty.P3->Non_Volatile_Status = 0;
      PlayerParty.P4->Non_Volatile_Status = 0;
      PlayerParty.P5->Non_Volatile_Status = 0;
      PlayerParty.P6->Non_Volatile_Status = 0;

      EnemyParty.P1->Non_Volatile_Status = 0;
      EnemyParty.P2->Non_Volatile_Status = 0;
      EnemyParty.P3->Non_Volatile_Status = 0;
      EnemyParty.P4->Non_Volatile_Status = 0;
      EnemyParty.P5->Non_Volatile_Status = 0;
      EnemyParty.P6->Non_Volatile_Status = 0;
    }
    printf("\033[1A");
    printf("\033[2K");
    StatCalc = 0;
    BattleMode = 1;
    Retrieve = 1;
  }
  
  printf("Go %s!\n",PlayerParty.P1->Poke->Name);
  printf("The Enemy sent out %s!\n\n", EnemyParty.P1->Poke->Name);
  YourTurn = &Empty_slot;
  EnemyTurn = &Empty_slot;
  while(BattleMode == 1) {
    
    while(Retrieve == 1) {
    PlayerSwitch = 0;
    EnemySwitch = 0;
    printf("Enter your move: ");
    fgets(x,31,stdin);
    x[strcspn(x, "\n")] = 0;
    if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,PlayerParty.P1->Move1.Move->Name) == 0) {
      YourTurn = &PlayerParty.P1->Move1;
      if(PlayerParty.P1->Move1.Move == &Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (PlayerParty.P1->Move1.PP <= 0) {
    if (PlayerParty.P1->Move2.PP <= 0 && PlayerParty.P1->Move3.PP <= 0 && PlayerParty.P1->Move4.PP <= 0) {
      YourTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,PlayerParty.P1->Move2.Move->Name) == 0) {
       YourTurn = &PlayerParty.P1->Move2;
      if(PlayerParty.P1->Move1.Move == &Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (PlayerParty.P1->Move1.PP <= 0) {
    if (PlayerParty.P1->Move2.PP <= 0 && PlayerParty.P1->Move3.PP <= 0 && PlayerParty.P1->Move4.PP <= 0) {
      YourTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,PlayerParty.P1->Move3.Move->Name) == 0) {
       YourTurn = &PlayerParty.P1->Move3;
       if(PlayerParty.P1->Move1.Move == &Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (PlayerParty.P1->Move1.PP <= 0) {
    if (PlayerParty.P1->Move2.PP <= 0 && PlayerParty.P1->Move3.PP <= 0 && PlayerParty.P1->Move4.PP <= 0) {
      YourTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,PlayerParty.P1->Move4.Move->Name) == 0) {
       YourTurn = &PlayerParty.P1->Move4;
       if(PlayerParty.P1->Move1.Move == &Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (PlayerParty.P1->Move1.PP <= 0) {
    if (PlayerParty.P1->Move2.PP <= 0 && PlayerParty.P1->Move3.PP <= 0 && PlayerParty.P1->Move4.PP <= 0) {
      YourTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
    }
    } else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P2->Poke->Name)) == 0 || strcmp(x,PlayerParty.P2->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
       PlayerSwitchSave = &PlayerParty.P2;
       PlayerSwitch = 1;
      if(PlayerParty.P2->Poke->Name == "NoPoke" || PlayerParty.P2->CurrentHp <= 0) {
        printf("Move Selection Failed. Pilease retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P3->Poke->Name)) == 0 || strcmp(x,PlayerParty.P3->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
       PlayerSwitchSave = &PlayerParty.P3;
       PlayerSwitch = 1;
      if(PlayerParty.P3->Poke->Name == "NoPoke" || PlayerParty.P3->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P4->Poke->Name)) == 0 || strcmp(x,PlayerParty.P4->Poke->Name) == 0  || strcmp(x,"P4") == 0) {
       PlayerSwitchSave = &PlayerParty.P4;
       PlayerSwitch = 1;
      if(PlayerParty.P4->Poke->Name == "NoPoke" || PlayerParty.P4->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P5->Poke->Name)) == 0 || strcmp(x,PlayerParty.P5->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
       PlayerSwitchSave = &PlayerParty.P5;
       PlayerSwitch = 1;
      if(PlayerParty.P5->Poke->Name == "NoPoke" || PlayerParty.P5->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P6->Poke->Name)) == 0 || strcmp(x,PlayerParty.P6->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
       PlayerSwitchSave = &PlayerParty.P6;
       PlayerSwitch = 1;
      if(PlayerParty.P6->Poke->Name == "NoPoke" || PlayerParty.P6->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
      printf("\n\e[1;37mP1:\e[0m %s %d/%d\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      printf("\e[1;37mP2:\e[0m %s %d/%d\n",PlayerParty.P2->Poke->Name,PlayerParty.P2->CurrentHp,PlayerParty.P2->Hp);
      printf("\e[1;37mP3:\e[0m %s %d/%d\n",PlayerParty.P3->Poke->Name,PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("\e[1;37mP4:\e[0m %s %d/%d\n",PlayerParty.P4->Poke->Name,PlayerParty.P4->CurrentHp,PlayerParty.P4->Hp);
      printf("\e[1;37mP5:\e[0m %s %d/%d\n",PlayerParty.P5->Poke->Name,PlayerParty.P5->CurrentHp,PlayerParty.P5->Hp);
      printf("\e[1;37mP6:\e[0m %s %d/%d\n",PlayerParty.P6->Poke->Name,PlayerParty.P6->CurrentHp,PlayerParty.P6->Hp);
      printf("\nPartyMember: ");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      printf("\e[1;37m\nP1:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P1->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      printf("Attack: %d\n",PlayerParty.P1->Atk);
      printf("Defense: %d\n",PlayerParty.P1->Def);
      printf("Special Attack: %d\n",PlayerParty.P1->SpA);
      printf("Special Defense: %d\n",PlayerParty.P1->SpD);
      printf("Speed: %d\n",PlayerParty.P1->Spe);
      printf("Nature: %s\n",PlayerParty.P1->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P1->Move1.Move->Name,PlayerParty.P1->Move1.PP,PlayerParty.P1->Move1.Move->PP * PlayerParty.P1->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P1->Move2.Move->Name,PlayerParty.P1->Move2.PP,PlayerParty.P1->Move2.Move->PP * PlayerParty.P1->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P1->Move3.Move->Name,PlayerParty.P1->Move3.PP,PlayerParty.P1->Move3.Move->PP * PlayerParty.P1->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P1->Move4.Move->Name,PlayerParty.P1->Move4.PP,PlayerParty.P1->Move4.Move->PP * PlayerParty.P1->Move4.PPmult);
      } else if (strcmp(x,"P2") == 0) {
      printf("\e[1;37m\nP2:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P2->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P2->CurrentHp,PlayerParty.P2->Hp);
      printf("Attack: %d\n",PlayerParty.P2->Atk);
      printf("Defense: %d\n",PlayerParty.P2->Def);
      printf("Special Attack: %d\n",PlayerParty.P2->SpA);
      printf("Special Defense: %d\n",PlayerParty.P2->SpD);
      printf("Speed: %d\n",PlayerParty.P2->Spe);
      printf("Nature: %s\n",PlayerParty.P2->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P2->Move1.Move->Name,PlayerParty.P2->Move1.PP,PlayerParty.P2->Move1.Move->PP * PlayerParty.P2->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P2->Move2.Move->Name,PlayerParty.P2->Move2.PP,PlayerParty.P2->Move2.Move->PP * PlayerParty.P2->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P2->Move3.Move->Name,PlayerParty.P2->Move3.PP,PlayerParty.P2->Move3.Move->PP * PlayerParty.P2->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P2->Move4.Move->Name,PlayerParty.P2->Move4.PP,PlayerParty.P2->Move4.Move->PP * PlayerParty.P2->Move4.PPmult);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37m\nP3:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P3->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("Attack: %d\n",PlayerParty.P3->Atk);
      printf("Defense: %d\n",PlayerParty.P3->Def);
      printf("Special Attack: %d\n",PlayerParty.P3->SpA);
      printf("Special Defense: %d\n",PlayerParty.P3->SpD);
      printf("Speed: %d\n",PlayerParty.P3->Spe);
      printf("Nature: %s\n",PlayerParty.P3->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P3->Move1.Move->Name,PlayerParty.P3->Move1.PP,PlayerParty.P3->Move1.Move->PP * PlayerParty.P3->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P3->Move2.Move->Name,PlayerParty.P3->Move2.PP,PlayerParty.P3->Move2.Move->PP * PlayerParty.P3->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P3->Move3.Move->Name,PlayerParty.P3->Move3.PP,PlayerParty.P3->Move3.Move->PP * PlayerParty.P3->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P3->Move4.Move->Name,PlayerParty.P3->Move4.PP,PlayerParty.P3->Move4.Move->PP * PlayerParty.P3->Move4.PPmult);
      } else if (strcmp(x,"P4") == 0) {
      printf("\e[1;37m\nP4:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P4->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P4->CurrentHp,PlayerParty.P4->Hp);
      printf("Attack: %d\n",PlayerParty.P4->Atk);
      printf("Defense: %d\n",PlayerParty.P4->Def);
      printf("Special Attack: %d\n",PlayerParty.P4->SpA);
      printf("Special Defense: %d\n",PlayerParty.P4->SpD);
      printf("Speed: %d\n",PlayerParty.P4->Spe);
      printf("Nature: %s\n",PlayerParty.P4->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P4->Move1.Move->Name,PlayerParty.P4->Move1.PP,PlayerParty.P4->Move1.Move->PP * PlayerParty.P4->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P4->Move2.Move->Name,PlayerParty.P4->Move2.PP,PlayerParty.P4->Move2.Move->PP * PlayerParty.P4->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P4->Move3.Move->Name,PlayerParty.P4->Move3.PP,PlayerParty.P4->Move3.Move->PP * PlayerParty.P4->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P4->Move4.Move->Name,PlayerParty.P4->Move4.PP,PlayerParty.P4->Move4.Move->PP * PlayerParty.P4->Move4.PPmult);
      } else if (strcmp(x,"P5") == 0) {
      printf("\e[1;37m\nP5:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P5->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P5->CurrentHp,PlayerParty.P5->Hp);
      printf("Attack: %d\n",PlayerParty.P5->Atk);
      printf("Defense: %d\n",PlayerParty.P5->Def);
      printf("Special Attack: %d\n",PlayerParty.P5->SpA);
      printf("Special Defense: %d\n",PlayerParty.P5->SpD);
      printf("Speed: %d\n",PlayerParty.P5->Spe);
      printf("Nature: %s\n",PlayerParty.P5->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P5->Move1.Move->Name,PlayerParty.P5->Move1.PP,PlayerParty.P5->Move1.Move->PP * PlayerParty.P5->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P5->Move2.Move->Name,PlayerParty.P5->Move2.PP,PlayerParty.P5->Move2.Move->PP * PlayerParty.P5->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P5->Move3.Move->Name,PlayerParty.P5->Move3.PP,PlayerParty.P5->Move3.Move->PP * PlayerParty.P5->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P5->Move4.Move->Name,PlayerParty.P5->Move4.PP,PlayerParty.P5->Move4.Move->PP * PlayerParty.P5->Move4.PPmult);
      } else if (strcmp(x,"P6") == 0) {
      printf("\e[1;37m\nP6:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P6->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P6->CurrentHp,PlayerParty.P6->Hp);
      printf("Attack: %d\n",PlayerParty.P6->Atk);
      printf("Defense: %d\n",PlayerParty.P6->Def);
      printf("Special Attack: %d\n",PlayerParty.P6->SpA);
      printf("Special Defense: %d\n",PlayerParty.P6->SpD);
      printf("Speed: %d\n",PlayerParty.P6->Spe);
      printf("Nature: %s\n",PlayerParty.P6->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P6->Move1.Move->Name,PlayerParty.P6->Move1.PP,PlayerParty.P6->Move1.Move->PP * PlayerParty.P6->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P6->Move2.Move->Name,PlayerParty.P6->Move2.PP,PlayerParty.P6->Move2.Move->PP * PlayerParty.P6->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P6->Move3.Move->Name,PlayerParty.P6->Move3.PP,PlayerParty.P6->Move3.Move->PP * PlayerParty.P6->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P6->Move4.Move->Name,PlayerParty.P6->Move4.PP,PlayerParty.P6->Move4.Move->PP * PlayerParty.P6->Move4.PPmult);
      }
      Reset = 1;
    } else {
      printf("Move Selection Failed. Please retry.");
      Reset = 1;
    }
      if (Reset != 1) {
     printf("\nEnter enemy's move: ");
     fgets(x,31,stdin);
     x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"1") == 0 || strcmp(x,"Move 1") == 0 || strcmp(x,EnemyParty.P1->Move1.Move->Name) == 0) {
      EnemyTurn = &EnemyParty.P1->Move1;
      if(EnemyParty.P1->Move1.Move == &Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (EnemyParty.P1->Move1.PP <= 0) {
    if (EnemyParty.P1->Move2.PP <= 0 && EnemyParty.P1->Move3.PP <= 0 && EnemyParty.P1->Move4.PP <= 0) {
      EnemyTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"2") == 0 || strcmp(x,"Move 2") == 0 || strcmp(x,EnemyParty.P1->Move2.Move->Name) == 0) {
       EnemyTurn = &EnemyParty.P1->Move2;
      if(EnemyParty.P1->Move2.Move == &Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (EnemyParty.P1->Move2.PP <= 0) {
    if (EnemyParty.P1->Move1.PP <= 0 && EnemyParty.P1->Move3.PP <= 0 && EnemyParty.P1->Move4.PP <= 0) {
      EnemyTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"3") == 0 || strcmp(x,"Move 3") == 0 || strcmp(x,EnemyParty.P1->Move3.Move->Name) == 0) {
       EnemyTurn = &EnemyParty.P1->Move3;
      if(EnemyParty.P1->Move3.Move == &Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (EnemyParty.P1->Move3.PP <= 0) {
    if (EnemyParty.P1->Move1.PP <= 0 && EnemyParty.P1->Move2.PP <= 0 && EnemyParty.P1->Move4.PP <= 0) {
      EnemyTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }
    else if (strcmp(x,"4") == 0|| strcmp(x,"Move 4") == 0 || strcmp(x,EnemyParty.P1->Move4.Move->Name) == 0) {
       EnemyTurn = &EnemyParty.P1->Move4;
      if(EnemyParty.P1->Move4.Move == &Nothing) {
        printf("There is no move in that slot.");
        Reset = 1;
  } else if (EnemyParty.P1->Move4.PP <= 0) {
    if (EnemyParty.P1->Move1.PP <= 0 && EnemyParty.P1->Move2.PP <= 0 && EnemyParty.P1->Move3.PP <= 0) {
      EnemyTurn = &Struggle_Slot;
    } else {
      printf("There no more PP left in that move");
      Reset = 1;
    }
  }
    }  else if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P2->Poke->Name)) == 0 || strcmp(x,EnemyParty.P2->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
       EnemySwitchSave = &EnemyParty.P2;
       EnemySwitch = 1;
      if(EnemyParty.P2->Poke->Name == "NoPoke" || EnemyParty.P2->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P3->Poke->Name)) == 0 || strcmp(x,EnemyParty.P3->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
       EnemySwitchSave = &EnemyParty.P3;
       EnemySwitch = 1;
      if(EnemyParty.P3->Poke->Name == "NoPoke" || EnemyParty.P3->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P4->Poke->Name)) == 0 || strcmp(x,EnemyParty.P4->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
       EnemySwitchSave = &EnemyParty.P4;
       EnemySwitch = 1;
      if(EnemyParty.P4->Poke->Name == "NoPoke" || EnemyParty.P4->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P5->Poke->Name)) == 0 || strcmp(x,EnemyParty.P5->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
       EnemySwitchSave = &EnemyParty.P5;
       EnemySwitch = 1;
      if(EnemyParty.P5->Poke->Name == "NoPoke" || EnemyParty.P5->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P6->Poke->Name)) == 0 || strcmp(x,EnemyParty.P6->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
       EnemySwitchSave = &EnemyParty.P6;
       EnemySwitch = 1;
      if(EnemyParty.P6->Poke->Name == "NoPoke" || EnemyParty.P6->CurrentHp <= 0) {
        printf("Move Selection Failed. Please retry.");
        Reset = 1;
      }
    } else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
      printf("\n\e[1;37mP1:\e[0m %s %d/%d\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      printf("\e[1;37mP2:\e[0m %s %d/%d\n",EnemyParty.P2->Poke->Name,EnemyParty.P2->CurrentHp,EnemyParty.P2->Hp);
      printf("\e[1;37mP3:\e[0m %s %d/%d\n",EnemyParty.P3->Poke->Name,EnemyParty.P3->CurrentHp,EnemyParty.P3->Hp);
      printf("\e[1;37mP4:\e[0m %s %d/%d\n",EnemyParty.P4->Poke->Name,EnemyParty.P4->CurrentHp,EnemyParty.P4->Hp);
      printf("\e[1;37mP5:\e[0m %s %d/%d\n",EnemyParty.P5->Poke->Name,EnemyParty.P5->CurrentHp,EnemyParty.P5->Hp);
      printf("\e[1;37mP6:\e[0m %s %d/%d\n",EnemyParty.P6->Poke->Name,EnemyParty.P6->CurrentHp,EnemyParty.P6->Hp);
      printf("\nPartyMember: ");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      printf("\e[1;37m\nP1:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P1->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      printf("Attack: %d\n",EnemyParty.P1->Atk);
      printf("Defense: %d\n",EnemyParty.P1->Def);
      printf("Special Attack: %d\n",EnemyParty.P1->SpA);
      printf("Special Defense: %d\n",EnemyParty.P1->SpD);
      printf("Speed: %d\n",EnemyParty.P1->Spe);
      printf("Nature: %s\n",EnemyParty.P1->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P1->Move1.Move->Name,EnemyParty.P1->Move1.PP,EnemyParty.P1->Move1.Move->PP * EnemyParty.P1->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P1->Move2.Move->Name,EnemyParty.P1->Move2.PP,EnemyParty.P1->Move2.Move->PP * EnemyParty.P1->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P1->Move3.Move->Name,EnemyParty.P1->Move3.PP,EnemyParty.P1->Move3.Move->PP * EnemyParty.P1->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P1->Move4.Move->Name,EnemyParty.P1->Move4.PP,EnemyParty.P1->Move4.Move->PP * EnemyParty.P1->Move4.PPmult);
      } else if (strcmp(x,"P2") == 0) {
      printf("\e[1;37m\nP2:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P2->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P2->CurrentHp,EnemyParty.P2->Hp);
      printf("Attack: %d\n",EnemyParty.P2->Atk);
      printf("Defense: %d\n",EnemyParty.P2->Def);
      printf("Special Attack: %d\n",EnemyParty.P2->SpA);
      printf("Special Defense: %d\n",EnemyParty.P2->SpD);
      printf("Speed: %d\n",EnemyParty.P2->Spe);
      printf("Nature: %s\n",EnemyParty.P2->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P2->Move1.Move->Name,EnemyParty.P2->Move1.PP,EnemyParty.P2->Move1.Move->PP * EnemyParty.P2->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P2->Move2.Move->Name,EnemyParty.P2->Move2.PP,EnemyParty.P2->Move2.Move->PP * EnemyParty.P2->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P2->Move3.Move->Name,EnemyParty.P2->Move3.PP,EnemyParty.P2->Move3.Move->PP * EnemyParty.P2->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P2->Move4.Move->Name,EnemyParty.P2->Move4.PP,EnemyParty.P2->Move4.Move->PP * EnemyParty.P2->Move4.PPmult);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37m\nP3:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P3->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P3->CurrentHp,EnemyParty.P3->Hp);
      printf("Attack: %d\n",EnemyParty.P3->Atk);
      printf("Defense: %d\n",EnemyParty.P3->Def);
      printf("Special Attack: %d\n",EnemyParty.P3->SpA);
      printf("Special Defense: %d\n",EnemyParty.P3->SpD);
      printf("Speed: %d\n",EnemyParty.P3->Spe);
      printf("Nature: %s\n",EnemyParty.P3->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P3->Move1.Move->Name,EnemyParty.P3->Move1.PP,EnemyParty.P3->Move1.Move->PP * EnemyParty.P3->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P3->Move2.Move->Name,EnemyParty.P3->Move2.PP,EnemyParty.P3->Move2.Move->PP * EnemyParty.P3->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P3->Move3.Move->Name,EnemyParty.P3->Move3.PP,EnemyParty.P3->Move3.Move->PP * EnemyParty.P3->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P3->Move4.Move->Name,EnemyParty.P3->Move4.PP,EnemyParty.P3->Move4.Move->PP * EnemyParty.P3->Move4.PPmult);
      } else if (strcmp(x,"P4") == 0) {
      printf("\e[1;37m\nP4:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P4->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P4->CurrentHp,EnemyParty.P4->Hp);
      printf("Attack: %d\n",EnemyParty.P4->Atk);
      printf("Defense: %d\n",EnemyParty.P4->Def);
      printf("Special Attack: %d\n",EnemyParty.P4->SpA);
      printf("Special Defense: %d\n",EnemyParty.P4->SpD);
      printf("Speed: %d\n",EnemyParty.P4->Spe);
      printf("Nature: %s\n",EnemyParty.P4->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P4->Move1.Move->Name,EnemyParty.P4->Move1.PP,EnemyParty.P4->Move1.Move->PP * EnemyParty.P4->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P4->Move2.Move->Name,EnemyParty.P4->Move2.PP,EnemyParty.P4->Move2.Move->PP * EnemyParty.P4->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P4->Move3.Move->Name,EnemyParty.P4->Move3.PP,EnemyParty.P4->Move3.Move->PP * EnemyParty.P4->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P4->Move4.Move->Name,EnemyParty.P4->Move4.PP,EnemyParty.P4->Move4.Move->PP * EnemyParty.P4->Move4.PPmult);
      } else if (strcmp(x,"P5") == 0) {
      printf("\e[1;37m\nP5:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P5->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P5->CurrentHp,EnemyParty.P5->Hp);
      printf("Attack: %d\n",EnemyParty.P5->Atk);
      printf("Defense: %d\n",EnemyParty.P5->Def);
      printf("Special Attack: %d\n",EnemyParty.P5->SpA);
      printf("Special Defense: %d\n",EnemyParty.P5->SpD);
      printf("Speed: %d\n",EnemyParty.P5->Spe);
      printf("Nature: %s\n",EnemyParty.P5->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P5->Move1.Move->Name,EnemyParty.P5->Move1.PP,EnemyParty.P5->Move1.Move->PP * EnemyParty.P5->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P5->Move2.Move->Name,EnemyParty.P5->Move2.PP,EnemyParty.P5->Move2.Move->PP * EnemyParty.P5->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P5->Move3.Move->Name,EnemyParty.P5->Move3.PP,EnemyParty.P5->Move3.Move->PP * EnemyParty.P5->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P5->Move4.Move->Name,EnemyParty.P5->Move4.PP,EnemyParty.P5->Move4.Move->PP * EnemyParty.P5->Move4.PPmult);
      } else if (strcmp(x,"P6") == 0) {
      printf("\e[1;37m\nP6:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P6->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P6->CurrentHp,EnemyParty.P6->Hp);
      printf("Attack: %d\n",EnemyParty.P6->Atk);
      printf("Defense: %d\n",EnemyParty.P6->Def);
      printf("Special Attack: %d\n",EnemyParty.P6->SpA);
      printf("Special Defense: %d\n",EnemyParty.P6->SpD);
      printf("Speed: %d\n",EnemyParty.P6->Spe);
      printf("Nature: %s\n",EnemyParty.P6->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P6->Move1.Move->Name,EnemyParty.P6->Move1.PP,EnemyParty.P6->Move1.Move->PP * EnemyParty.P6->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P6->Move2.Move->Name,EnemyParty.P6->Move2.PP,EnemyParty.P6->Move2.Move->PP * EnemyParty.P6->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P6->Move3.Move->Name,EnemyParty.P6->Move3.PP,EnemyParty.P6->Move3.Move->PP * EnemyParty.P6->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P6->Move4.Move->Name,EnemyParty.P6->Move4.PP,EnemyParty.P6->Move4.Move->PP * EnemyParty.P6->Move4.PPmult);
      }
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
      if (YourTurn->Move->Type == PlayerParty.P1->Poke->Type1 || YourTurn->Move->Type == PlayerParty.P1->Poke->Type2) {
        STAB = 1.5;
      } else {
        STAB = 1;
      }

      if (EnemyTurn->Move->Type == EnemyParty.P1->Poke->Type1 || EnemyTurn->Move->Type == EnemyParty.P1->Poke->Type2) {
        EnemySTAB = 1.5;
      } else {
        EnemySTAB = 1;
      }
      // Change speed temp mult based on status
      if (PlayerParty.P1->Non_Volatile_Status == 3) PlayerSpeedTM /= 2;
      if (EnemyParty.P1->Non_Volatile_Status == 3) EnemySpeedTM /= 2;
      // sees who moves first
      if (YourTurn->Move->Priority == EnemyTurn->Move->Priority) {
      if (floor(PlayerParty.P1->Spe*statboostmult(PlayerParty.P1->StatBoosts[4]))*PlayerSpeedTM == floor(EnemyParty.P1->Spe*statboostmult(EnemyParty.P1->StatBoosts[4]))*EnemySpeedTM) {
        First = (rand() % 2);
      } else {
        First = floor(PlayerParty.P1->Spe*statboostmult(PlayerParty.P1->StatBoosts[4]))*PlayerSpeedTM > floor(EnemyParty.P1->Spe*statboostmult(EnemyParty.P1->StatBoosts[4]))*EnemySpeedTM;
      }
        } else {
        First = (YourTurn->Move->Priority > EnemyTurn->Move->Priority);
        }
      if (PlayerSwitch ^ EnemySwitch) {
        First = (PlayerSwitch==1);
      }
      // post speed,stab and reset funcs
      YourTurn->Move->movefunc(0,0);
      EnemyTurn->Move->movefunc(0,1);      
      if (First == 1) {
      if (PlayerDead == 0) {
        if (PlayerSwitch == 0) {
        PlayerHit = (map2(rand(),100,RAND_MAX) < (YourTurn->Move->Accuracy*statboostmult(PlayerParty.P1->StatBoosts[5])));
        if (PlayerParty.P1->Non_Volatile_Status == 3) {
          PlayerPara = (rand() % 4 == 0);
          if (PlayerPara == 1) PlayerCanMove = 0;
          }
        else if (PlayerParty.P1->Non_Volatile_Status == 1) PlayerTM /= 2;
        else if (PlayerParty.P1->Non_Volatile_Status == 4) {
          if (PlayerSleepCounter == 0) {
          PlayerCanMove = 0; PlayerSleep = 1;
            } else {
          if (PlayerSleepCounter >= 3) {
            PlayerSleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
              PlayerSleep = 0;
            } else {
              PlayerCanMove = 0; PlayerSleep = 1;
            }
          }
          if (PlayerSleep == 1) PlayerSleepCounter++;
          else {PlayerSleepCounter = 0; PlayerParty.P1->Non_Volatile_Status = 0; printf("%s woke up\n",PlayerParty.P1->Poke->Name);}
          }
      if (PlayerParty.P1->CurrentHp > 0 && PlayerHit == 1 && PlayerCanMove == 1) {
        if (YourTurn->Move->Category == 0) {
         YourTurn->Move->movefunc(1,0);
         YourTurn->PP--;
         YourTurn->Move->movefunc(2,0);
          }
        else if (YourTurn->Move->Category == 1) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * (PlayerParty.P1->Atk*statboostmult(PlayerParty.P1->StatBoosts[0])) * YourTurn->Move->BP / (EnemyParty.P1->Def*statboostmult(EnemyParty.P1->StatBoosts[1]))) / 50) + 2) * STAB * (TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2]) * ((rand() % 16) + 85) / 100) * PlayerTM;
        YourTurn->Move->movefunc(1,0);
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage;
        YourTurn->PP--;
        YourTurn->Move->movefunc(2,0);
          } else if (YourTurn->Move->Category == 2) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * (PlayerParty.P1->SpA*statboostmult(PlayerParty.P1->StatBoosts[2])) * YourTurn->Move->BP / (EnemyParty.P1->SpD*statboostmult(EnemyParty.P1->StatBoosts[3]))) / 50) + 2) * STAB * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * PlayerTM;
        YourTurn->Move->movefunc(1,0);
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage; 
        YourTurn->PP--;
        YourTurn->Move->movefunc(2,0);
          }
          }
          }  else {
         Switcheroo3(&PlayerSwitchSave);
      }

        display(0);
        }  
        if (EnemyDead == 0) {
        if (EnemySwitch == 0) {
        EnemyHit = (map2(rand(),100,RAND_MAX) < (EnemyTurn->Move->Accuracy*statboostmult(EnemyParty.P1->StatBoosts[5])));
        if (EnemyParty.P1->Non_Volatile_Status == 3) {
          EnemyPara = (rand() % 4 == 0);
          if (EnemyPara == 1) EnemyCanMove = 0;
          }
        else if (EnemyParty.P1->Non_Volatile_Status == 1) EnemyTM /= 2; 
        else if (EnemyParty.P1->Non_Volatile_Status == 4) {
          if (EnemySleepCounter == 0) {
          EnemyCanMove = 0; EnemySleep = 1;
            } else {
          if (EnemySleepCounter >= 3) {
            EnemySleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
            EnemySleep = 0;
            } else {
              EnemyCanMove = 0; EnemySleep = 1;
            }
          }
          if (EnemySleep == 1) EnemySleepCounter++;
          else {EnemySleepCounter = 0; EnemyParty.P1->Non_Volatile_Status = 0; printf("The opposing %s woke up\n",EnemyParty.P1->Poke->Name);}
          }
        if (EnemyParty.P1->CurrentHp > 0 && EnemyHit == 1 && EnemyCanMove == 1) {
        if (EnemyTurn->Move->Category == 0) {
         EnemyTurn->Move->movefunc(1,1);
         EnemyTurn->PP--;
         EnemyTurn->Move->movefunc(2,1);
          }
        else if (EnemyTurn->Move->Category == 1) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * (EnemyParty.P1->Atk*statboostmult(EnemyParty.P1->StatBoosts[0])) * EnemyTurn->Move->BP / (PlayerParty.P1->Def*statboostmult(PlayerParty.P1->StatBoosts[1]))) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM;
        EnemyTurn->Move->movefunc(1,1);
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
        EnemyTurn->PP--;
        EnemyTurn->Move->movefunc(2,1);
          }
        else if (EnemyTurn->Move->Category == 2) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * (EnemyParty.P1->SpA*statboostmult(EnemyParty.P1->StatBoosts[2])) * EnemyTurn->Move->BP / (PlayerParty.P1->SpD*statboostmult(PlayerParty.P1->StatBoosts[3]))) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM;
        EnemyTurn->Move->movefunc(1,1);
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
        EnemyTurn->PP--;
        EnemyTurn->Move->movefunc(2,1);
          }
          }
      }  else {
         Switcheroo4(&EnemySwitchSave);
          }
        display(1);
          }
        } else {
        if (EnemyDead == 0) {
        if (EnemySwitch == 0) {
        EnemyHit = (map2(rand(),100,RAND_MAX) < (EnemyTurn->Move->Accuracy*statboostmult(EnemyParty.P1->StatBoosts[5])));
       if (EnemyParty.P1->Non_Volatile_Status == 3) {
         EnemyPara = (rand() % 4 == 0);
         if (EnemyPara == 1) EnemyCanMove = 0;
         }
       else if (EnemyParty.P1->Non_Volatile_Status == 1) EnemyTM /= 2; 
       else if (EnemyParty.P1->Non_Volatile_Status == 4) {
          if (EnemySleepCounter == 0) {
          EnemyCanMove = 0; EnemySleep = 1;
            } else {
          if (EnemySleepCounter >= 3) {
            EnemySleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
              EnemySleep = 0;
            } else {
              EnemyCanMove = 0; EnemySleep = 1;
            }
          }
          if (EnemySleep == 1) EnemySleepCounter++;
          else {EnemySleepCounter = 0; EnemyParty.P1->Non_Volatile_Status = 0; printf("The opposing %s woke up\n",EnemyParty.P1->Poke->Name);}
          }
        if (EnemyParty.P1->CurrentHp > 0 && EnemyHit == 1 && EnemyCanMove == 1) {
        if (EnemyTurn->Move->Category == 0) {
         EnemyTurn->Move->movefunc(1,1);
         EnemyTurn->PP--;
         EnemyTurn->Move->movefunc(2,1);
          }
        else if (EnemyTurn->Move->Category == 1) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * (EnemyParty.P1->Atk*statboostmult(EnemyParty.P1->StatBoosts[0])) * EnemyTurn->Move->BP / (PlayerParty.P1->Def*statboostmult(PlayerParty.P1->StatBoosts[1]))) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM;
        EnemyTurn->Move->movefunc(1,1);
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
        EnemyTurn->PP--;
        EnemyTurn->Move->movefunc(2,1);
          }
        else if (EnemyTurn->Move->Category == 2) {
        EnemyDamage = (((((2 * EnemyParty.P1->Level / 5 + 2) * (EnemyParty.P1->SpA*statboostmult(EnemyParty.P1->StatBoosts[2])) * EnemyTurn->Move->BP / (PlayerParty.P1->SpD*statboostmult(PlayerParty.P1->StatBoosts[3]))) / 50) + 2) * EnemySTAB * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type1] * TypeChart[EnemyTurn->Move->Type][PlayerParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * EnemyTM;
        EnemyTurn->Move->movefunc(1,1);
        PlayerParty.P1->CurrentHp = PlayerParty.P1->CurrentHp - EnemyDamage;
        EnemyTurn->PP--;
        EnemyTurn->Move->movefunc(2,1);
          }
          } 
      } else {
         Switcheroo4(&EnemySwitchSave);
      }

        display(1);
          }  
      if (PlayerDead == 0) {
      if (PlayerSwitch == 0) {
        PlayerHit = (map2(rand(),100,RAND_MAX) < (YourTurn->Move->Accuracy*statboostmult(PlayerParty.P1->StatBoosts[5])));
        if (PlayerParty.P1->Non_Volatile_Status == 3) {
          PlayerPara = (rand() % 4 == 0);
          if (PlayerPara == 1) PlayerCanMove = 0;
          }  
        else if (PlayerParty.P1->Non_Volatile_Status == 1) PlayerTM /= 2;
        else if (PlayerParty.P1->Non_Volatile_Status == 4) {
          if (PlayerSleepCounter == 0) {
          PlayerCanMove = 0; PlayerSleep = 1;
            } else {
          if (PlayerSleepCounter >= 3) {
            PlayerSleep = 0;
          } else if (map2(rand(),3,RAND_MAX) < 1) {
              PlayerSleep = 0;
            } else {
              PlayerCanMove = 0; PlayerSleep = 1;
            }
          }
          if (PlayerSleep == 1) PlayerSleepCounter++;
          else {PlayerSleepCounter = 0; PlayerParty.P1->Non_Volatile_Status = 0; printf("%s woke up\n",PlayerParty.P1->Poke->Name);} 
          }
      if (PlayerParty.P1->CurrentHp > 0 && PlayerHit == 1 && PlayerCanMove == 1) {
        if (YourTurn->Move->Category == 0) {
         YourTurn->Move->movefunc(1,0);
         YourTurn->PP--;
         YourTurn->Move->movefunc(2,0);
          }
        else if (YourTurn->Move->Category == 1) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * (PlayerParty.P1->Atk*statboostmult(PlayerParty.P1->StatBoosts[0])) * YourTurn->Move->BP /  (EnemyParty.P1->Def*statboostmult(EnemyParty.P1->StatBoosts[1]))) / 50) + 2) * STAB * (TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2]) * ((rand() % 16) + 85) / 100) * PlayerTM;
        YourTurn->Move->movefunc(1,0);
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage;
        YourTurn->PP--;
        YourTurn->Move->movefunc(2,0);
          }
        else if (YourTurn->Move->Category == 2) {
        Damage = (((((2 * PlayerParty.P1->Level / 5 + 2) * (PlayerParty.P1->SpA*statboostmult(PlayerParty.P1->StatBoosts[2])) * YourTurn->Move->BP /  (EnemyParty.P1->SpD*statboostmult(EnemyParty.P1->StatBoosts[3]))) / 50) + 2) * STAB * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type1] * TypeChart[YourTurn->Move->Type][EnemyParty.P1->Poke->Type2] * ((rand() % 16) + 85) / 100) * PlayerTM;
        YourTurn->Move->movefunc(1,0);
        EnemyParty.P1->CurrentHp = EnemyParty.P1->CurrentHp - Damage;
        YourTurn->PP--;
        YourTurn->Move->movefunc(2,0);
          }
          }
          } else {
         Switcheroo3(&PlayerSwitchSave);
      }

        display(0);
        }
        }
      
      if (PlayerParty.P1->Non_Volatile_Status == 1) {
        PlayerParty.P1->CurrentHp -= PlayerParty.P1->Hp/8;
        printf("\n%s took some damage from its burn\n",PlayerParty.P1->Poke->Name);
        printf("Your %s is at %d/%d hp\n\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      }
      if (EnemyParty.P1->Non_Volatile_Status == 1) {
        EnemyParty.P1->CurrentHp -= EnemyParty.P1->Hp/8;
        printf("\nThe opposing %s took some damage from its burn\n",EnemyParty.P1->Poke->Name);
        printf("The opposing %s is at %d/%d hp\n\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      }
      
      Execute = 0;
      Retrieve = 1;
    }
  }
  return 0;
}