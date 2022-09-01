void CheckIfAllDead(bool eop) {
  if (Parties[eop].Member[0]->CurrentHp <= 0 && Parties[eop].Member[1]->CurrentHp <= 0 && Parties[eop].Member[2]->CurrentHp <= 0 && Parties[eop].Member[3]->CurrentHp <= 0 && Parties[eop].Member[4]->CurrentHp <= 0 && Parties[eop].Member[5]->CurrentHp <= 0) {
    if (!eop) {
     printf("The Player has won\n");
      } else {
      printf("The Enemy has won\n");
      }
     printf("Do you want to play again? (y/n): ");
     fgets(x,31,stdin);
     x[strcspn(x,"\n")] = 0;
     if (strcmp(x,"y") == 0 || strcmp(x,"") == 0) {
     StatCalc = 1;
     BattleMode = 0;
     Retrieve = 0;
     Execute = 0;
  }
    }
}