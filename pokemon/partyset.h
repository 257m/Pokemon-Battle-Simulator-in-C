struct MyPokemon* pokemon_create() {
  struct MyPokemon* pokemon = malloc(sizeof(struct MyPokemon));
  return pokemon;
}

struct MyPokemon* pokemon_clear(struct MyPokemon* pokemon) {
 for (int i = 0;i < 4;i++) {
 pokemon->Moves[i].Move = 0;
 pokemon->Moves[i].PP = 0;
 pokemon->Moves[i].PPmult = 0;
   }
 for (int i = 0;i < 8;i++) {
   pokemon->StatBoosts[i] = 0;
 }
 pokemon->CurrentHp = 0;
 pokemon->Hp = 0;
 pokemon->Atk = 0;
 pokemon->Def = 0;
 pokemon->SpA = 0;
 pokemon->SpD = 0;
 pokemon->Spe = 0;
 pokemon->Item = 0;
 pokemon->Ability = 0;
 pokemon->EVHp = 0;
 pokemon->EVAtk = 0;
 pokemon->EVDef = 0;
 pokemon->EVSpA = 0;
 pokemon->EVSpD = 0;
 pokemon->EVSpe = 0;
 pokemon->Counter = 0;
 pokemon->ItemUsable = 0;
 pokemon->Level = 0;
 pokemon->Non_Volatile_Status = 0;
 pokemon->Nature = 0;
 pokemon->IVHp = 0;
 pokemon->IVAtk = 0;
 pokemon->IVDef = 0;
 pokemon->IVSpA = 0;
 pokemon->IVSpD = 0;
 pokemon->IVSpe = 0;
 pokemon->Poke = 0;
 return pokemon;
}

struct MyPokemon* pokemon_randomize(struct MyPokemon* pokemon) {
 for (int i = 0;i < 4;i++) {
 pokemon->Moves[i].Move = rand() % sizeof(MoveList)/sizeof(MoveList[0]);
 pokemon->Moves[i].PP = 0;
 pokemon->Moves[i].PPmult = rand() % 4;
   }
 pokemon->Item = rand() % sizeof(ItemList)/sizeof(ItemList[0]);
 pokemon->Ability = rand() % sizeof(AbilityList)/sizeof(AbilityList[0]);
 pokemon->Level = (rand() % 100) + 1;
 pokemon->Nature = rand() % 25;
 pokemon->IVHp = rand() % 32;
 pokemon->IVAtk = rand() % 32;
 pokemon->IVDef = rand() % 32;
 pokemon->IVSpA = rand() % 32;
 pokemon->IVSpD = rand() % 32;
 pokemon->IVSpe = rand() % 32;
 pokemon->Poke = rand() % sizeof(POKEMONDEX)/sizeof(POKEMONDEX[0]);
 return pokemon;
}

struct MyPokemon Pokemon1 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon Pokemon2 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon Pokemon3 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon Pokemon4 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon Pokemon5 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon Pokemon6 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon EnemyPokemon1 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon EnemyPokemon2 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon EnemyPokemon3 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon EnemyPokemon4 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon EnemyPokemon5 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct MyPokemon EnemyPokemon6 = {
.Poke = ILLSONAR,
.Level = 100,
.CurrentHp = 20,
.Item = Focus_Sash,
.Ability = Levitate,
.Nature = Jolly,
.IVHp = 0,
.IVAtk = 0,
.IVDef = 31,
.IVSpA = 31,
.IVSpD = 31,
.IVSpe = 31,
.Moves = {{Illusion_Field,0,3},{Blinding_Flash,0,3},{Luminous_Glow,0,3},{Blindstrike,0,3}},
.EVHp = 0,
.EVAtk = 0,
.EVDef = 0,
.EVSpA = 252,
.EVSpD = 252,
.EVSpe = 4
};

struct Party Parties [2] = {
{
  &Pokemon1,
  &Pokemon2,
  &Pokemon3,
  &Pokemon4,
  &Pokemon5,
  &Pokemon6
},
{
  &EnemyPokemon1,
  &EnemyPokemon2,
  &EnemyPokemon3,
  &EnemyPokemon4,
  &EnemyPokemon5,
  &EnemyPokemon6,
}
};