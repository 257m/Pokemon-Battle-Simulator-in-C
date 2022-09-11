void display_move(bool eop) {
        if (Parties[eop].CanMove) {
          printf("%s%s used %s!\n",EOPTEXT[eop],Parties[eop].Member[0]->Poke->Name,MoveList[Parties[eop].Turn->Move].Name);
          if (!Parties[eop].Hit) printf("But it missed!\n");
          } else {
          printf("%s%s couldn't move\n",EOPTEXT[eop],Parties[eop].Member[0]->Poke->Name);
          if (Parties[eop].Para) printf("It was paralyzed!\n");
          else if (Parties[eop].Sleep) printf("It is asleep\n");
          else if (Parties[eop].Frozen) printf("It is frozen!\n");
          }
}

void move_result(bool eop) {
        if (Parties[eop].Hit && Parties[eop].CanMove) {
        if (MoveList[Parties[eop].Turn->Move].Category != 0) {
        if (Parties[eop].Damage > 0) printf("It did %d damage!\n",Parties[eop].Damage);
        if (TypeChart[MoveList[Parties[eop].Turn->Move].Type][Parties[!eop].Member[0]->Poke->Type1] * TypeChart[MoveList[Parties[eop].Turn->Move].Type][Parties[!eop].Member[0]->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[MoveList[Parties[eop].Turn->Move].Type][Parties[!eop].Member[0]->Poke->Type1] * TypeChart[MoveList[Parties[eop].Turn->Move].Type][Parties[!eop].Member[0]->Poke->Type2] <= 0.5) {
          if (TypeChart[MoveList[Parties[eop].Turn->Move].Type][Parties[!eop].Member[0]->Poke->Type1] * TypeChart[MoveList[Parties[eop].Turn->Move].Type][Parties[!eop].Member[0]->Poke->Type2] <= 0) printf("It dosen't affect %s\n",Parties[!eop].Member[0]->Poke->Name);
          else printf("It was not very effective!\n");
          }
        if (Parties[eop].Crit) printf("It was a critical hit!\n");
        printf("%s%s is at %d/%d hp\n",EOPTEXT[!eop],Parties[!eop].Member[0]->Poke->Name,Parties[!eop].Member[0]->CurrentHp,Parties[!eop].Member[0]->Hp);
          }
          } 
        if (Parties[!eop].Member[0]->CurrentHp <= 0) {
          printf("%s%s fainted!\n",EOPTEXT[!eop],Parties[!eop].Member[0]->Poke->Name);
          SwitchIn(!eop);
          Parties[!eop].Dead = 1;
        }
}