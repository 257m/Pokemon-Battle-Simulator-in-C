void displaymember(unsigned int PartyMember,bool eop) {
  if (!eop) {
    printf("\e[1;37m\nP%d:\e[0m\n",PartyMember+1);
    printf("Pokemon: %s\n",PlayerParty.Member[PartyMember]->Poke->Name);
    printf("Health: %d/%d\n",PlayerParty.Member[PartyMember]->CurrentHp,PlayerParty.Member[PartyMember]->Hp);
    printf("Attack: %d\n",PlayerParty.Member[PartyMember]->Atk);
    printf("Defense: %d\n",PlayerParty.Member[PartyMember]->Def);
    printf("Special Attack: %d\n",PlayerParty.Member[PartyMember]->SpA);
    printf("Special Defense: %d\n",PlayerParty.Member[PartyMember]->SpD);
    printf("Speed: %d\n",PlayerParty.Member[PartyMember]->Spe);
    printf("Nature: %s\n",PlayerParty.Member[PartyMember]->Nature->NatureName);
    printf("Move1: %s %d/%.0f\n",MoveList[PlayerParty.Member[PartyMember]->Move1.Move].Name,PlayerParty.Member[PartyMember]->Move1.PP,MoveList[PlayerParty.Member[PartyMember]->Move1.Move].PP * PlayerParty.Member[PartyMember]->Move1.PPmult);
    printf("Move2: %s %d/%.0f\n",MoveList[PlayerParty.Member[PartyMember]->Move2.Move].Name,PlayerParty.Member[PartyMember]->Move2.PP,MoveList[PlayerParty.Member[PartyMember]->Move2.Move].PP * PlayerParty.Member[PartyMember]->Move2.PPmult);
    printf("Move3: %s %d/%.0f\n",MoveList[PlayerParty.Member[PartyMember]->Move3.Move].Name,PlayerParty.Member[PartyMember]->Move3.PP,MoveList[PlayerParty.Member[PartyMember]->Move3.Move].PP * PlayerParty.Member[PartyMember]->Move3.PPmult);
    printf("Move4: %s %d/%.0f\n",MoveList[PlayerParty.Member[PartyMember]->Move4.Move].Name,PlayerParty.Member[PartyMember]->Move4.PP,MoveList[PlayerParty.Member[PartyMember]->Move4.Move].PP * PlayerParty.Member[PartyMember]->Move4.PPmult);
    printf("Item: %s (%s)",ItemList[PlayerParty.Member[PartyMember]->Item].Name,Itemtext[PlayerParty.Member[PartyMember]->ItemUsable]);
  } else {
    printf("\e[1;37m\nP%d:\e[0m\n",PartyMember+1);
    printf("Pokemon: %s\n",EnemyParty.Member[PartyMember]->Poke->Name);
    printf("Health: %d/%d\n",EnemyParty.Member[PartyMember]->CurrentHp,EnemyParty.Member[PartyMember]->Hp);
    printf("Attack: %d\n",EnemyParty.Member[PartyMember]->Atk);
    printf("Defense: %d\n",EnemyParty.Member[PartyMember]->Def);
    printf("Special Attack: %d\n",EnemyParty.Member[PartyMember]->SpA);
    printf("Special Defense: %d\n",EnemyParty.Member[PartyMember]->SpD);
    printf("Speed: %d\n",EnemyParty.Member[PartyMember]->Spe);
    printf("Nature: %s\n",EnemyParty.Member[PartyMember]->Nature->NatureName);
    printf("Move1: %s %d/%.0f\n",MoveList[EnemyParty.Member[PartyMember]->Move1.Move].Name,EnemyParty.Member[PartyMember]->Move1.PP,MoveList[EnemyParty.Member[PartyMember]->Move1.Move].PP * EnemyParty.Member[PartyMember]->Move1.PPmult);
    printf("Move2: %s %d/%.0f\n",MoveList[EnemyParty.Member[PartyMember]->Move2.Move].Name,EnemyParty.Member[PartyMember]->Move2.PP,MoveList[EnemyParty.Member[PartyMember]->Move2.Move].PP * EnemyParty.Member[PartyMember]->Move2.PPmult);
    printf("Move3: %s %d/%.0f\n",MoveList[EnemyParty.Member[PartyMember]->Move3.Move].Name,EnemyParty.Member[PartyMember]->Move3.PP,MoveList[EnemyParty.Member[PartyMember]->Move3.Move].PP * EnemyParty.Member[PartyMember]->Move3.PPmult);
    printf("Move4: %s %d/%.0f\n",MoveList[EnemyParty.Member[PartyMember]->Move4.Move].Name,EnemyParty.Member[PartyMember]->Move4.PP,MoveList[EnemyParty.Member[PartyMember]->Move4.Move].PP * EnemyParty.Member[PartyMember]->Move4.PPmult);
    printf("Item: %s (%s)",ItemList[EnemyParty.Member[PartyMember]->Item].Name,Itemtext[EnemyParty.Member[PartyMember]->ItemUsable]);
  }
}

