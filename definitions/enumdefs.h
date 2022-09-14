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
NOPOKE,
BULBASAUR,
CHARMANDER,
SQUIRTLE,
PIDGEY,
CORDAGAR,
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
STATE_FLINCH,
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
Leer,
Flash,
Kinesis,
Leaf_Tornado,
Mirror_Shot,
Mud_Bomb,
Mud_Slap,
Muddy_Water,
Night_Daze,
Octazooka,
Sand_Attack,
Smoke_Screen,
Aurora_Beam,
Baby_Doll_Eyes,
Breaking_Swipe,
Protect,
Murcury_Shot,
Superpower,
Dragon_Tail,
Roar,
Icicle_Crash,
Confuse_Ray,
Feather_Dance,
};

enum {
MF_Nothing,
MF_Struggle,
MF_STATMOD,
MF_OTHERSTATUS,
MF_PROTECT,
MF_ROAR,
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
Swarm,
Clear_Body,
Big_Pecks,
Hyper_Cutter
};

enum {
AF_NOABILITY,
AF_TYPE_BASED_BOOST,
AF_IMMUNE_TO_STAT_DECREASE,
AF_TYPECHANGE,
};

enum {
EFFECT_PROTECT,
EFFECT_LEECH_SEED,
EFFECT_PERISH_SONG,
EFFECT_CONFUSION,
};

#define FLAG_MAKES_CONTACT 1
#define FLAG_PROTECT_AFFECTED 2
#define FLAG_TYPE_IMMUNITY_AFFECTED 4
#define FLAG_POWDER_MOVE 8
#define FLAG_HIGH_CRIT 16

enum {
nFLAG_MAKES_CONTACT,
nFLAG_PROTECT_AFFECTED,
nFLAG_TYPE_IMMUNITY_AFFECTED,
nFLAG_POWDER_MOVE,
nFLAG_HIGH_CRIT,
};

