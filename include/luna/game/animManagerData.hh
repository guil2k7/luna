// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

namespace luna::game {

enum AssocGroupID {
    ANIM_STD_PED,
    ANIM_STD_DOOR,
    ANIM_BIKE_PED,
    ANIM_BIKEV_PED,
    ANIM_BIKEH_PED,
    ANIM_BIKED_PED,
    ANIM_BIKEW_PED,
    ANIM_BMX_PED,
    ANIM_MTB_PED,
    ANIM_CHOPPA_PED,
    ANIM_QUAD_PED,
    ANIM_ATTACK_PYTHON,
    ANIM_ATTACK_PYTHON_POOR,
    ANIM_ATTACK_COLT45,
    ANIM_ATTACK_COLT45_COP,
    ANIM_ATTACK_COLT45_PRO,
    ANIM_ATTACK_SAWNOFF,
    ANIM_ATTACK_SAWNOFF_PRO,
    ANIM_ATTACK_SILENCED,
    ANIM_ATTACK_SHOTGUN,
    ANIM_ATTACK_SHOTGUN_POOR,
    ANIM_ATTACK_BUDDYSGUN,
    ANIM_ATTACK_BUDDY_POOR,
    ANIM_ATTACK_UZI,
    ANIM_ATTACK_UZI_POOR,
    ANIM_ATTACK_RIFLE,
    ANIM_ATTACK_RIFLE_POOR,
    ANIM_ATTACK_SNIPER,
    ANIM_ATTACK_GRENADE,
    ANIM_ATTACK_FLAME,
    ANIM_ATTACK_ROCKET,
    ANIM_ATTACK_SPRAYCAN,
    ANIM_ATTACK_GOGGLES,
    ANIM_MELEE_UNARMED_1,
    ANIM_MELEE_UNARMED_2,
    ANIM_MELEE_UNARMED_3,
    ANIM_MELEE_UNARMED_4,
    ANIM_MELEE_BBBAT_1,
    ANIM_MELEE_GOLFCLUB_1,
    ANIM_MELEE_KNIFE_1,
    ANIM_MELEE_SWORD_1,
    ANIM_MELEE_DILDO,
    ANIM_MELEE_FLOWERS,
    ANIM_MELEE_CHAINSAW,
    ANIM_MELEE_KICK_STD,
    ANIM_MELEE_PISTOLWHIP,
    ANIM_MEDIC_PED,
    ANIM_BEACH_PED,
    ANIM_SUNBATHE_PED,
    ANIM_PLAYER_IDLES_PED,
    ANIM_RIOT_PED,
    ANIM_STRIPPER_PED,
    ANIM_GANG_PED,
    ANIM_ATTR_PED,
    ANIM_PLAYER_PED,
    ANIM_PLAYER_FAT_PED,
    ANIM_PLAYER_MUSCLE_PED,
    ANIM_PLAYER_ROCKET_PED,
    ANIM_PLAYER_FAT_ROCKET_PED,
    ANIM_PLAYER_MUSCLE_ROCKET_PED,
    ANIM_PLAYER_2ARMED_PED,
    ANIM_PLAYER_FAT_2ARMED_PED,
    ANIM_PLAYER_MUSCLE_2ARMED_PED,
    ANIM_PLAYER_BBBAT_PED,
    ANIM_PLAYER_FAT_BBBAT_PED,
    ANIM_PLAYER_MUSCLE_BBBAT_PED,
    ANIM_PLAYER_CHAINSAW_PED,
    ANIM_PLAYER_FAT_CHAINSAW_PED,
    ANIM_PLAYER_MUSCLE_CHAINSAW_PED,
    ANIM_PLAYER_SNEAK_PED,
    ANIM_PLAYER_JETPACK_PED,
    ANIM_SWIM_PED,
    ANIM_GANG_DRIVEBY,
    ANIM_BIKE_DRIVEBY,
    ANIM_COP_DRIVEBY,
    ANIM_QUAD_DRIVEBY,
    ANIM_PLAYER_FAT_TIRED_PED,
    ANIM_HANDSIGNAL_PED,
    ANIM_HANDSIGNAL_PEDL,
    ANIM_HANDSIGNAL_LHAND,
    ANIM_HANDSIGNAL_RHAND,
    ANIM_CARRY_BOX,
    ANIM_CARRY_BOX_05,
    ANIM_CARRY_BOX_105,
    ANIM_INT_HOUSE_PED,
    ANIM_INT_OFFICE_PED,
    ANIM_INT_SHOP_PED,
    ANIM_STEALTH_KNIFE,
    ANIM_VEH_STD,
    ANIM_VEH_LOW,
    ANIM_VEH_TRK,
    ANIM_VEH_BIKESTD,
    ANIM_VEH_BIKESPORT,
    ANIM_VEH_BIKEVESPA,
    ANIM_VEH_BIKEHARLEY,
    ANIM_VEH_BIKEDIRT,
    ANIM_VEH_BIKEWAYF,
    ANIM_VEH_BIKEBMX,
    ANIM_VEH_BIKEMTB,
    ANIM_VEH_BIKECHOPPA,
    ANIM_VEH_BIKEQUAD,
    ANIM_VEH_VAN,
    ANIM_VEH_RUSTLER,
    ANIM_VEH_COACH,
    ANIM_VEH_BUS,
    ANIM_VEH_DOZER,
    ANIM_VEH_KART,
    ANIM_VEH_CONVERTIBLE,
    ANIM_VEH_MTRUCK,
    ANIM_VEH_TRAINCARRIAGE,
    ANIM_VEH_STD_HIGH,
    ANIM_VEH_STD_VORTEX,
    ANIM_VEH_TANK,
    ANIM_VEH_BFINJ,
    ANIM_VEH_LEAR,
    ANIM_VEH_HARRIER,
    ANIM_VEH_STD_UPRIGHT,
    ANIM_VEH_NEVADA,
    ANIM_NUM_ASSOCGROUPS,
};

enum AnimationID {
    ANIM_STD_WALK,
    ANIM_STD_RUN,
    ANIM_STD_RUNFAST,
    ANIM_STD_IDLE,
    ANIM_STD_ROADCROSS,
    ANIM_STD_STARTWALK,
    ANIM_STD_RUNSTOP1,
    ANIM_STD_RUNSTOP2,
    ANIM_STD_IDLE_CAM,
    ANIM_STD_IDLE_HBHB,
    ANIM_STD_IDLE_TIRED,
    ANIM_STD_IDLE_BIGGUN,
    ANIM_STD_CHAT,
    ANIM_STD_HAILTAXI,
    ANIM_STD_IDLE_SWIM,
    ANIM_STD_KO_FRONT,
    ANIM_STD_KO_LEFT,
    ANIM_STD_KO_BACK,
    ANIM_STD_KO_RIGHT,
    ANIM_STD_KO_SHOT_FACE,
    ANIM_STD_KO_SHOT_STOMACH,
    ANIM_STD_CHOKING_GAS,
    ANIM_STD_SPINFORWARD_LEFT,
    ANIM_STD_SPINFORWARD_RIGHT,
    ANIM_STD_HIGHIMPACT_FRONT,
    ANIM_STD_HIGHIMPACT_LEFT,
    ANIM_STD_HIGHIMPACT_BACK,
    ANIM_STD_HIGHIMPACT_RIGHT,
    ANIM_STD_HITBYGUN_FRONT,
    ANIM_STD_HITBYGUN_LEFT,
    ANIM_STD_HITBYGUN_BACK,
    ANIM_STD_HITBYGUN_RIGHT,
    ANIM_STD_HIT_FRONT,
    ANIM_STD_HIT_LEFT,
    ANIM_STD_HIT_BACK,
    ANIM_STD_HIT_RIGHT,
    ANIM_STD_HIT_FLOOR,
    ANIM_STD_HIT_WALK,
    ANIM_STD_HIT_WALL,
    ANIM_STD_HIT_FLOOR_FRONT,
    ANIM_STD_HIT_BEHIND,
    ANIM_STD_MELEE_FWD,
    ANIM_STD_MELEE_LEFT,
    ANIM_STD_MELEE_BACK,
    ANIM_STD_MELEE_RIGHT,
    ANIM_STD_FIGHT_SHUFFLE_F,
    ANIM_STD_FIGHT_SHUFFLE_B,
    ANIM_STD_FIGHT_2IDLE,
    ANIM_STD_DETONATE,
    ANIM_STD_WEAPON_STANCE,
    ANIM_STD_WEAPON_FWD,
    ANIM_STD_WEAPON_LEFT,
    ANIM_STD_WEAPON_BACK,
    ANIM_STD_WEAPON_RIGHT,
    ANIM_STD_WEAPON_2IDLE,
    ANIM_STD_WEAPON_CROUCH,
    ANIM_STD_WEAPON_CROUCH_FWD,
    ANIM_STD_WEAPON_CROUCH_LEFT,
    ANIM_STD_WEAPON_CROUCH_BACK,
    ANIM_STD_WEAPON_CROUCH_RIGHT,
    ANIM_STD_CAR_SIT,
    ANIM_STD_CAR_SIT_LO,
    ANIM_STD_CAR_SIT_BAD,
    ANIM_STD_CAR_SIT_PRO,
    ANIM_STD_CAR_SIT_P,
    ANIM_STD_CAR_SIT_P_LO,
    ANIM_STD_CAR_DRIVE_LEFT,
    ANIM_STD_CAR_DRIVE_RIGHT,
    ANIM_STD_CAR_DRIVE_LEFT_LO,
    ANIM_STD_CAR_DRIVE_RIGHT_LO,
    ANIM_STD_CAR_DRIVE_LEFT_BAD,
    ANIM_STD_CAR_DRIVE_RIGHT_BAD,
    ANIM_STD_CAR_DRIVE_LEFT_PRO,
    ANIM_STD_CAR_DRIVE_RIGHT_PRO,
    ANIM_STD_CAR_DRIVEBY_LEFT,
    ANIM_STD_CAR_DRIVEBY_RIGHT,
    ANIM_STD_CAR_DRIVEBY_LEFT_LO,
    ANIM_STD_CAR_DRIVEBY_RIGHT_LO,
    ANIM_STD_CAR_LOOKBEHIND,
    ANIM_STD_CAR_LOOKBEHIND_BAD,
    ANIM_STD_CAR_LOOKBEHIND_PRO,
    ANIM_STD_BOAT_DRIVE,
    ANIM_STD_BOAT_DRIVE_LEFT,
    ANIM_STD_BOAT_DRIVE_RIGHT,
    ANIM_STD_BOAT_LOOKBEHIND,
    ANIM_STD_CAR_DRIVE_LEFT_SLOW,
    ANIM_STD_CAR_DRIVE_RIGHT_SLOW,
    ANIM_STD_CAR_DRIVE_LEFT_BAD_SLOW,
    ANIM_STD_CAR_DRIVE_RIGHT_BAD_SLOW,
    ANIM_STD_CAR_DRIVE_LEFT_PRO_SLOW,
    ANIM_STD_CAR_DRIVE_RIGHT_PRO_SLOW,
    ANIM_STD_CAR_SIT_TRUCK,
    ANIM_STD_CAR_DRIVE_LEFT_TRUCK,
    ANIM_STD_CAR_DRIVE_RIGHT_TRUCK,
    ANIM_STD_CAR_LOOKBEHIND_TRUCK,
    ANIM_STD_CAR_SIT_KART,
    ANIM_STD_CAR_DRIVE_LEFT_KART,
    ANIM_STD_CAR_DRIVE_RIGHT_KART,
    ANIM_STD_CAR_LOOKBEHIND_KART,
    ANIM_STD_BIKE_PICKUP_LHS,
    ANIM_STD_BIKE_PICKUP_RHS,
    ANIM_STD_BIKE_PULLUP_LHS,
    ANIM_STD_BIKE_PULLUP_RHS,
    ANIM_STD_BIKE_ELBOW_LHS,
    ANIM_STD_BIKE_ELBOW_RHS,
    ANIM_STD_BIKE_FALLOFF,
    ANIM_STD_BIKE_FALLBACK,
    ANIM_STD_CAR_HOOKERTALK,
    ANIM_STD_CRAWLOUT_LHS,
    ANIM_STD_CRAWLOUT_RHS,
    ANIM_STD_ROLLOUT_LHS,
    ANIM_STD_ROLLOUT_RHS,
    ANIM_STD_GET_UP,
    ANIM_STD_GET_UP_LEFT,
    ANIM_STD_GET_UP_RIGHT,
    ANIM_STD_GET_UP_FRONT,
    ANIM_STD_JUMP_LAUNCH,
    ANIM_STD_JUMP_LAUNCH_R,
    ANIM_STD_JUMP_GLIDE,
    ANIM_STD_JUMP_LAND,
    ANIM_STD_FALL,
    ANIM_STD_FALL_GLIDE,
    ANIM_STD_FALL_LAND,
    ANIM_STD_FALL_COLLAPSE,
    ANIM_STD_FALL_ONBACK,
    ANIM_STD_FALL_ONFRONT,
    ANIM_STD_EVADE_STEP,
    ANIM_STD_EVADE_DIVE,
    ANIM_STD_CLIMB_GRAB,
    ANIM_STD_CLIMB_IDLE,
    ANIM_STD_CLIMB_PULLUP,
    ANIM_STD_CLIMB_STANDUP,
    ANIM_STD_CLIMB_STANDFINISH,
    ANIM_STD_CLIMB_VAULTOVER,
    ANIM_STD_CLIMB_VAULTFINISH,
    ANIM_STD_XPRESS_SCRATCH,
    ANIM_STD_TURN180,
    ANIM_STD_TURN_L,
    ANIM_STD_TURN_R,
    ANIM_STD_ARREST,
    ANIM_STD_DROWN,
    ANIM_STD_DUCK_COWER,
    ANIM_STD_HANDSUP,
    ANIM_STD_HANDSCOWER,
    ANIM_STD_PARTIAL_FUCKU,
    ANIM_STD_PHONE_IN,
    ANIM_STD_PHONE_OUT,
    ANIM_STD_PHONE_TALK,
    ANIM_STD_SEAT_DOWN,
    ANIM_STD_SEAT_UP,
    ANIM_STD_SEAT_IDLE,
    ANIM_STD_ATM,
    ANIM_STD_ABSEIL,
    ANIM_STD_OPENDOOR,
    ANIM_STD_FACIAL_SURPRISEPANIC,
    ANIM_STD_FACIAL_SURPRISEMILD,
    ANIM_STD_FACIAL_CURIOSITY,
    ANIM_STD_FACIAL_ANGER,
    ANIM_STD_FACIAL_HAPPINESS,
    ANIM_STD_FACIAL_SADNESS,
    ANIM_STD_FACIAL_TALKING,
    ANIM_STD_FACIAL_CHEWING,
    ANIM_DRIVE_RELAXED_TAP_L,
    ANIM_DRIVE_RELAXED_TAP_R,
    ANIM_STD_SHOVE,
    ANIM_STD_LOOK,
    ANIM_STD_ENDCHAT1,
    ANIM_STD_ENDCHAT2,
    ANIM_STD_ENDCHAT3,
    ANIM_STD_CAR_SMOKING,
    ANIM_STD_CAR_SMOKING_PASS,
    ANIM_STD_DAM_ARML_B,
    ANIM_STD_DAM_ARML_F,
    ANIM_STD_DAM_ARML_L,
    ANIM_STD_DAM_ARMR_B,
    ANIM_STD_DAM_ARMR_F,
    ANIM_STD_DAM_ARMR_R,
    ANIM_STD_DAM_LEGL_B,
    ANIM_STD_DAM_LEGL_F,
    ANIM_STD_DAM_LEGL_L,
    ANIM_STD_DAM_LEGR_B,
    ANIM_STD_DAM_LEGR_F,
    ANIM_STD_DAM_LEGR_R,
    ANIM_STD_DAM_STOMACH_B,
    ANIM_STD_DAM_STOMACH_F,
    ANIM_STD_DAM_STOMACH_L,
    ANIM_STD_DAM_STOMACH_R,
    ANIM_STD_DEAD_IN_CAR_LHS,
    ANIM_STD_DEAD_IN_CAR_RHS,
    ANIM_STD_CAR_RADIO,
    ANIM_STD_GANG_WEAPON_IDLE,
    ANIM_STD_NUM,
    ANIM_DOOR_OPENLEFT,
    ANIM_DOOR_OPENRIGHT,
    ANIM_BIKE_RIDE,
    ANIM_BIKE_READY,
    ANIM_BIKE_LEFT,
    ANIM_BIKE_RIGHT,
    ANIM_BIKE_LEANB,
    ANIM_BIKE_LEANF,
    ANIM_BIKE_WALKBACK,
    ANIM_BIKE_HIT,
    ANIM_BIKE_DRIVEBY_LHS,
    ANIM_BIKE_DRIVEBY_RHS,
    ANIM_BIKE_DRIVEBY_FORWARD,
    ANIM_BIKE_RIDE_P,
    ANIM_BIKE_BUNNYHOP,
    ANIM_BIKE_PEDAL,
    ANIM_BIKE_SPRINT,
    ANIM_ATTACK_1,
    ANIM_ATTACK_2,
    ANIM_ATTACK_EXTRA1,
    ANIM_ATTACK_EXTRA2,
    ANIM_ATTACK_3,
    ANIM_MELEE_ATTACK_1,
    ANIM_MELEE_ATTACK_2,
    ANIM_MELEE_ATTACK_3,
    ANIM_MELEE_GROUND,
    ANIM_MELEE_RUNNING,
    ANIM_MELEE_HIT_1,
    ANIM_MELEE_HIT_2,
    ANIM_MELEE_HIT_3,
    ANIM_MELEE_BLOCK,
    ANIM_MELEE_IDLE,
    ANIM_WEAPON_ATTACK,
    ANIM_WEAPON_ATTACK_CROUCH,
    ANIM_WEAPON_RELOAD,
    ANIM_WEAPON_RELOAD_CROUCH,
    ANIM_WEAPON_THROW_START,
    ANIM_WEAPON_THROW_LO,
    ANIM_WEAPON_THROW_HI,
    ANIM_GANGDB_WINDOW_LHS,
    ANIM_GANGDB_ROOF_LHS,
    ANIM_GANGDB_FWD_LHS,
    ANIM_GANGDB_BAK_LHS,
    ANIM_GANGDB_WINDOW_RHS,
    ANIM_GANGDB_ROOF_RHS,
    ANIM_GANGDB_FWD_RHS,
    ANIM_GANGDB_BAK_RHS,
    ANIM_BEACH_LIE_MALE_1,
    ANIM_BEACH_LIE_MALE_2,
    ANIM_BEACH_LIE_FEMALE_1,
    ANIM_BEACH_LIE_FEMALE_2,
    ANIM_BEACH_LIE_FEMALE_3,
    ANIM_SUNBATHE_DOWN_MALE_1,
    ANIM_SUNBATHE_DOWN_MALE_2,
    ANIM_SUNBATHE_DOWN_FEMALE_1,
    ANIM_SUNBATHE_DOWN_FEMALE_2,
    ANIM_SUNBATHE_DOWN_FEMALE_3,
    ANIM_SUNBATHE_UP_MALE_1,
    ANIM_SUNBATHE_UP_MALE_2,
    ANIM_SUNBATHE_UP_FEMALE_1,
    ANIM_SUNBATHE_UP_FEMALE_2,
    ANIM_SUNBATHE_UP_FEMALE_3,
    ANIM_SUNBATHE_IDLEA_MALE_1,
    ANIM_SUNBATHE_IDLEB_MALE_1,
    ANIM_SUNBATHE_IDLEC_MALE_1,
    ANIM_SUNBATHE_IDLEA_FEMALE_1,
    ANIM_SUNBATHE_IDLEB_FEMALE_1,
    ANIM_SUNBATHE_IDLEC_FEMALE_1,
    ANIM_MEDIC_CPR,
    ANIM_PLAYER_IDLE1,
    ANIM_PLAYER_IDLE2,
    ANIM_PLAYER_IDLE3,
    ANIM_PLAYER_IDLE4,
    ANIM_RIOT_ANGRY,
    ANIM_RIOT_ANGRY_B,
    ANIM_RIOT_CHANT,
    ANIM_RIOT_PUNCHES,
    ANIM_RIOT_SHOUT,
    ANIM_RIOT_CHALLENGE,
    ANIM_RIOT_FUCKYOU,
    ANIM_STRIP_A,
    ANIM_STRIP_B,
    ANIM_STRIP_C,
    ANIM_STRIP_D,
    ANIM_STRIP_E,
    ANIM_STRIP_F,
    ANIM_STRIP_G,
    ANIM_GANG_TALK_A,
    ANIM_GANG_TALK_B,
    ANIM_GANG_TALK_C,
    ANIM_GANG_TALK_D,
    ANIM_GANG_TALK_E,
    ANIM_GANG_TALK_F,
    ANIM_GANG_TALK_G,
    ANIM_GANG_TALK_H,
    ANIM_GANG_DRUGS_DEAL,
    ANIM_GANG_DRUGS_BUY,
    ANIM_GANG_GREET_A,
    ANIM_GANG_GREET_B,
    ANIM_GANG_GREET_CA,
    ANIM_GANG_GREET_CB,
    ANIM_GANG_GREET_D,
    ANIM_GANG_GREET_E,
    ANIM_GANG_GREET_F,
    ANIM_GANG_SHAKE_CAR,
    ANIM_GANG_BARGE_CAR,
    ANIM_GANG_KICK_CAR,
    ANIM_GANG_DRINK,
    ANIM_GANG_SMOKE,
    ANIM_GANG_DRINK_FAT,
    ANIM_GANG_SMOKE_FAT,
    ANIM_GANG_CARLEAN_IN,
    ANIM_GANG_CARLEAN_LOOP,
    ANIM_GANG_CARLEAN_OUT,
    ANIM_GANG_JOIN_YES,
    ANIM_GANG_JOIN_NO,
    ANIM_ATTR_SEATSTEP_DOWN,
    ANIM_ATTR_SEATSTEP_UP,
    ANIM_ATTR_SEATSTEP_IDLE,
    ANIM_SWIM_BREAST,
    ANIM_SWIM_CRAWL,
    ANIM_SWIM_DIVE,
    ANIM_SWIM_UWATER,
    ANIM_SWIM_UWATER_IDLE,
    ANIM_SWIM_JUMP,
    ANIM_CARRY_PICKUP,
    ANIM_CARRY_HOLD,
    ANIM_CARRY_PUTDOWN,
    ANIM_HANDSIGNAL1,
    ANIM_HANDSIGNAL2,
    ANIM_HANDSIGNAL3,
    ANIM_HANDSIGNAL4,
    ANIM_HANDSIGNAL5,
    ANIM_INT_SHOP_SHELF,
    ANIM_INT_SHOP_PAY,
    ANIM_INT_SHOP_SERVE,
    ANIM_INT_OFFICE_DESK_IN,
    ANIM_INT_OFFICE_DESK_OUT,
    ANIM_INT_OFFICE_DESK_IDLELOOP,
    ANIM_INT_OFFICE_DESK_TYPELOOP,
    ANIM_INT_OFFICE_DESK_BOREDLOOP,
    ANIM_INT_OFFICE_DESK_CRASH,
    ANIM_INT_OFFICE_DESK_DRINK,
    ANIM_INT_OFFICE_DESK_READ,
    ANIM_INT_OFFICE_DESK_WATCH,
    ANIM_INT_BEDRM_BED_IN_L,
    ANIM_INT_BEDRM_BED_LOOP_L,
    ANIM_INT_BEDRM_BED_OUT_L,
    ANIM_INT_BEDRM_BED_IN_R,
    ANIM_INT_BEDRM_BED_LOOP_R,
    ANIM_INT_BEDRM_BED_OUT_R,
    ANIM_INT_LOUNGE_CHAIR_IN,
    ANIM_INT_LOUNGE_CHAIR_OUT,
    ANIM_INT_LOUNGE_CHAIR_LOOP,
    ANIM_INT_KITCHEN_SINK,
    ANIM_STEALTH_READY,
    ANIM_STEALTH_ATTACK,
    ANIM_STEALTH_HIT_PART1,
    ANIM_STEALTH_HIT_PART2,
    ANIM_VEH_ALIGN_LHS,
    ANIM_VEH_ALIGN_RHS,
    ANIM_VEH_ALIGNHI_LHS,
    ANIM_VEH_ALIGNHI_RHS,
    ANIM_VEH_OPEN_OUTSIDE_FRONT_LHS,
    ANIM_VEH_OPEN_OUTSIDE_FRONT_RHS,
    ANIM_VEH_OPEN_OUTSIDE_REAR_LHS,
    ANIM_VEH_OPEN_OUTSIDE_REAR_RHS,
    ANIM_VEH_GETIN_FRONT_LHS,
    ANIM_VEH_GETIN_FRONT_RHS,
    ANIM_VEH_GETIN_REAR_LHS,
    ANIM_VEH_GETIN_REAR_RHS,
    ANIM_VEH_GETIN_WINDOW,
    ANIM_VEH_PULLOUT_LHS,
    ANIM_VEH_PULLOUT_RHS,
    ANIM_VEH_PULLOUT_WINDOW,
    ANIM_VEH_CLOSE_INSIDE_FRONT_LHS,
    ANIM_VEH_CLOSE_INSIDE_FRONT_RHS,
    ANIM_VEH_CLOSE_INSIDE_REAR_LHS,
    ANIM_VEH_CLOSE_INSIDE_REAR_RHS,
    ANIM_VEH_SHUFFLE_LHS,
    ANIM_VEH_SHUFFLE_RHS,
    ANIM_VEH_GETOUT_FRONT_LHS,
    ANIM_VEH_GETOUT_FRONT_RHS,
    ANIM_VEH_GETOUT_REAR_LHS,
    ANIM_VEH_GETOUT_REAR_RHS,
    ANIM_VEH_GETOUT_WINDOW,
    ANIM_VEH_JACKED_LHS,
    ANIM_VEH_JACKED_RHS,
    ANIM_VEH_CLOSE_OUTSIDE_FRONT_LHS,
    ANIM_VEH_CLOSE_OUTSIDE_FRONT_RHS,
    ANIM_VEH_CLOSE_OUTSIDE_REAR_LHS,
    ANIM_VEH_CLOSE_OUTSIDE_REAR_RHS,
    ANIM_VEH_JUMPOUT_LHS,
    ANIM_VEH_JUMPOUT_RHS,
    ANIM_VEH_CLOSE_DOOR_ROLLING,
    ANIM_VEH_FALL_OUT_LHS,
    ANIM_VEH_FALL_OUT_RHS,
    ANIM_VEH_OPEN_OUTSIDE_LOCKED_LHS,
    ANIM_VEH_OPEN_OUTSIDE_LOCKED_RHS,
};

} // namespace luna::game