void displayparty(bool eop) {
  if (!eop) {
    printf("\n\e[1;37mP1:\e[0m %s %d/%d\n",PlayerParty.Member[0]->Poke->Name,PlayerParty.Member[0]->CurrentHp,PlayerParty.Member[0]->Hp);
      printf("\e[1;37mP2:\e[0m %s %d/%d\n",PlayerParty.Member[1]->Poke->Name,PlayerParty.Member[1]->CurrentHp,PlayerParty.Member[1]->Hp);
      printf("\e[1;37mP3:\e[0m %s %d/%d\n",PlayerParty.Member[2]->Poke->Name,PlayerParty.Member[2]->CurrentHp,PlayerParty.Member[2]->Hp);
      printf("\e[1;37mP4:\e[0m %s %d/%d\n",PlayerParty.Member[3]->Poke->Name,PlayerParty.Member[3]->CurrentHp,PlayerParty.Member[3]->Hp);
      printf("\e[1;37mP5:\e[0m %s %d/%d\n",PlayerParty.Member[4]->Poke->Name,PlayerParty.Member[4]->CurrentHp,PlayerParty.Member[4]->Hp);
      printf("\e[1;37mP6:\e[0m %s %d/%d\n",PlayerParty.Member[5]->Poke->Name,PlayerParty.Member[5]->CurrentHp,PlayerParty.Member[5]->Hp);
      printf("\nPartyMember: ");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      displaymember(0,0);
      } else if (strcmp(x,"P2") == 0) {
      displaymember(1,0);
      } else if (strcmp(x,"P3") == 0) {
      displaymember(2,0);
      } else if (strcmp(x,"P4") == 0) {
      displaymember(3,0);
      } else if (strcmp(x,"P5") == 0) {
      displaymember(4,0);
      } else if (strcmp(x,"P6") == 0) {
      displaymember(5,0);
    }

  } else {
   printf("\n\e[1;37mP1:\e[0m %s %d/%d\n",EnemyParty.Member[0]->Poke->Name,EnemyParty.Member[0]->CurrentHp,EnemyParty.Member[0]->Hp);
      printf("\e[1;37mP2:\e[0m %s %d/%d\n",EnemyParty.Member[1]->Poke->Name,EnemyParty.Member[1]->CurrentHp,EnemyParty.Member[1]->Hp);
      printf("\e[1;37mP3:\e[0m %s %d/%d\n",EnemyParty.Member[2]->Poke->Name,EnemyParty.Member[2]->CurrentHp,EnemyParty.Member[2]->Hp);
      printf("\e[1;37mP4:\e[0m %s %d/%d\n",EnemyParty.Member[3]->Poke->Name,EnemyParty.Member[3]->CurrentHp,EnemyParty.Member[3]->Hp);
      printf("\e[1;37mP5:\e[0m %s %d/%d\n",EnemyParty.Member[4]->Poke->Name,EnemyParty.Member[4]->CurrentHp,EnemyParty.Member[4]->Hp);
      printf("\e[1;37mP6:\e[0m %s %d/%d\n",EnemyParty.Member[5]->Poke->Name,EnemyParty.Member[5]->CurrentHp,EnemyParty.Member[5]->Hp);
      printf("\nPartyMember: ");
      fgets(x,31,stdin);
      x[strcspn(x, "\n")] = 0;
      if (strcmp(x,"P1") == 0) {
      displaymember(0,1);
      } else if (strcmp(x,"P2") == 0) {
      displaymember(1,1);
      } else if (strcmp(x,"P3") == 0) {
      displaymember(2,1);
      } else if (strcmp(x,"P4") == 0) {
      displaymember(3,1);
      } else if (strcmp(x,"P5") == 0) {
      displaymember(4,1);
      } else if (strcmp(x,"P6") == 0) {
      displaymember(5,1);
    }
        }
}