enum {
STAT1_0_STAT2_0,
STAT1_0_STAT2_1,
STAT1_0_STAT2_2,
STAT1_0_STAT2_3,
STAT1_0_STAT2_4,
STAT1_0_STAT2_5,
STAT1_0_STAT2_6,
STAT1_0_STAT2_7,
STAT1_0_STAT2_n0,
STAT1_0_STAT2_n1,
STAT1_0_STAT2_n2,
STAT1_0_STAT2_n3,
STAT1_0_STAT2_n4,
STAT1_0_STAT2_n5,
STAT1_0_STAT2_n6,
STAT1_0_STAT2_n7,
STAT1_1_STAT2_0,
STAT1_1_STAT2_1,
STAT1_1_STAT2_2,
STAT1_1_STAT2_3,
STAT1_1_STAT2_4,
STAT1_1_STAT2_5,
STAT1_1_STAT2_6,
STAT1_1_STAT2_7,
STAT1_1_STAT2_n0,
STAT1_1_STAT2_n1,
STAT1_1_STAT2_n2,
STAT1_1_STAT2_n3,
STAT1_1_STAT2_n4,
STAT1_1_STAT2_n5,
STAT1_1_STAT2_n6,
STAT1_1_STAT2_n7,
STAT1_2_STAT2_0,
STAT1_2_STAT2_1,
STAT1_2_STAT2_2,
STAT1_2_STAT2_3,
STAT1_2_STAT2_4,
STAT1_2_STAT2_5,
STAT1_2_STAT2_6,
STAT1_2_STAT2_7,
STAT1_2_STAT2_n0,
STAT1_2_STAT2_n1,
STAT1_2_STAT2_n2,
STAT1_2_STAT2_n3,
STAT1_2_STAT2_n4,
STAT1_2_STAT2_n5,
STAT1_2_STAT2_n6,
STAT1_2_STAT2_n7,
STAT1_3_STAT2_0,
STAT1_3_STAT2_1,
STAT1_3_STAT2_2,
STAT1_3_STAT2_3,
STAT1_3_STAT2_4,
STAT1_3_STAT2_5,
STAT1_3_STAT2_6,
STAT1_3_STAT2_7,
STAT1_3_STAT2_n0,
STAT1_3_STAT2_n1,
STAT1_3_STAT2_n2,
STAT1_3_STAT2_n3,
STAT1_3_STAT2_n4,
STAT1_3_STAT2_n5,
STAT1_3_STAT2_n6,
STAT1_3_STAT2_n7,
STAT1_4_STAT2_0,
STAT1_4_STAT2_1,
STAT1_4_STAT2_2,
STAT1_4_STAT2_3,
STAT1_4_STAT2_4,
STAT1_4_STAT2_5,
STAT1_4_STAT2_6,
STAT1_4_STAT2_7,
STAT1_4_STAT2_n0,
STAT1_4_STAT2_n1,
STAT1_4_STAT2_n2,
STAT1_4_STAT2_n3,
STAT1_4_STAT2_n4,
STAT1_4_STAT2_n5,
STAT1_4_STAT2_n6,
STAT1_4_STAT2_n7,
STAT1_5_STAT2_0,
STAT1_5_STAT2_1,
STAT1_5_STAT2_2,
STAT1_5_STAT2_3,
STAT1_5_STAT2_4,
STAT1_5_STAT2_5,
STAT1_5_STAT2_6,
STAT1_5_STAT2_7,
STAT1_5_STAT2_n0,
STAT1_5_STAT2_n1,
STAT1_5_STAT2_n2,
STAT1_5_STAT2_n3,
STAT1_5_STAT2_n4,
STAT1_5_STAT2_n5,
STAT1_5_STAT2_n6,
STAT1_5_STAT2_n7,
STAT1_6_STAT2_0,
STAT1_6_STAT2_1,
STAT1_6_STAT2_2,
STAT1_6_STAT2_3,
STAT1_6_STAT2_4,
STAT1_6_STAT2_5,
STAT1_6_STAT2_6,
STAT1_6_STAT2_7,
STAT1_6_STAT2_n0,
STAT1_6_STAT2_n1,
STAT1_6_STAT2_n2,
STAT1_6_STAT2_n3,
STAT1_6_STAT2_n4,
STAT1_6_STAT2_n5,
STAT1_6_STAT2_n6,
STAT1_6_STAT2_n7,
STAT1_7_STAT2_0,
STAT1_7_STAT2_1,
STAT1_7_STAT2_2,
STAT1_7_STAT2_3,
STAT1_7_STAT2_4,
STAT1_7_STAT2_5,
STAT1_7_STAT2_6,
STAT1_7_STAT2_7,
STAT1_7_STAT2_n0,
STAT1_7_STAT2_n1,
STAT1_7_STAT2_n2,
STAT1_7_STAT2_n3,
STAT1_7_STAT2_n4,
STAT1_7_STAT2_n5,
STAT1_7_STAT2_n6,
STAT1_7_STAT2_n7,
STAT1_n0_STAT2_0,
STAT1_n0_STAT2_1,
STAT1_n0_STAT2_2,
STAT1_n0_STAT2_3,
STAT1_n0_STAT2_4,
STAT1_n0_STAT2_5,
STAT1_n0_STAT2_6,
STAT1_n0_STAT2_7,
STAT1_n0_STAT2_n0,
STAT1_n0_STAT2_n1,
STAT1_n0_STAT2_n2,
STAT1_n0_STAT2_n3,
STAT1_n0_STAT2_n4,
STAT1_n0_STAT2_n5,
STAT1_n0_STAT2_n6,
STAT1_n0_STAT2_n7,
STAT1_n1_STAT2_0,
STAT1_n1_STAT2_1,
STAT1_n1_STAT2_2,
STAT1_n1_STAT2_3,
STAT1_n1_STAT2_4,
STAT1_n1_STAT2_5,
STAT1_n1_STAT2_6,
STAT1_n1_STAT2_7,
STAT1_n1_STAT2_n0,
STAT1_n1_STAT2_n1,
STAT1_n1_STAT2_n2,
STAT1_n1_STAT2_n3,
STAT1_n1_STAT2_n4,
STAT1_n1_STAT2_n5,
STAT1_n1_STAT2_n6,
STAT1_n1_STAT2_n7,
STAT1_n2_STAT2_0,
STAT1_n2_STAT2_1,
STAT1_n2_STAT2_2,
STAT1_n2_STAT2_3,
STAT1_n2_STAT2_4,
STAT1_n2_STAT2_5,
STAT1_n2_STAT2_6,
STAT1_n2_STAT2_7,
STAT1_n2_STAT2_n0,
STAT1_n2_STAT2_n1,
STAT1_n2_STAT2_n2,
STAT1_n2_STAT2_n3,
STAT1_n2_STAT2_n4,
STAT1_n2_STAT2_n5,
STAT1_n2_STAT2_n6,
STAT1_n2_STAT2_n7,
STAT1_n3_STAT2_0,
STAT1_n3_STAT2_1,
STAT1_n3_STAT2_2,
STAT1_n3_STAT2_3,
STAT1_n3_STAT2_4,
STAT1_n3_STAT2_5,
STAT1_n3_STAT2_6,
STAT1_n3_STAT2_7,
STAT1_n3_STAT2_n0,
STAT1_n3_STAT2_n1,
STAT1_n3_STAT2_n2,
STAT1_n3_STAT2_n3,
STAT1_n3_STAT2_n4,
STAT1_n3_STAT2_n5,
STAT1_n3_STAT2_n6,
STAT1_n3_STAT2_n7,
STAT1_n4_STAT2_0,
STAT1_n4_STAT2_1,
STAT1_n4_STAT2_2,
STAT1_n4_STAT2_3,
STAT1_n4_STAT2_4,
STAT1_n4_STAT2_5,
STAT1_n4_STAT2_6,
STAT1_n4_STAT2_7,
STAT1_n4_STAT2_n0,
STAT1_n4_STAT2_n1,
STAT1_n4_STAT2_n2,
STAT1_n4_STAT2_n3,
STAT1_n4_STAT2_n4,
STAT1_n4_STAT2_n5,
STAT1_n4_STAT2_n6,
STAT1_n4_STAT2_n7,
STAT1_n5_STAT2_0,
STAT1_n5_STAT2_1,
STAT1_n5_STAT2_2,
STAT1_n5_STAT2_3,
STAT1_n5_STAT2_4,
STAT1_n5_STAT2_5,
STAT1_n5_STAT2_6,
STAT1_n5_STAT2_7,
STAT1_n5_STAT2_n0,
STAT1_n5_STAT2_n1,
STAT1_n5_STAT2_n2,
STAT1_n5_STAT2_n3,
STAT1_n5_STAT2_n4,
STAT1_n5_STAT2_n5,
STAT1_n5_STAT2_n6,
STAT1_n5_STAT2_n7,
STAT1_n6_STAT2_0,
STAT1_n6_STAT2_1,
STAT1_n6_STAT2_2,
STAT1_n6_STAT2_3,
STAT1_n6_STAT2_4,
STAT1_n6_STAT2_5,
STAT1_n6_STAT2_6,
STAT1_n6_STAT2_7,
STAT1_n6_STAT2_n0,
STAT1_n6_STAT2_n1,
STAT1_n6_STAT2_n2,
STAT1_n6_STAT2_n3,
STAT1_n6_STAT2_n4,
STAT1_n6_STAT2_n5,
STAT1_n6_STAT2_n6,
STAT1_n6_STAT2_n7,
STAT1_n7_STAT2_0,
STAT1_n7_STAT2_1,
STAT1_n7_STAT2_2,
STAT1_n7_STAT2_3,
STAT1_n7_STAT2_4,
STAT1_n7_STAT2_5,
STAT1_n7_STAT2_6,
STAT1_n7_STAT2_7,
STAT1_n7_STAT2_n0,
STAT1_n7_STAT2_n1,
STAT1_n7_STAT2_n2,
STAT1_n7_STAT2_n3,
STAT1_n7_STAT2_n4,
STAT1_n7_STAT2_n5,
STAT1_n7_STAT2_n6,
STAT1_n7_STAT2_n7,
};