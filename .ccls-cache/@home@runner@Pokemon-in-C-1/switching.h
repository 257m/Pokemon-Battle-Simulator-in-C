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
      printf("\n\e[1;37mP1:\e[0m %s %d/%d\n",EnemyParty.P1->Poke->Name,EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      printf("\e[1;37mP2:\e[0m %s %d/%d\n",EnemyParty.P2->Poke->Name,EnemyParty.P2->CurrentHp,EnemyParty.P2->Hp);
      printf("\e[1;37mP3:\e[0m %s %d/%d\n",EnemyParty.P3->Poke->Name,EnemyParty.P3->CurrentHp,EnemyParty.P3->Hp);
      printf("\e[1;37mP4:\e[0m %s %d/%d\n",EnemyParty.P4->Poke->Name,EnemyParty.P4->CurrentHp,EnemyParty.P4->Hp);
      printf("\e[1;37mP5:\e[0m %s %d/%d\n",EnemyParty.P5->Poke->Name,EnemyParty.P5->CurrentHp,EnemyParty.P5->Hp);
      printf("\e[1;37mP6:\e[0m %s %d/%d\n",EnemyParty.P6->Poke->Name,EnemyParty.P6->CurrentHp,EnemyParty.P6->Hp);
      printf("\nPartyMember: ");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      printf("\e[1;37m\nP1:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P1->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P1->CurrentHp,EnemyParty.P1->Hp);
      printf("Attack: %d\n",EnemyParty.P1->Atk);
      printf("Defense: %d\n",EnemyParty.P1->Def);
      printf("Special Attack: %d\n",EnemyParty.P1->SpA);
      printf("Special Defense: %d\n",EnemyParty.P1->SpD);
      printf("Speed: %d\n",EnemyParty.P1->Spe);
      printf("Nature: %s\n",EnemyParty.P1->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P1->Move1.Move->Name,EnemyParty.P1->Move1.PP,EnemyParty.P1->Move1.Move->PP * EnemyParty.P1->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P1->Move2.Move->Name,EnemyParty.P1->Move2.PP,EnemyParty.P1->Move2.Move->PP * EnemyParty.P1->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P1->Move3.Move->Name,EnemyParty.P1->Move3.PP,EnemyParty.P1->Move3.Move->PP * EnemyParty.P1->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P1->Move4.Move->Name,EnemyParty.P1->Move4.PP,EnemyParty.P1->Move4.Move->PP * EnemyParty.P1->Move4.PPmult);
      } else if (strcmp(x,"P2") == 0) {
      printf("\e[1;37m\nP2:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P2->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P2->CurrentHp,EnemyParty.P2->Hp);
      printf("Attack: %d\n",EnemyParty.P2->Atk);
      printf("Defense: %d\n",EnemyParty.P2->Def);
      printf("Special Attack: %d\n",EnemyParty.P2->SpA);
      printf("Special Defense: %d\n",EnemyParty.P2->SpD);
      printf("Speed: %d\n",EnemyParty.P2->Spe);
      printf("Nature: %s\n",EnemyParty.P2->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P2->Move1.Move->Name,EnemyParty.P2->Move1.PP,EnemyParty.P2->Move1.Move->PP * EnemyParty.P2->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P2->Move2.Move->Name,EnemyParty.P2->Move2.PP,EnemyParty.P2->Move2.Move->PP * EnemyParty.P2->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P2->Move3.Move->Name,EnemyParty.P2->Move3.PP,EnemyParty.P2->Move3.Move->PP * EnemyParty.P2->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P2->Move4.Move->Name,EnemyParty.P2->Move4.PP,EnemyParty.P2->Move4.Move->PP * EnemyParty.P2->Move4.PPmult);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37m\nP3:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P3->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P3->CurrentHp,EnemyParty.P3->Hp);
      printf("Attack: %d\n",EnemyParty.P3->Atk);
      printf("Defense: %d\n",EnemyParty.P3->Def);
      printf("Special Attack: %d\n",EnemyParty.P3->SpA);
      printf("Special Defense: %d\n",EnemyParty.P3->SpD);
      printf("Speed: %d\n",EnemyParty.P3->Spe);
      printf("Nature :%s\n",EnemyParty.P3->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P3->Move1.Move->Name,EnemyParty.P3->Move1.PP,EnemyParty.P3->Move1.Move->PP * EnemyParty.P3->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P3->Move2.Move->Name,EnemyParty.P3->Move2.PP,EnemyParty.P3->Move2.Move->PP * EnemyParty.P3->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P3->Move3.Move->Name,EnemyParty.P3->Move3.PP,EnemyParty.P3->Move3.Move->PP * EnemyParty.P3->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P3->Move4.Move->Name,EnemyParty.P3->Move4.PP,EnemyParty.P3->Move4.Move->PP * EnemyParty.P3->Move4.PPmult);
      } else if (strcmp(x,"P4") == 0) {
      printf("\e[1;37m\nP4:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P4->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P4->CurrentHp,EnemyParty.P4->Hp);
      printf("Attack: %d\n",EnemyParty.P4->Atk);
      printf("Defense: %d\n",EnemyParty.P4->Def);
      printf("Special Attack: %d\n",EnemyParty.P4->SpA);
      printf("Special Defense: %d\n",EnemyParty.P4->SpD);
      printf("Speed: %d\n",EnemyParty.P4->Spe);
      printf("Nature: %s\n",EnemyParty.P4->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P4->Move1.Move->Name,EnemyParty.P4->Move1.PP,EnemyParty.P4->Move1.Move->PP * EnemyParty.P4->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P4->Move2.Move->Name,EnemyParty.P4->Move2.PP,EnemyParty.P4->Move2.Move->PP * EnemyParty.P4->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P4->Move3.Move->Name,EnemyParty.P4->Move3.PP,EnemyParty.P4->Move3.Move->PP * EnemyParty.P4->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P4->Move4.Move->Name,EnemyParty.P4->Move4.PP,EnemyParty.P4->Move4.Move->PP * EnemyParty.P4->Move4.PPmult);
      } else if (strcmp(x,"P5") == 0) {
      printf("\e[1;37m\nP5:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P5->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P5->CurrentHp,EnemyParty.P5->Hp);
      printf("Attack: %d\n",EnemyParty.P5->Atk);
      printf("Defense: %d\n",EnemyParty.P5->Def);
      printf("Special Attack: %d\n",EnemyParty.P5->SpA);
      printf("Special Defense: %d\n",EnemyParty.P5->SpD);
      printf("Speed: %d\n",EnemyParty.P5->Spe);
      printf("Nature: %s\n",EnemyParty.P5->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P5->Move1.Move->Name,EnemyParty.P5->Move1.PP,EnemyParty.P5->Move1.Move->PP * EnemyParty.P5->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P5->Move2.Move->Name,EnemyParty.P5->Move2.PP,EnemyParty.P5->Move2.Move->PP * EnemyParty.P5->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P5->Move3.Move->Name,EnemyParty.P5->Move3.PP,EnemyParty.P5->Move3.Move->PP * EnemyParty.P5->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P5->Move4.Move->Name,EnemyParty.P5->Move4.PP,EnemyParty.P5->Move4.Move->PP * EnemyParty.P5->Move4.PPmult);
      } else if (strcmp(x,"P6") == 0) {
      printf("\e[1;37m\nP6:\e[0m\n");
      printf("Pokemon: %s\n",EnemyParty.P6->Poke->Name);
      printf("Health: %d/%d\n",EnemyParty.P6->CurrentHp,EnemyParty.P6->Hp);
      printf("Attack: %d\n",EnemyParty.P6->Atk);
      printf("Defense: %d\n",EnemyParty.P6->Def);
      printf("Special Attack: %d\n",EnemyParty.P6->SpA);
      printf("Special Defense: %d\n",EnemyParty.P6->SpD);
      printf("Speed: %d\n",EnemyParty.P6->Spe);
      printf("Nature: %s\n",EnemyParty.P6->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",EnemyParty.P6->Move1.Move->Name,EnemyParty.P6->Move1.PP,EnemyParty.P6->Move1.Move->PP * EnemyParty.P6->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",EnemyParty.P6->Move2.Move->Name,EnemyParty.P6->Move2.PP,EnemyParty.P6->Move2.Move->PP * EnemyParty.P6->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",EnemyParty.P6->Move3.Move->Name,EnemyParty.P6->Move3.PP,EnemyParty.P6->Move3.Move->PP * EnemyParty.P6->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",EnemyParty.P6->Move4.Move->Name,EnemyParty.P6->Move4.PP,EnemyParty.P6->Move4.Move->PP * EnemyParty.P6->Move4.PPmult);
      }
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
      printf("\n\e[1;37mP1:\e[0m %s %d/%d\n",PlayerParty.P1->Poke->Name,PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      printf("\e[1;37mP2:\e[0m %s %d/%d\n",PlayerParty.P2->Poke->Name,PlayerParty.P2->CurrentHp,PlayerParty.P2->Hp);
      printf("\e[1;37mP3:\e[0m %s %d/%d\n",PlayerParty.P3->Poke->Name,PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("\e[1;37mP4:\e[0m %s %d/%d\n",PlayerParty.P4->Poke->Name,PlayerParty.P4->CurrentHp,PlayerParty.P4->Hp);
      printf("\e[1;37mP5:\e[0m %s %d/%d\n",PlayerParty.P5->Poke->Name,PlayerParty.P5->CurrentHp,PlayerParty.P5->Hp);
      printf("\e[1;37mP6:\e[0m %s %d/%d\n",PlayerParty.P6->Poke->Name,PlayerParty.P6->CurrentHp,PlayerParty.P6->Hp);
      printf("\nPartyMember: ");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      printf("\e[1;37m\nP1:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P1->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P1->CurrentHp,PlayerParty.P1->Hp);
      printf("Attack: %d\n",PlayerParty.P1->Atk);
      printf("Defense: %d\n",PlayerParty.P1->Def);
      printf("Special Attack: %d\n",PlayerParty.P1->SpA);
      printf("Special Defense: %d\n",PlayerParty.P1->SpD);
      printf("Speed: %d\n",PlayerParty.P1->Spe);
      printf("Nature: %s\n",PlayerParty.P1->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P1->Move1.Move->Name,PlayerParty.P1->Move1.PP,PlayerParty.P1->Move1.Move->PP * PlayerParty.P1->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P1->Move2.Move->Name,PlayerParty.P1->Move2.PP,PlayerParty.P1->Move2.Move->PP * PlayerParty.P1->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P1->Move3.Move->Name,PlayerParty.P1->Move3.PP,PlayerParty.P1->Move3.Move->PP * PlayerParty.P1->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P1->Move4.Move->Name,PlayerParty.P1->Move4.PP,PlayerParty.P1->Move4.Move->PP * PlayerParty.P1->Move4.PPmult);
      } else if (strcmp(x,"P2") == 0) {
      printf("\e[1;37m\nP2:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P2->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P2->CurrentHp,PlayerParty.P2->Hp);
      printf("Attack: %d\n",PlayerParty.P2->Atk);
      printf("Defense: %d\n",PlayerParty.P2->Def);
      printf("Special Attack: %d\n",PlayerParty.P2->SpA);
      printf("Special Defense: %d\n",PlayerParty.P2->SpD);
      printf("Speed: %d\n",PlayerParty.P2->Spe);
      printf("Nature: %s\n",PlayerParty.P2->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P2->Move1.Move->Name,PlayerParty.P2->Move1.PP,PlayerParty.P2->Move1.Move->PP * PlayerParty.P2->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P2->Move2.Move->Name,PlayerParty.P2->Move2.PP,PlayerParty.P2->Move2.Move->PP * PlayerParty.P2->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P2->Move3.Move->Name,PlayerParty.P2->Move3.PP,PlayerParty.P2->Move3.Move->PP * PlayerParty.P2->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P2->Move4.Move->Name,PlayerParty.P2->Move4.PP,PlayerParty.P2->Move4.Move->PP * PlayerParty.P2->Move4.PPmult);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37m\nP3:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P3->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("Attack: %d\n",PlayerParty.P3->Atk);
      printf("Defense: %d\n",PlayerParty.P3->Def);
      printf("Special Attack: %d\n",PlayerParty.P3->SpA);
      printf("Special Defense: %d\n",PlayerParty.P3->SpD);
      printf("Speed: %d\n",PlayerParty.P3->Spe);
      printf("Nature: %s\n",PlayerParty.P3->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P3->Move1.Move->Name,PlayerParty.P3->Move1.PP,PlayerParty.P3->Move1.Move->PP * PlayerParty.P3->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P3->Move2.Move->Name,PlayerParty.P3->Move2.PP,PlayerParty.P3->Move2.Move->PP * PlayerParty.P3->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P3->Move3.Move->Name,PlayerParty.P3->Move3.PP,PlayerParty.P3->Move3.Move->PP * PlayerParty.P3->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P3->Move4.Move->Name,PlayerParty.P3->Move4.PP,PlayerParty.P3->Move4.Move->PP * PlayerParty.P3->Move4.PPmult);
      } else if (strcmp(x,"P4") == 0) {
      printf("\e[1;37m\nP4:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P4->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P4->CurrentHp,PlayerParty.P4->Hp);
      printf("Attack: %d\n",PlayerParty.P4->Atk);
      printf("Defense: %d\n",PlayerParty.P4->Def);
      printf("Special Attack: %d\n",PlayerParty.P4->SpA);
      printf("Special Defense: %d\n",PlayerParty.P4->SpD);
      printf("Speed: %d\n",PlayerParty.P4->Spe);
      printf("Nature: %s\n",PlayerParty.P4->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P4->Move1.Move->Name,PlayerParty.P4->Move1.PP,PlayerParty.P4->Move1.Move->PP * PlayerParty.P4->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P4->Move2.Move->Name,PlayerParty.P4->Move2.PP,PlayerParty.P4->Move2.Move->PP * PlayerParty.P4->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P4->Move3.Move->Name,PlayerParty.P4->Move3.PP,PlayerParty.P4->Move3.Move->PP * PlayerParty.P4->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P4->Move4.Move->Name,PlayerParty.P4->Move4.PP,PlayerParty.P4->Move4.Move->PP * PlayerParty.P4->Move4.PPmult);
      } else if (strcmp(x,"P5") == 0) {
      printf("\e[1;37m\nP5:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P5->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P5->CurrentHp,PlayerParty.P5->Hp);
      printf("Attack: %d\n",PlayerParty.P5->Atk);
      printf("Defense: %d\n",PlayerParty.P5->Def);
      printf("Special Attack: %d\n",PlayerParty.P5->SpA);
      printf("Special Defense: %d\n",PlayerParty.P5->SpD);
      printf("Speed: %d\n",PlayerParty.P5->Spe);
      printf("Nature: %s\n",PlayerParty.P5->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P5->Move1.Move->Name,PlayerParty.P5->Move1.PP,PlayerParty.P5->Move1.Move->PP * PlayerParty.P5->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P5->Move2.Move->Name,PlayerParty.P5->Move2.PP,PlayerParty.P5->Move2.Move->PP * PlayerParty.P5->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P5->Move3.Move->Name,PlayerParty.P5->Move3.PP,PlayerParty.P5->Move3.Move->PP * PlayerParty.P5->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P5->Move4.Move->Name,PlayerParty.P5->Move4.PP,PlayerParty.P5->Move4.Move->PP * PlayerParty.P5->Move4.PPmult);
      } else if (strcmp(x,"P6") == 0) {
      printf("\e[1;37m\nP6:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P6->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P6->CurrentHp,PlayerParty.P6->Hp);
      printf("Attack: %d\n",PlayerParty.P6->Atk);
      printf("Defense: %d\n",PlayerParty.P6->Def);
      printf("Special Attack: %d\n",PlayerParty.P6->SpA);
      printf("Special Defense: %d\n",PlayerParty.P6->SpD);
      printf("Speed: %d\n",PlayerParty.P6->Spe);
      printf("Nature: %s\n",PlayerParty.P6->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",PlayerParty.P6->Move1.Move->Name,PlayerParty.P6->Move1.PP,PlayerParty.P6->Move1.Move->PP * PlayerParty.P6->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",PlayerParty.P6->Move2.Move->Name,PlayerParty.P6->Move2.PP,PlayerParty.P6->Move2.Move->PP * PlayerParty.P6->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",PlayerParty.P6->Move3.Move->Name,PlayerParty.P6->Move3.PP,PlayerParty.P6->Move3.Move->PP * PlayerParty.P6->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",PlayerParty.P6->Move4.Move->Name,PlayerParty.P6->Move4.PP,PlayerParty.P6->Move4.Move->PP * PlayerParty.P6->Move4.PPmult);
      }
      SwitchIn(1);
    } else {
            printf("That is not a valid switch. Please Try Again.\n");
            SwitchIn(1);
          }
  }
  return 0;
}