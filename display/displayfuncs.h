void display_move(bool eop) {
        if (Parties[eop].CanMove) {
          printf("%s%s used %s!\n",EOPTEXT[eop],POKEMONDEX[Parties[eop].Member[0]->Poke].Name,MoveList[Parties[eop].Turn->Move].Name);
          if (!Parties[eop].Hit) printf("But it missed!\n");
          } else if (!Parties[eop].Confused) {
          printf("%s%s couldn't move\n",EOPTEXT[eop],POKEMONDEX[Parties[eop].Member[0]->Poke].Name);
          if (Parties[eop].Flinch) printf("It flinched!\n");
          else if (Parties[eop].Para) printf("It was paralyzed!\n");
          else if (Parties[eop].Sleep) printf("It is asleep\n");
          else if (Parties[eop].Frozen) printf("It is frozen!\n");
          }
}

void move_result(bool eop) {
        if (Parties[eop].Hit && Parties[eop].CanMove) {
        if (MoveList[Parties[eop].Turn->Move].Category != 0) {
        if (Parties[eop].Damage > 0) {
        printf("It did %d damage!\n",Parties[eop].Damage);
        if (TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1] * TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1] * TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2] <= 0.5) {
          if (TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type1] * TypeChart[Parties[eop].MoveTempType][POKEMONDEX[Parties[!eop].Member[0]->Poke].Type2] <= 0) printf("It dosen't affect %s\n",POKEMONDEX[Parties[!eop].Member[0]->Poke].Name);
          else printf("It was not very effective!\n");
          }
        if (Parties[eop].Crit && Parties[eop].Damage > 0) printf("It was a critical hit!\n");
          }
        else printf("It had no effect on %s%s...\n",EOPTEXT[!eop + 2],POKEMONDEX[Parties[!eop].Member[0]->Poke].Name);
        printf("%s%s is at %d/%d hp\n",EOPTEXT[!eop],POKEMONDEX[Parties[!eop].Member[0]->Poke].Name,Parties[!eop].Member[0]->CurrentHp,Parties[!eop].Member[0]->Hp);
          }
          } 
        if (Parties[!eop].Member[0]->CurrentHp <= 0) {
          printf("%s%s fainted!\n",EOPTEXT[!eop],POKEMONDEX[Parties[!eop].Member[0]->Poke].Name);
          SwitchIn(!eop);
          Parties[!eop].Dead = 1;
        }
}