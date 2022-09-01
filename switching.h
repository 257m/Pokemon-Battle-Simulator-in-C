void Switch(bool party,unsigned char member) {
  struct MyPokemon * PointerSave;
  PointerSave = Parties[party].Member[0];
  Parties[party].Member[0] = Parties[party].Member[member];
  Parties[party].Member[member] = PointerSave;
}

int SwitchIn(PlayerOrEnemy) {
          if (PlayerOrEnemy == 0) {
          printf("EnemySwitch-In: ");
          fgets(x,31,stdin);
          x[strcspn(x, "\n")] = 0;
          if (strcmp(x,"Switch to P2") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[1]->Poke->Name)) == 0 || strcmp(x,"P2") == 0) {
            if (Parties[1].Member[1]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(1,1);
            printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[2]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[2]->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
            if (Parties[1].Member[2]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(1,2);
            printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[3]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[3]->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
            if (Parties[1].Member[3]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(1,3);
              printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[4]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[4]->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
            if (Parties[1].Member[4]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(1,4);
              printf("Go! %s!\n",Parties[1].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(0);}
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",Parties[1].Member[5]->Poke->Name)) == 0 || strcmp(x,Parties[1].Member[5]->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
            if (Parties[1].Member[5]->CurrentHp > 0) {
            CLEAR_EFFECTS(1);
            Switch(1,5);
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
            Switch(0,1);
              printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P3") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[2]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[2]->Poke->Name) == 0 || strcmp(x,"P3") == 0) {
            if (Parties[0].Member[2]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(0,2);
              printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P4") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[3]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[3]->Poke->Name) == 0 || strcmp(x,"P4") == 0) {
            if (Parties[0].Member[3]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(0,3);
              printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P5") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[4]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[4]->Poke->Name) == 0 || strcmp(x,"P5") == 0) {
            if (Parties[0].Member[4]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(0,4);
              printf("Go! %s!\n",Parties[0].Member[0]->Poke->Name);
              } else {printf("That pokemon is already fainted\n");SwitchIn(1);}
          }  else if (strcmp(x,"Switch to P6") == 0 || strcmp(x,stratt("Switch to ",Parties[0].Member[5]->Poke->Name)) == 0 || strcmp(x,Parties[0].Member[5]->Poke->Name) == 0 || strcmp(x,"P6") == 0) {
            if (Parties[0].Member[5]->CurrentHp > 0) {
            CLEAR_EFFECTS(0);
            Switch(0,5);
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