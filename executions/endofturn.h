void endturn(bool eop) {
    MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc >> 5](5,eop,0);
    MOVE_FUNC_LIST[MoveList[Parties[eop].Turn->Move].movefunc & REMOVE_FIRST_FIVE_BITS](5,eop,1);
    if (((unsigned char)MoveList[Parties[eop].Turn->Move].movefunc >> 5 != MF_PROTECT) && ((~MoveList[Parties[eop].Turn->Move].movefunc & REMOVE_FIRST_FIVE_BITS) != MF_PROTECT)) Parties[eop].EFFECT_COUNTERS[EFFECT_PROTECT] = 0; 
    if (Parties[eop].Member[0]->Non_Volatile_Status == STATUS_BURN) {
        Parties[eop].Member[0]->CurrentHp -= tt(Parties[eop].Member[0]->Hp/8 > 1,Parties[eop].Member[0]->Hp/8,1);
        printf("%s took some damage from its burn!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
        printf("%s is at %d/%d hp\n\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name,Parties[eop].Member[0]->CurrentHp,Parties[eop].Member[0]->Hp);
      } else if (Parties[eop].Member[0]->Non_Volatile_Status == STATUS_POISON) {
        Parties[eop].Member[0]->CurrentHp -= tt(Parties[eop].Member[0]->Hp/8 > 1,Parties[eop].Member[0]->Hp/8,1);
        printf("%s is hurt poison!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
        printf("%s is at %d/%d hp\n\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name,Parties[eop].Member[0]->CurrentHp,Parties[eop].Member[0]->Hp);
      } else if (Parties[eop].Member[0]->Non_Volatile_Status == STATUS_TOXIC) {
        if (Parties[eop].Member[0]->Counter < 16) Parties[eop].Member[0]->Counter++;
        Parties[eop].Member[0]->CurrentHp -= tt(Parties[eop].Member[0]->Hp*((double)Parties[eop].Member[0]->Counter/16) > 1,Parties[eop].Member[0]->Hp*((double)Parties[eop].Member[0]->Counter/16),1);
        printf("%s is hurt by poison! (it's badly poisoned)\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
        printf("%s is at %d/%d hp\n\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name,Parties[eop].Member[0]->CurrentHp,Parties[eop].Member[0]->Hp);
      }
      if (Parties[eop].Member[0]->CurrentHp <= 0) {
        printf("\033[1F%s fainted!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
        SwitchIn(eop);
        printf("\n");
      } else {
      ITEM_FUNC_LIST[ItemList[Parties[eop].Member[0]->Item].itemfunc](5,eop);
      }
}