void NoItemf(char et,bool eop) {
}

void Leftoversf(char et,bool eop) {  
    if (et == 5) {
    if (Parties[eop].Member[0]->ItemUsable) {
      if (Parties[eop].Member[0]->CurrentHp < Parties[eop].Member[0]->Hp) {
        Parties[eop].Member[0]->CurrentHp += Parties[eop].Member[0]->Hp/16;
        printf("%s restored a little HP using its Leftovers\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
        printf("%s is at %d/%d hp\n\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name,Parties[eop].Member[0]->CurrentHp,Parties[eop].Member[0]->Hp);
          }
      }
      }
}

void Focus_Sashf(char et,bool eop) {
    if (et == -1) {
    if (Parties[eop].Member[0]->ItemUsable) {
    if (Parties[eop].Member[0]->CurrentHp == Parties[eop].Member[0]->Hp && Parties[!eop].Damage >= Parties[eop].Member[0]->Hp && !(CHK_BIT(Parties[eop].EFFECT_FLAGS[0],EFFECT_PROTECT) && CHK_BIT(MoveList[Parties[!eop].Turn->Move].FLAGS,nFLAG_PROTECT_AFFECTED))) {
      Parties[!eop].Damage = Parties[eop].Member[0]->CurrentHp-1;
      printf("%s hung on with its Focus Sash!\n",POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
      Parties[eop].Member[0]->ItemUsable = 0;
      }
    }
      }
  
}

gpf ITEM_FUNC_LIST [] = {&NoItemf,&Leftoversf,&Focus_Sashf};