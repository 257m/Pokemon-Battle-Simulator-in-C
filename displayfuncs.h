void display_move(bool eop) {
  if (!eop) {
        if (PlayerCanMove) {
          printf("%s used %s!\n",Parties[0].Member[0]->Poke->Name,MoveList[Turns[0]->Move].Name);
          if (!PlayerHit) printf("But it missed!\n");
          } else {
          printf("%s couldn't move\n",Parties[0].Member[0]->Poke->Name);
          if (PlayerPara) printf("It was paralyzed!\n");
          else if (PlayerSleep) printf("It is asleep\n");
          else if (PlayerFrozen) printf("It is frozen!\n");
          }
  } 
  else {
         if (EnemyCanMove) {
           printf("The opposing %s used %s!\n",Parties[1].Member[0]->Poke->Name,MoveList[Turns[1]->Move].Name);
           if (!EnemyHit) printf("But it missed!\n");
           }
        else {
          printf("The opposing %s couldn't move\n",Parties[1].Member[0]->Poke->Name);
          if (EnemyPara) printf("It was paralyzed!\n");
          else if (EnemySleep) printf("It is asleep\n");
          else if (EnemyFrozen) printf("It is frozen!\n");
          }      
  }
}

void move_result(bool eop) {
  if (!eop) {
        if (PlayerHit && PlayerCanMove) {
        if (MoveList[Turns[0]->Move].Category != 0) {
        printf("It did %d damage!\n",Damages[0]);
        if (TypeChart[MoveList[Turns[0]->Move].Type][Parties[1].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[0]->Move].Type][Parties[1].Member[0]->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[MoveList[Turns[0]->Move].Type][Parties[1].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[0]->Move].Type][Parties[1].Member[0]->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
          }
        if (PlayerCrit) printf("It was a critical hit!\n");
        printf("The opposing %s is at %d/%d hp\n",Parties[1].Member[0]->Poke->Name,Parties[1].Member[0]->CurrentHp,Parties[1].Member[0]->Hp);
          }
          } 
        if (Parties[1].Member[0]->CurrentHp <= 0) {
          printf("The opposing %s fainted!\n",Parties[1].Member[0]->Poke->Name);
          SwitchIn(!eop);
          EnemyDead = 1;
        }
  } 
  else {
          if (EnemyHit && EnemyCanMove) {        
        if (MoveList[Turns[1]->Move].Category != 0) {
        printf("It did %d damage!\n",Damages[1]);
        if (TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type2] >= 2) {
          printf("It was super effective!\n");
        }
        else if (TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type1] * TypeChart[MoveList[Turns[1]->Move].Type][Parties[0].Member[0]->Poke->Type2] <= 0.5) {
          printf("It was not very effective!\n");
        }
        if (EnemyCrit) printf("It was a critical hit!\n");
        printf("Your %s is at %d/%d hp\n",Parties[0].Member[0]->Poke->Name,Parties[0].Member[0]->CurrentHp,Parties[0].Member[0]->Hp);
          } 
          } 
        if (Parties[0].Member[0]->CurrentHp <= 0) {
          printf("Your %s fainted!\n",Parties[0].Member[0]->Poke->Name);
          SwitchIn(!eop);
          PlayerDead = 1;
        }
  }
}