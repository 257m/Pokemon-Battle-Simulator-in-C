void NoItemf(char et,bool eop) {
}

void Leftoversf(char et,bool eop) {
  if (!eop) {
    if (Parties[0].Member[0]->ItemUsable) {  
    if (et == 5) {
        if (Parties[0].Member[0]->CurrentHp < Parties[0].Member[0]->Hp) {
        Parties[0].Member[0]->CurrentHp += Parties[0].Member[0]->Hp/16;
        printf("%s restored a little HP using its Leftovers\n",Parties[0].Member[0]->Poke->Name);
        printf("%s is at %d/%d hp\n\n",Parties[0].Member[0]->Poke->Name,Parties[0].Member[0]->CurrentHp,Parties[0].Member[0]->Hp);
          }
      }
      }
  } else {
      if (Parties[1].Member[0]->ItemUsable) {
      if (et == 5) {
      if (Parties[1].Member[0]->CurrentHp < Parties[1].Member[0]->Hp) {
      Parties[1].Member[0]->CurrentHp += Parties[1].Member[0]->Hp/16;
      printf("The opposing %s restored a little HP using its Leftovers\n",Parties[1].Member[0]->Poke->Name);
      printf("The opposing %s is at %d/%d hp\n\n",Parties[1].Member[0]->Poke->Name,Parties[1].Member[0]->CurrentHp,Parties[1].Member[0]->Hp);
      }
        }
        }
  }
}

void Focus_Sashf(char et,bool eop) {
  if (!eop) {
    if (Parties[0].Member[0]->ItemUsable) {
    if (et == -1) {
    if (Parties[0].Member[0]->CurrentHp == Parties[0].Member[0]->Hp && Damages[1] >= Parties[0].Member[0]->Hp) {
      Damages[1] = Parties[0].Member[0]->Hp-1;
      printf("%s hung on with its Focus Sash!\n",Parties[0].Member[0]->Poke->Name);
      Parties[0].Member[0]->ItemUsable = 0;
      }
    }
      }
  } else {
    if (Parties[1].Member[0]->ItemUsable) {
    if (et == -1) {
    if (Parties[1].Member[0]->CurrentHp == Parties[1].Member[0]->Hp && Damages[0] >= Parties[1].Member[0]->Hp) {
        Damages[0] = Parties[1].Member[0]->Hp-1;
        printf("The opposing %s hung on with its Focus Sash!\n",Parties[1].Member[0]->Poke->Name);
        Parties[1].Member[0]->ItemUsable = 0;
      }
      }
    }
  }
}