enum {
NOTYPE,
NORMAL,
FIRE,
WATER,
ELECTRIC,
GRASS,
ICE,
FIGHTING,
POISON,
GROUND,
FLYING,
PSYCHIC,
BUG,
ROCK,
GHOST,
DRAGON,
DARK,
STEEL,
FAIRY
};

enum {
STATUS_NULL,
STATUS_BURN,
STATUS_POISON,
STATUS_TOXIC,
STATUS_PARALYSIS,
STATUS_SLEEP,
STATUS_FREEZE,
STATE_CONFUSION,
};

enum {
Hardy,
Lonely,
Brave,
Adamant,
Naughty,
Bold,
Docile,
Relaxed,
Impish,
Lax,
Timid,
Hasty,
Serious,
Jolly,
Naive,
Modest,
Mild,
Quiet,
Bashful,
Rash,
Calm,
Gentle,
Sassy,
Careful,
};

enum {
Nothing,
Struggle,
Scratch,
Water_Gun,
Vine_Whip,
Ember,
Quick_Attack,
Super_Attack,
Stone_Edge,
Gust,
Thunder_Shock,
Thunder_Wave,
Swords_Dance,
Dragon_Dance,
Will_O_Wisp,
Spore,
Toxic,
Freeze,
Bulk_Up,
Charm,
Leer
};

enum {
MF_Nothing,
MF_Struggle,
MF_SELFBOOST,
MF_OTHERBOOST,
MF_OTHERSTATUS
};

enum {
NoItem,
Leftovers,
Focus_Sash
};

enum {
NoAbility,
Overgrow,
Blaze,
Torrent,
Big_Pecks
};

enum {
EFFECT_UTL_ATTACK,
EFFECT_UTL_DEFENSE,
EFFECT_UTL_SP_ATK,
EFFECT_UTL_SP_DEF,
EFFECT_UTL_SPEED,
EFFECT_UTL_ACCURACY,
EFFECT_UTL_EVASION,
EFFECT_UTL_CRIT_CHANCE,
EFFECT_LEECH_SEED,
EFFECT_PERISH_SONG,
EFFECT_CONFUSION,
};

enum {
COUNTER_PERISH_SONG
};

#define FLAG_MAKES_CONTACT 1
#define FLAG_PROTECT_AFFECTED 2
#define FLAG_TYPE_IMMUNITY_AFFECTED 4