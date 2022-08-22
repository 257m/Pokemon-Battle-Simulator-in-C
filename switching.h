int Switcheroo(struct MyPokemon **S1) {
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



int SwitchIn(PlayerOrEnemy) {
          if (PlayerOrEnemy == 0) {
          printf("EnemySwitch-In: ");
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P2->Poke->Name)) == 0 || strcmp(x,"P2") == 0) {
            if (EnemyParty.P2->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P2);
            printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P3->Poke->Name)) == 0 || strcmp(x,EnemyParty.P3->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
            if (EnemyParty.P3->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P3);
            printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P4->Poke->Name)) == 0 || strcmp(x,EnemyParty.P4->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
            if (EnemyParty.P4->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P4);
              printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P5->Poke->Name)) == 0 || strcmp(x,EnemyParty.P5->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
            if (EnemyParty.P5->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P5);
              printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",EnemyParty.P6->Poke->Name)) == 0 || strcmp(x,EnemyParty.P6->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
            if (EnemyParty.P6->CurrentHp > 0) {
            Switcheroo2(&EnemyParty.P6);
              printf("Go! %s!\n",EnemyParty.P1->Poke->Name);
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
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P2->Poke->Name)) == 0 || strcmp(x,PlayerParty.P2->Poke->Name) == 0 || strcmp(x,"P2") == 0) {
            if (PlayerParty.P2->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P2);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P3->Poke->Name)) == 0 || strcmp(x,PlayerParty.P3->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
            if (PlayerParty.P3->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P3);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P4->Poke->Name)) == 0 || strcmp(x,PlayerParty.P4->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
            if (PlayerParty.P4->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P4);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P5->Poke->Name)) == 0 || strcmp(x,PlayerParty.P5->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
            if (PlayerParty.P5->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P5);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",PlayerParty.P6->Poke->Name)) == 0 || strcmp(x,PlayerParty.P6->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
            if (PlayerParty.P6->CurrentHp > 0) {
            Switcheroo(&PlayerParty.P6);
              printf("Go! %s!\n",PlayerParty.P1->Poke->Name);
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