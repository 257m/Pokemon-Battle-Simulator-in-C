void display_move(bool eop) {
        if (CanMove[eop]) {
          printf("%s%s used %s!\n",EOPTEXT[eop],Parties[eop].Member[0]->Poke->Name,MoveList[Turns[eop]->Move].Name);
          if (!Hit[eop]) printf("But it missed!\n");
          } else {
          printf("%s%s couldn't move\n",EOPTEXT[eop],Parties[eop].Member[0]->Poke->Name);
          if (Para[eop]) printf("It was paralyzed!\n");
          else if (Sleep[eop]) printf("It is asleep\n");
          else if (Frozen[eop]) printf("It is frozen!\n");
          }
}

void move_result(bool eop) {
  if (!eop) {
        if (Hit[eop] && CanMove[eop]) {
        if (MoveList[Turns[eop]->Move].Category != 0) {
        if (Damages[eop] > 0) printf("It did %d damage!\n",Damages[eop]);
        if (TypeChart[MoveList[Turns[eop]->Move].Type][Parties[!eop].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[eop]->Move].Type][Parties[!eop].Member[0]->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[MoveList[Turns[eop]->Move].Type][Parties[!eop].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[eop]->Move].Type][Parties[!eop].Member[0]->Poke->Type2] <= 0.5) {
          if (TypeChart[MoveList[Turns[eop]->Move].Type][Parties[!eop].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[eop]->Move].Type][Parties[!eop].Member[0]->Poke->Type2] <= 0) printf("It dosen't affect %s\n",Parties[!eop].Member[0]->Poke->Name);
          else printf("It was not very effective!\n");
          }
        if (Crit[eop]) printf("It was a critical hit!\n");
        printf("The opposing %s is at %d/%d hp\n",Parties[!eop].Member[0]->Poke->Name,Parties[!eop].Member[0]->CurrentHp,Parties[!eop].Member[0]->Hp);
          }
          } 
        if (Parties[!eop].Member[0]->CurrentHp <= 0) {
          printf("The opposing %s fainted!\n",Parties[!eop].Member[0]->Poke->Name);
          SwitchIn(!eop);
          Dead[!eop] = 1;
        }
  } 
  else {
          if (Hit[1] && CanMove[1]) {        
        if (MoveList[Turns[1]->Move].Category != 0) {
        if (Damages[1] > 0) printf("It did %d damage!\n",Damages[1]);
        if (TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type2] <= 0.5) {
          if (TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type2] <= 0) printf("It dosen't affect %s\n",Parties[0].Member[0]->Poke->Name);
          printf("It was not very effective!\n");
        }
        if (Crit[1]) printf("It was a critical hit!\n");
        printf("Your %s is at %d/%d hp\n",Parties[0].Member[0]->Poke->Name,Parties[0].Member[0]->CurrentHp,Parties[0].Member[0]->Hp);
          } 
          } 
        if (Parties[0].Member[0]->CurrentHp <= 0) {
          printf("Your %s fainted!\n",Parties[0].Member[0]->Poke->Name);
          SwitchIn(!eop);
          Dead[0] = 1;
        }
  }
}