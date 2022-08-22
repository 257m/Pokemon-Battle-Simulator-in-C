void displayparty(bool eop) {
  if (!eop) {
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
      printf("Move1: %s %d/%.0f\n",MoveList[PlayerParty.P1->Move1.Move].Name,PlayerParty.P1->Move1.PP,MoveList[PlayerParty.P1->Move1.Move].PP * PlayerParty.P1->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[PlayerParty.P1->Move2.Move].Name,PlayerParty.P1->Move2.PP,MoveList[PlayerParty.P1->Move2.Move].PP * PlayerParty.P1->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[PlayerParty.P1->Move3.Move].Name,PlayerParty.P1->Move3.PP,MoveList[PlayerParty.P1->Move3.Move].PP * PlayerParty.P1->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[PlayerParty.P1->Move4.Move].Name,PlayerParty.P1->Move4.PP,MoveList[PlayerParty.P1->Move4.Move].PP * PlayerParty.P1->Move4.PPmult);
      printf("Item: %s (%s)",ItemList[PlayerParty.P1->Item].Name,Itemtext[PlayerParty.P1->ItemUsable]);
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
      printf("Move1: %s %d/%.0f\n",MoveList[PlayerParty.P2->Move1.Move].Name,PlayerParty.P2->Move1.PP,MoveList[PlayerParty.P2->Move1.Move].PP * PlayerParty.P2->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[PlayerParty.P2->Move2.Move].Name,PlayerParty.P2->Move2.PP,MoveList[PlayerParty.P2->Move2.Move].PP * PlayerParty.P2->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[PlayerParty.P2->Move3.Move].Name,PlayerParty.P2->Move3.PP,MoveList[PlayerParty.P2->Move3.Move].PP * PlayerParty.P2->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[PlayerParty.P2->Move4.Move].Name,PlayerParty.P2->Move4.PP,MoveList[PlayerParty.P2->Move4.Move].PP * PlayerParty.P2->Move4.PPmult);
      } else if (strcmp(x,"P3") == 0) {
      printf("\e[1;37m\nP3:\e[0m\n");
      printf("Pokemon: %s\n",PlayerParty.P3->Poke->Name);
      printf("Health: %d/%d\n",PlayerParty.P3->CurrentHp,PlayerParty.P3->Hp);
      printf("Attack: %d\n",PlayerParty.P3->Atk);
      printf("Defense: %d\n",PlayerParty.P3->Def);
      printf("Special Attack: %d\n",PlayerParty.P3->SpA);
      printf("Special Defense: %d\n",PlayerParty.P3->SpD);
      printf("Speed: %d\n",PlayerParty.P3->Spe);
      printf("Nature :%s\n",PlayerParty.P3->Nature->NatureName);
      printf("Move1: %s %d/%.0f\n",MoveList[PlayerParty.P3->Move1.Move].Name,PlayerParty.P3->Move1.PP,MoveList[PlayerParty.P3->Move1.Move].PP * PlayerParty.P3->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[PlayerParty.P3->Move2.Move].Name,PlayerParty.P3->Move2.PP,MoveList[PlayerParty.P3->Move2.Move].PP * PlayerParty.P3->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[PlayerParty.P3->Move3.Move].Name,PlayerParty.P3->Move3.PP,MoveList[PlayerParty.P3->Move3.Move].PP * PlayerParty.P3->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[PlayerParty.P3->Move4.Move].Name,PlayerParty.P3->Move4.PP,MoveList[PlayerParty.P3->Move4.Move].PP * PlayerParty.P3->Move4.PPmult);
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
      printf("Move1: %s %d/%.0f\n",MoveList[PlayerParty.P4->Move1.Move].Name,PlayerParty.P4->Move1.PP,MoveList[PlayerParty.P4->Move1.Move].PP * PlayerParty.P4->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[PlayerParty.P4->Move2.Move].Name,PlayerParty.P4->Move2.PP,MoveList[PlayerParty.P4->Move2.Move].PP * PlayerParty.P4->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[PlayerParty.P4->Move3.Move].Name,PlayerParty.P4->Move3.PP,MoveList[PlayerParty.P4->Move3.Move].PP * PlayerParty.P4->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[PlayerParty.P4->Move4.Move].Name,PlayerParty.P4->Move4.PP,MoveList[PlayerParty.P4->Move4.Move].PP * PlayerParty.P4->Move4.PPmult);
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
      printf("Move1: %s %d/%.0f\n",MoveList[PlayerParty.P5->Move1.Move].Name,PlayerParty.P5->Move1.PP,MoveList[PlayerParty.P5->Move1.Move].PP * PlayerParty.P5->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[PlayerParty.P5->Move2.Move].Name,PlayerParty.P5->Move2.PP,MoveList[PlayerParty.P5->Move2.Move].PP * PlayerParty.P5->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[PlayerParty.P5->Move3.Move].Name,PlayerParty.P5->Move3.PP,MoveList[PlayerParty.P5->Move3.Move].PP * PlayerParty.P5->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[PlayerParty.P5->Move4.Move].Name,PlayerParty.P5->Move4.PP,MoveList[PlayerParty.P5->Move4.Move].PP * PlayerParty.P5->Move4.PPmult);
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
      printf("Move1: %s %d/%.0f\n",MoveList[PlayerParty.P6->Move1.Move].Name,PlayerParty.P6->Move1.PP,MoveList[PlayerParty.P6->Move1.Move].PP * PlayerParty.P6->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[PlayerParty.P6->Move2.Move].Name,PlayerParty.P6->Move2.PP,MoveList[PlayerParty.P6->Move2.Move].PP * PlayerParty.P6->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[PlayerParty.P6->Move3.Move].Name,PlayerParty.P6->Move3.PP,MoveList[PlayerParty.P6->Move3.Move].PP * PlayerParty.P6->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[PlayerParty.P6->Move4.Move].Name,PlayerParty.P6->Move4.PP,MoveList[PlayerParty.P6->Move4.Move].PP * PlayerParty.P6->Move4.PPmult);
    }

  } else {
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
      printf("Move1: %s %d/%.0f\n",MoveList[EnemyParty.P1->Move1.Move].Name,EnemyParty.P1->Move1.PP,MoveList[EnemyParty.P1->Move1.Move].PP * EnemyParty.P1->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[EnemyParty.P1->Move2.Move].Name,EnemyParty.P1->Move2.PP,MoveList[EnemyParty.P1->Move2.Move].PP * EnemyParty.P1->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[EnemyParty.P1->Move3.Move].Name,EnemyParty.P1->Move3.PP,MoveList[EnemyParty.P1->Move3.Move].PP * EnemyParty.P1->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[EnemyParty.P1->Move4.Move].Name,EnemyParty.P1->Move4.PP,MoveList[EnemyParty.P1->Move4.Move].PP * EnemyParty.P1->Move4.PPmult);
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
      printf("Move1: %s %d/%.0f\n",MoveList[EnemyParty.P2->Move1.Move].Name,EnemyParty.P2->Move1.PP,MoveList[EnemyParty.P2->Move1.Move].PP * EnemyParty.P2->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[EnemyParty.P2->Move2.Move].Name,EnemyParty.P2->Move2.PP,MoveList[EnemyParty.P2->Move2.Move].PP * EnemyParty.P2->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[EnemyParty.P2->Move3.Move].Name,EnemyParty.P2->Move3.PP,MoveList[EnemyParty.P2->Move3.Move].PP * EnemyParty.P2->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[EnemyParty.P2->Move4.Move].Name,EnemyParty.P2->Move4.PP,MoveList[EnemyParty.P2->Move4.Move].PP * EnemyParty.P2->Move4.PPmult);
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
      printf("Move1: %s %d/%.0f\n",MoveList[EnemyParty.P3->Move1.Move].Name,EnemyParty.P3->Move1.PP,MoveList[EnemyParty.P3->Move1.Move].PP * EnemyParty.P3->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[EnemyParty.P3->Move2.Move].Name,EnemyParty.P3->Move2.PP,MoveList[EnemyParty.P3->Move2.Move].PP * EnemyParty.P3->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[EnemyParty.P3->Move3.Move].Name,EnemyParty.P3->Move3.PP,MoveList[EnemyParty.P3->Move3.Move].PP * EnemyParty.P3->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[EnemyParty.P3->Move4.Move].Name,EnemyParty.P3->Move4.PP,MoveList[EnemyParty.P3->Move4.Move].PP * EnemyParty.P3->Move4.PPmult);
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
      printf("Move1: %s %d/%.0f\n",MoveList[EnemyParty.P4->Move1.Move].Name,EnemyParty.P4->Move1.PP,MoveList[EnemyParty.P4->Move1.Move].PP * EnemyParty.P4->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[EnemyParty.P4->Move2.Move].Name,EnemyParty.P4->Move2.PP,MoveList[EnemyParty.P4->Move2.Move].PP * EnemyParty.P4->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[EnemyParty.P4->Move3.Move].Name,EnemyParty.P4->Move3.PP,MoveList[EnemyParty.P4->Move3.Move].PP * EnemyParty.P4->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[EnemyParty.P4->Move4.Move].Name,EnemyParty.P4->Move4.PP,MoveList[EnemyParty.P4->Move4.Move].PP * EnemyParty.P4->Move4.PPmult);
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
      printf("Move1: %s %d/%.0f\n",MoveList[EnemyParty.P5->Move1.Move].Name,EnemyParty.P5->Move1.PP,MoveList[EnemyParty.P5->Move1.Move].PP * EnemyParty.P5->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[EnemyParty.P5->Move2.Move].Name,EnemyParty.P5->Move2.PP,MoveList[EnemyParty.P5->Move2.Move].PP * EnemyParty.P5->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[EnemyParty.P5->Move3.Move].Name,EnemyParty.P5->Move3.PP,MoveList[EnemyParty.P5->Move3.Move].PP * EnemyParty.P5->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[EnemyParty.P5->Move4.Move].Name,EnemyParty.P5->Move4.PP,MoveList[EnemyParty.P5->Move4.Move].PP * EnemyParty.P5->Move4.PPmult);
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
      printf("Move1: %s %d/%.0f\n",MoveList[EnemyParty.P6->Move1.Move].Name,EnemyParty.P6->Move1.PP,MoveList[EnemyParty.P6->Move1.Move].PP * EnemyParty.P6->Move1.PPmult);
      printf("Move2: %s %d/%.0f\n",MoveList[EnemyParty.P6->Move2.Move].Name,EnemyParty.P6->Move2.PP,MoveList[EnemyParty.P6->Move2.Move].PP * EnemyParty.P6->Move2.PPmult);
      printf("Move3: %s %d/%.0f\n",MoveList[EnemyParty.P6->Move3.Move].Name,EnemyParty.P6->Move3.PP,MoveList[EnemyParty.P6->Move3.Move].PP * EnemyParty.P6->Move3.PPmult);
      printf("Move4: %s %d/%.0f\n",MoveList[EnemyParty.P6->Move4.Move].Name,EnemyParty.P6->Move4.PP,MoveList[EnemyParty.P6->Move4.Move].PP * EnemyParty.P6->Move4.PPmult);
    }
        }
}