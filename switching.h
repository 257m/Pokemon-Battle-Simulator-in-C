void Switch(struct MyPokemon **swap1,struct MyPokemon **swap2) {
  struct MyPokemon *swapsave = *swap1;
  *swap1 = *swap2;
  *swap2 = swapsave;
}

/* int Switcheroo(struct MyPokemon **S1) {
  Temp = *S1;
  *S1 = PlayerParty.P1;
  PlayerParty.P1 = Temp;
  return 0;
  }

int Switcheroo2(struct MyPokemon **S2) {
  Temp = *S2;
  *S2 = EnemyParty.P1;
  EnemyParty.P1 = Temp;
  return 0;
  }
int Switcheroo3(struct MyPokemon ***S3) {
  Temp = **S3;
  **S3 = PlayerParty.P1;
  PlayerParty.P1 = Temp;
  return 0;
  }

int Switcheroo4(struct MyPokemon ***S4) {
  Temp = **S4;
  **S4 = EnemyParty.P1;
  EnemyParty.P1 = Temp;
  return 0;
  } 
*/
int SwitchIn(PlayerOrEnemy) {
          if (PlayerOrEnemy == 0) {
          printf("EnemySwitch-In: ");
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[1]->Poke->Name)) == 0 || strcmp(x,"P2") == 0) {
            if (Parties[1].Member[1]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(&Parties[1].Member[0],&Parties[1].Member[1]);
            printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[2]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[2]->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
            if (Parties[1].Member[2]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(&Parties[1].Member[0],&Parties[1].Member[2]);
            printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[3]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[3]->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
            if (Parties[1].Member[3]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(&Parties[1].Member[0],&Parties[1].Member[3]);
              printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[4]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[4]->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
            if (Parties[1].Member[4]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(&Parties[1].Member[0],&Parties[1].Member[4]);
              printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[5]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[5]->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
            if (Parties[1].Member[5]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(&Parties[1].Member[0],&Parties[1].Member[5]);
              printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          } else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
          displayparty(1);
          SwitchIn(0);
    } else {
            printf("That is not a valid switch. Please Try Again.\n");
            SwitchIn(0);
          }
  } else {
          printf("Switch-In: ");
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[1]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[1]->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
            if (Parties[0].Member[1]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(&Parties[0].Member[0],&Parties[0].Member[1]);
            Switch(0,1);
              printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[2]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[2]->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
            if (Parties[0].Member[2]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(&Parties[0].Member[0],&Parties[0].Member[3]);
              printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[3]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[3]->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
            if (Parties[0].Member[3]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(&Parties[0].Member[0],&Parties[0].Member[3]);
              printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[4]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[4]->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
            if (Parties[0].Member[4]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(&Parties[0].Member[0],&Parties[0].Member[4]);
            printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[5]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[5]->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
            if (Parties[0].Member[5]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(&Parties[0].Member[0],&Parties[0].Member[5]);
            printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"View Party") == 0 || strcmp(x,"View") == 0 || strcmp(x,"Party") == 0) {
      displayparty(0);
      SwitchIn(1);
    } else {
            printf("That is not a valid switch. Please Try Again.\n");
            SwitchIn(1);
          }
  }
  return 0;
}