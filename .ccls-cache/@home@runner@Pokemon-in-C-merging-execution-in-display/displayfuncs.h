void moveused (bool eop) {
  if (!eop) {
    if (PlayerSwitch == 0) {
    if (PlayerCanMove == 1) printf("\n%s used %s!\n",PlayerParty.P1->Poke->Name,YourTurn->Move->Name);
    else {
    printf("\n%s couldn't move\n",PlayerParty.P1->Poke->Name);
    if (PlayerPara == 1) printf("It was paralyzed!\n");
    }
    }
  } 
  else {
   if (EnemySwitch == 0) {
    if (EnemyCanMove == 1) printf("\n%s used %s!\n",EnemyParty.P1->Poke->Name,EnemyTurn->Move->Name);
    else {
    printf("\n%s couldn't move\n",PlayerParty.P1->Poke->Name);
    if (EnemyPara == 1) printf("It was paralyzed!\n");
    }
     }
  }
}

void aftermath (bool eop) {
  if (!eop) {
    
  }
  else {
    
  }
}