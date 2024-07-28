#include "..\..\script_mod.hpp"
#define FACTION blu_nato_tr

class DOUBLES(PREFIX,FACTION) : base {
  addons[] = {};
  displayName = "Vanilla NATO (tropic)";
  scope = 2;
  class TRIPLES(PREFIX,FACTION,base) : base {
    attachments[] = {
      "saber_light_lxWS",
      "saber_light_arid_lxWS",
      "saber_light_khaki_lxWS",
      "saber_light_lush_lxWS",
      "saber_light_sand_lxWS",
      "saber_light_snake_lxWS",
      "acc_flashlight",
      "acc_flashlight_pistol",
      "optic_ACO_grn",
      "optic_ACO_grn_desert_RF",
      "optic_ACO_grn_wood_RF",
      "optic_Aco",
      "optic_ACO_desert_RF",
      "optic_ACO_wood_RF",
      "optic_ACO_grn_smg",
      "optic_Aco_smg",
      "optic_Yorris",
      "optic_r1_high_arid_lxWS",
      "optic_r1_high_lxWS",
      "optic_r1_high_khaki_lxWS",
      "optic_r1_high_lush_lxWS",
      "optic_r1_high_sand_lxWS",
      "optic_r1_high_snake_lxWS",
      "optic_r1_low_arid_lxWS",
      "optic_r1_low_lxWS",
      "optic_r1_low_khaki_lxWS",
      "optic_r1_low_lush_lxWS",
      "optic_r1_low_sand_lxWS",
      "optic_r1_low_snake_lxWS",
      "optic_Holosight",
      "optic_Holosight_arid_F",
      "optic_Holosight_blk_F",
      "optic_Holosight_khk_F",
      "optic_Holosight_lush_F",
      "optic_Holosight_snake_lxWS",
      "optic_Holosight_smg",
      "optic_Holosight_smg_blk_F",
      "optic_Holosight_smg_khk_F",
      "optic_Holosight_smg_snake_lxWS",
      "optic_MRD",
      "optic_MRD_black",
      "optic_MRD_khk_RF",
      "optic_MRD_tan_RF",
      "optic_rds_RF"
    };
    backpacks[] = {
      "B_Parachute",
      "C_Parachute_Blue_RF",
      "C_Parachute_Green_RF",
      "C_Parachute_Orange_RF",
      "C_Parachute_White_RF",
      "C_Parachute_Yellow_RF",
      "B_AssaultPack_blk",
      "B_AssaultPack_cbr",
      "B_AssaultPack_rgr",
      "B_AssaultPack_khk",
      "B_AssaultPack_sgg",
      "B_AssaultPack_desert_lxWS",
      "B_AssaultPack_mcamo",
      "B_AssaultPack_tna_F",
      "B_AssaultPack_wdl_F",
      "B_AssaultPack_Kerry"
    };
    binoculars[] = {
      "Binocular",
      "NVGoggles_OPFOR",
      "NVGoggles",
      "NVGoggles_INDEP",
      "NVGoggles_tna_F"
    };
    facewear[] = {
      "G_Bandanna_aviator",
      "G_Bandanna_blk",
      "G_Bandanna_khk",
      "G_Bandanna_oli",
      "G_Bandanna_shades",
      "G_Bandanna_sport",
      "G_Bandanna_tan",
      "G_Bandanna_yellow_RF",
      "G_Glasses_black_RF",
      "G_Glasses_white_RF",
      "G_Shades_Black",
      "G_Shades_Blue",
      "G_Shades_Green",
      "G_Shades_Red",
      "G_Spectacles",
      "G_Squares_Tinted",
      "G_Squares",
      "G_Spectacles_Tinted",
      "G_Combat",
      "G_Combat_Goggles_tna_F",
      "G_Combat_lxWS",
      "G_Lowprofile",
      "G_Headset_lxWS",
      "G_Tactical_Clear",
      "G_Tactical_Black"
    };
    headgear[] = {
      "H_Beret_02"
    };
    items[] = {
      "ItemMap",
      "ItemWatch",
      "ItemCompass",
      "ItemRadio",
      "ItemGPS"
    };
    magazines[] = {
      "HandGrenade",
      "MiniGrenade",
      "SmokeShell",
      "SmokeShellYellow",
      "SmokeShellGreen",
      "SmokeShellRed",
      "SmokeShellPurple",
      "SmokeShellOrange",
      "SmokeShellBlue",
      "Chemlight_green",
      "Chemlight_red",
      "Chemlight_yellow",
      "Chemlight_blue",
      "B_IR_Grenade",
      "DemoCharge_Remote_Mag",
      "SatchelCharge_Remote_Mag",
      "ATMine_Range_Mag",
      "ClaymoreDirectionalMine_Remote_Mag",
      "APERSMine_Range_Mag",
      "APERSBoundingMine_Range_Mag",
      "SLAMDirectionalMine_Wire_Mag",
      "APERSTripMine_Wire_Mag",
      "APERSMineDispenser_Mag",
      "Drone_Range_Mag",
      "11Rnd_45ACP_Mag",
      "9Rnd_45ACP_Mag",
      "17Rnd_9x19_Mag_RF",
      "17Rnd_9x19_red_Mag_RF",
      "17Rnd_9x19_green_Mag_RF",
      "17Rnd_9x19_yellow_Mag_RF",
      "16Rnd_9x21_Mag",
      "16Rnd_9x21_red_Mag",
      "16Rnd_9x21_green_Mag",
      "16Rnd_9x21_yellow_Mag",
      "30Rnd_9x21_Mag",
      "30Rnd_9x21_Red_Mag",
      "30Rnd_9x21_Yellow_Mag",
      "30Rnd_9x21_Green_Mag",
      "30Rnd_65x39_caseless_black_mag",
      "30Rnd_65x39_caseless_mag",
      "30Rnd_65x39_caseless_khaki_mag",
      "30Rnd_65x39_caseless_mag_Tracer",
      "30Rnd_65x39_caseless_khaki_mag_Tracer",
      "30Rnd_65x39_caseless_black_mag_Tracer",
      "30Rnd_556x45_Stanag",
      "30Rnd_556x45_Stanag_Tracer_Red",
      "30Rnd_556x45_Stanag_Tracer_Green",
      "30Rnd_556x45_Stanag_Tracer_Yellow",
      "30Rnd_556x45_Stanag_red",
      "30Rnd_556x45_Stanag_green",
      "30Rnd_556x45_Stanag_Sand",
      "30Rnd_556x45_Stanag_Sand_green",
      "30Rnd_556x45_Stanag_Sand_red",
      "30Rnd_556x45_Stanag_Sand_Tracer_Red",
      "30Rnd_556x45_Stanag_Sand_Tracer_Green",
      "30Rnd_556x45_Stanag_Sand_Tracer_Yellow",
      "30Rnd_556x45_AP_Stanag_RF",
      "30Rnd_556x45_AP_Stanag_green_RF",
      "30Rnd_556x45_AP_Stanag_red_RF",
      "30Rnd_556x45_AP_Stanag_Tan_RF",
      "30Rnd_556x45_AP_Stanag_green_Tan_RF",
      "30Rnd_556x45_AP_Stanag_red_Tan_RF",
      "30Rnd_556x45_AP_Stanag_khk_RF",
      "30Rnd_556x45_AP_Stanag_green_khk_RF",
      "30Rnd_556x45_AP_Stanag_red_khk_RF",
      "20Rnd_556x45_AP_Stanag_RF",
      "20Rnd_556x45_AP_Stanag_green_RF",
      "20Rnd_556x45_AP_Stanag_red_RF",
      "20Rnd_556x45_AP_Stanag_Tan_RF",
      "20Rnd_556x45_AP_Stanag_green_Tan_RF",
      "20Rnd_556x45_AP_Stanag_red_Tan_RF",
      "20Rnd_556x45_AP_Stanag_khk_RF",
      "20Rnd_556x45_AP_Stanag_green_khk_RF",
      "20Rnd_556x45_AP_Stanag_red_khk_RF",
      "10Rnd_556x45_AP_Stanag_RF",
      "10Rnd_556x45_AP_Stanag_green_RF",
      "10Rnd_556x45_AP_Stanag_red_RF",
      "10Rnd_556x45_AP_Stanag_Tan_RF",
      "10Rnd_556x45_AP_Stanag_green_Tan_RF",
      "10Rnd_556x45_AP_Stanag_red_Tan_RF",
      "10Rnd_556x45_AP_Stanag_khk_RF",
      "10Rnd_556x45_AP_Stanag_green_khk_RF",
      "10Rnd_556x45_AP_Stanag_red_khk_RF",
      "30Rnd_65x39_caseless_msbs_mag",
      "30Rnd_65x39_caseless_msbs_mag_Tracer",
      "6Rnd_12Gauge_Pellets",
      "6rnd_HE_Mag_lxWS",
      "6rnd_Smoke_Mag_lxWS",
      "6Rnd_12Gauge_Slug",
      "20Rnd_556x45_UW_mag",
      "35Rnd_556x45_Velko_reload_tracer_red_lxWS",
      "35Rnd_556x45_Velko_lxWS",
      "35Rnd_556x45_Velko_snake_lxWS",
      "35Rnd_556x45_Velko_snake_reload_tracer_red_lxWS",
      "35Rnd_556x45_Velko_tracer_red_lxWS",
      "35Rnd_556x45_Velko_snake_tracer_red_lxWS",
      "35Rnd_556x45_Velko_reload_tracer_yellow_lxWS",
      "35Rnd_556x45_Velko_snake_reload_tracer_yellow_lxWS",
      "35Rnd_556x45_Velko_tracer_yellow_lxWS",
      "35Rnd_556x45_Velko_snake_tracer_yellow_lxWS",
      "35Rnd_556x45_Velko_reload_tracer_green_lxWS",
      "35Rnd_556x45_Velko_snake_reload_tracer_green_lxWS",
      "35Rnd_556x45_Velko_tracer_green_lxWS",
      "35Rnd_556x45_Velko_snake_tracer_green_lxWS",
      "2rnd_HE_Mag_lxWS",
      "2rnd_Smoke_Mag_lxWS",
      "30Rnd_9x21_Mag_SMG_02",
      "30Rnd_9x21_Mag_SMG_02_Tracer_Red",
      "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",
      "30Rnd_9x21_Mag_SMG_02_Tracer_Green",
      "30Rnd_45ACP_Mag_SMG_01",
      "30Rnd_45ACP_Mag_SMG_01_tracer_green",
      "30Rnd_45ACP_Mag_SMG_01_Tracer_Red",
      "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow",
      "1Rnd_HE_Grenade_shell",
      "UGL_FlareWhite_F",
      "UGL_FlareGreen_F",
      "UGL_FlareRed_F",
      "UGL_FlareYellow_F",
      "UGL_FlareCIR_F",
      "1Rnd_Smoke_Grenade_shell",
      "1Rnd_SmokeRed_Grenade_shell",
      "1Rnd_SmokeGreen_Grenade_shell",
      "1Rnd_SmokeYellow_Grenade_shell",
      "1Rnd_SmokePurple_Grenade_shell",
      "1Rnd_SmokeBlue_Grenade_shell",
      "1Rnd_SmokeOrange_Grenade_shell",
      "1Rnd_40mm_HE_lxWS",
      "200Rnd_556x45_Box_F",
      "200Rnd_556x45_Box_Red_F",
      "200Rnd_556x45_Box_Tracer_F",
      "200Rnd_556x45_Box_Tracer_Red_F",
      "200Rnd_65x39_cased_Box",
      "200Rnd_65x39_cased_Box_Tracer",
      "200Rnd_65x39_cased_Box_Red",
      "200Rnd_65x39_cased_Box_Tracer_Red",
      "130Rnd_338_Mag",
      "MRAWS_HEAT_F",
      "MRAWS_HE_F",
      "MRAWS_HEAT55_F",
      "NLAW_F",
      "Titan_AT",
      "Titan_AP",
      "Titan_AA",
      "10Rnd_338_Mag",
      "20Rnd_762x51_Mag",
      "10Rnd_Mk14_762x51_Mag_blk_lxWS",
      "20Rnd_762x51_Mag_blk_lxWS",
      "10Rnd_Mk14_762x51_Mag_snake_lxWS",
      "20Rnd_762x51_Mag_snake_lxWS",
      "10Rnd_Mk14_762x51_Mag"
    };
    medical[] = {"FirstAidKit"};
    weaponsHandgun[] = {
      "hgun_Pistol_heavy_01_F",
      "hgun_Pistol_heavy_01_green_F",
      "hgun_ACPC2_F",
      "hgun_Glock19_RF",
      "hgun_Glock19_khk_RF",
      "hgun_Glock19_Tan_RF",
      "hgun_P07_blk_F",
      "hgun_P07_khk_F",
      "hgun_P07_F"
    };
  };
  class TRIPLES(PREFIX,FACTION,infantry) : TRIPLES(PREFIX,FACTION,base) {
    attachments[] += {
      "acc_pointer_IR_arid_lxWS",
      "acc_pointer_IR_lush_lxWS",
      "acc_pointer_IR_sand_lxWS",
      "acc_pointer_IR_snake_lxWS",
      "saber_light_ir_lxWS",
      "saber_light_ir_arid_lxWS",
      "saber_light_ir_khaki_lxWS",
      "saber_light_ir_lush_lxWS",
      "saber_light_ir_sand_lxWS",
      "saber_light_ir_snake_lxWS"
    };
    backpacks[] += {
      "B_Bergen_mcamo_F",
      "B_Bergen_tna_F",
      "B_Carryall_cbr",
      "B_Carryall_desert_lxWS",
      "B_Carryall_green_F",
      "B_Carryall_khk",
      "B_Carryall_mcamo",
      "B_Carryall_oli",
      "B_Carryall_wdl_F",
      "B_Kitbag_cbr",
      "B_Kitbag_desert_lxWS",
      "B_Kitbag_rgr",
      "B_Kitbag_mcamo",
      "B_Kitbag_tan",
      "B_shield_backpack_lxWS",
      "B_SCBA_01_F",
      "B_TacticalPack_blk",
      "B_TacticalPack_rgr",
      "B_TacticalPack_mcamo",
      "B_TacticalPack_oli",
      "B_Mortar_01_support_F",
      "B_HMG_01_support_high_F",
      "B_HMG_01_support_F"
    };
    facewear[] += {
      "G_AirPurifyingRespirator_02_black_F",
      "G_AirPurifyingRespirator_02_olive_F",
      "G_AirPurifyingRespirator_02_sand_F",
      "G_AirPurifyingRespirator_01_F",
      "G_B_Diving"
    };
    headgear[] += {
      "lxWS_H_PASGT_goggles_UN_F",
      "lxWS_H_PASGT_basic_UN_F",
      "H_HelmetB",
      "H_HelmetB_black",
      "H_HelmetB_camo",
      "H_HelmetB_desert",
      "H_HelmetB_grass",
      "H_HelmetB_sand",
      "H_HelmetB_plain_sb_khaki_RF",
      "H_HelmetB_plain_sb_mtp_RF",
      "H_HelmetB_plain_sb_tna_RF",
      "H_HelmetB_plain_sb_wdl_RF",
      "H_HelmetB_snakeskin",
      "H_HelmetB_tna_F",
      "H_HelmetB_plain_wdl",
      "H_HelmetSpecB_blk",
      "H_HelmetSpecB_paint2",
      "H_HelmetSpecB_paint1",
      "H_HelmetSpecB_sand",
      "H_HelmetSpecB_snakeskin",
      "H_HelmetB_Enh_tna_F",
      "H_HelmetSpecB_wdl",
      "H_HelmetB_light",
      "H_HelmetB_light_black",
      "H_HelmetB_light_desert",
      "H_HelmetB_light_grass",
      "H_HelmetB_light_sand",
      "H_HelmetB_light_snakeskin",
      "H_HelmetB_Light_tna_F",
      "H_HelmetB_light_wdl"
    };
    items[] += {"MineDetector"};
    magazines[] += {
      "MiniGrenade",
      "HandGrenade"
    };
    uniforms[] += {
      "U_B_CBRN_Suit_01_MTP_F",
      "U_B_CBRN_Suit_01_Tropic_F",
      "U_B_CBRN_Suit_01_Wdl_F",
      "U_lxWS_B_CombatUniform_desert",
      "U_lxWS_B_CombatUniform_desert_tshirt",
      "U_B_CombatUniform_mcam",
      "U_B_CombatUniform_mcam_tshirt",
      "U_B_T_Soldier_F",
      "U_B_T_Soldier_AR_F",
      "U_B_CombatUniform_mcam_wdl_f",
      "U_B_CombatUniform_tshirt_mcam_wdL_f",
      "U_B_CTRG_1",
      "U_B_CTRG_3",
      "U_B_CTRG_2",
      "U_B_CTRG_Soldier_2_F",
      "U_B_CTRG_Soldier_2_Arid_F",
      "U_lxWS_B_CombatUniform_desert_vest",
      "U_B_CombatUniform_mcam_vest",
      "U_B_T_Soldier_SL_F",
      "U_B_CombatUniform_vest_mcam_wdl_f",
      "U_B_Wetsuit"
    };
    vests[] += {
      "V_PlateCarrierGL_blk",
      "V_lxWS_PlateCarrierGL_desert",
      "V_PlateCarrierGL_rgr",
      "V_PlateCarrierGL_mtp",
      "V_PlateCarrierGL_tna_F",
      "V_PlateCarrierGL_wdl",
      "V_PlateCarrier1_blk",
      "V_lxWS_PlateCarrier1_desert",
      "V_PlateCarrier1_rgr",
      "V_PlateCarrier1_rgr_noflag_F",
      "V_PlateCarrier1_tna_F",
      "V_PlateCarrier1_wdl",
      "V_PlateCarrierLite_black_noFlag_RF",
      "V_PlateCarrier2_blk",
      "V_lxWS_PlateCarrier2_desert",
      "V_PlateCarrier2_rgr",
      "V_PlateCarrier2_rgr_noflag_F",
      "V_PlateCarrier2_tna_F",
      "V_PlateCarrier2_wdl",
      "V_PlateCarrierSpec_blk",
      "V_lxWS_PlateCarrierSpec_desert",
      "V_PlateCarrierSpec_rgr",
      "V_PlateCarrierSpec_mtp",
      "V_PlateCarrierSpec_tna_F",
      "V_PlateCarrierSpec_wdl",
      "V_PlateCarrier_CTRG_lxWS",
      "V_PlateCarrierL_CTRG",
      "V_PlateCarrierH_CTRG",
      "V_CarrierRigKBT_01_heavy_Olive_F",
      "V_CarrierRigKBT_01_light_Olive_F",
      "V_CarrierRigKBT_01_Olive_F",
      "V_RebreatherB"
    };
    weaponsPrimary[] += {
      "arifle_MXC_Black_F",
      "arifle_MXC_F",
      "arifle_TRG20_F",
      "arifle_MXC_khk_F",
      "arifle_Mk20C_plain_F",
      "arifle_MX_Black_F",
      "arifle_MX_khk_F",
      "arifle_MX_F",
      "arifle_MSBS65_F",
      "arifle_MSBS65_black_F",
      "arifle_MSBS65_sand_F",
      "arifle_MSBS65_UBS_F",
      "arifle_MSBS65_UBS_black_F",
      "arifle_MSBS65_UBS_sand_F",
      "arifle_SDAR_F",
      "arifle_SPAR_01_blk_F",
      "arifle_SPAR_01_khk_F",
      "arifle_SPAR_01_snd_F",
      "arifle_SPAR_02_blk_F",
      "arifle_SPAR_02_khk_F",
      "arifle_SPAR_02_snd_F",
      "arifle_TRG21_F",
      "arifle_Velko_lxWS",
      "arifle_VelkoR5_lxWS",
      "arifle_VelkoR5_snake_lxWS",
      "arifle_XMS_Base_lxWS",
      "arifle_XMS_Base_khk_lxWS",
      "arifle_XMS_Base_Sand_lxWS",
      "arifle_XMS_Shot_lxWS",
      "arifle_XMS_Shot_khk_lxWS",
      "arifle_XMS_Shot_Sand_lxWS",
      "arifle_Mk20_plain_F"
    };
  };
  class TRIPLES(PREFIX,FACTION,recon) : TRIPLES(PREFIX,FACTION,infantry) {
    binoculars[] += {
      "Rangefinder",
      "Camera_lxWS",
      "NVGogglesB_blk_F",
      "NVGogglesB_grn_F",
      "NVGogglesB_gry_F",
      "TiGoggles_RF",
      "TiGoggles_grn_RF",
      "TiGoggles_tan_RF"
    };
    facewear[] += {
      "G_Balaclava_TI_blk_F",
      "G_Balaclava_TI_G_blk_F",
      "G_Balaclava_TI_tna_F",
      "G_Balaclava_TI_G_tna_F",
      "G_Balaclava_blk",
      "G_Balaclava_combat",
      "G_Balaclava_lowprofile",
      "G_Balaclava_oli",
      "G_Balaclava_blk_lxWS",
      "G_Balaclava_oli_lxWS",
      "G_Balaclava_snd_lxWS"
    };
    headgear[] += {
      "lxWS_H_Booniehat_desert",
      "H_Booniehat_mgrn",
      "H_Booniehat_khk_hs",
      "H_Booniehat_khk",
      "H_Booniehat_mcamo",
      "H_Booniehat_oli",
      "H_Booniehat_tan",
      "H_Booniehat_tna_F",
      "H_Booniehat_wdl",
      "H_HelmetB_TI_tna_F",
      "H_HelmetB_TI_arid_F"
    };
    magazines[] += {
      "1Rnd_RC40_HE_shell_RF",
      "1Rnd_RC40_SmokeWhite_shell_RF",
      "1Rnd_RC40_SmokeBlue_shell_RF",
      "1Rnd_RC40_SmokeRed_shell_RF",
      "1Rnd_RC40_SmokeGreen_shell_RF",
      "1Rnd_RC40_SmokeOrange_shell_RF",
      "1Rnd_Pellet_Grenade_shell_lxWS",
      "33Rnd_9x19_Mag_RF",
      "33Rnd_9x19_Red_Mag_RF",
      "33Rnd_9x19_Yellow_Mag_RF",
      "33Rnd_9x19_Green_Mag_RF",
      "33Rnd_9x19_Mag_Tan_RF",
      "33Rnd_9x19_Red_Mag_Tan_RF",
      "33Rnd_9x19_Yellow_Mag_Tan_RF",
      "33Rnd_9x19_Green_Mag_Tan_RF",
      "33Rnd_9x19_Mag_khk_RF",
      "33Rnd_9x19_Red_Mag_khk_RF",
      "33Rnd_9x19_Yellow_Mag_khk_RF",
      "33Rnd_9x19_Green_Mag_khk_RF",
      "65Rnd_9x19_Mag_RF",
      "65Rnd_9x19_Red_Mag_RF",
      "65Rnd_9x19_Yellow_Mag_RF",
      "65Rnd_9x19_Green_Mag_RF"
    };
    uniforms[] += {
      "U_B_CTRG_Soldier_F",
      "U_B_CTRG_Soldier_Arid_F",
      "U_B_CTRG_Soldier_3_F",
      "U_B_CTRG_Soldier_3_Arid_F"
    };
    weaponsHandgun[] += {
      "hgun_Glock19_auto_RF",
      "hgun_Glock19_auto_khk_RF",
      "hgun_Glock19_auto_Tan_RF",
      "hgun_DEagle_RF",
      "hgun_DEagle_classic_RF"
    };
  };
  class TRIPLES(PREFIX,FACTION,crew) : TRIPLES(PREFIX,FACTION,base) {
    headgear[] += {
      "H_EarProtectors_black_F",
      "H_HeadSet_black_F",
      "lxWS_H_Headset"
    };
    items[] += {"ToolKit"};
    vests[] += {
      "V_Chestrig_blk",
      "V_Chestrig_rgr",
      "V_Chestrig_khk",
      "V_Chestrig_oli",
      "V_TacVest_gen_F",
      "V_SmershVest_01_F",
      "V_SmershVest_01_radio_F",
      "V_HarnessOGL_brn",
      "V_HarnessOGL_gry",
      "V_HarnessO_brn",
      "V_HarnessO_gry",
      "V_lxWS_HarnessO_oli",
      "V_CarrierRigKBT_01_Olive_F",
      "V_Rangemaster_belt",
      "V_TacVestIR_blk",
      "V_lxWS_TacVestIR_oli",
      "V_TacChestrig_cbr_F",
      "V_TacChestrig_grn_F",
      "V_TacChestrig_oli_F",
      "V_TacVest_blk",
      "V_TacVest_brn",
      "V_TacVest_camo",
      "V_TacVest_khk",
      "V_TacVest_oli",
      "V_TacVest_rig_blk_RF",
      "V_TacVest_rig_khk_RF",
      "V_TacVest_rig_oli_RF"
    };
    weaponsPrimary[] += {
      "SMG_03C_black",
      "SMG_03C_camo",
      "SMG_03C_hex",
      "SMG_03C_khaki",
      "SMG_03C_TR_black",
      "SMG_03C_TR_camo",
      "SMG_03C_TR_hex",
      "SMG_03C_TR_khaki",
      "hgun_PDW2000_F",
      "SMG_02_F",
      "SMG_01_F",
      "SMG_05_F",
      "SMG_01_black_RF"
    };
  };
  class TRIPLES(PREFIX,FACTION,officer) : TRIPLES(PREFIX,FACTION,base) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'officer');
    backpacks[] = {
      "B_RadioBag_01_mtp_F",
      "B_RadioBag_01_tropic_F",
      "B_RadioBag_01_wdl_F"
    };
    binoculars[] += {"RangeFinder"};
    facewear[] = {"G_Aviator"};
    headgear[] = {
      "H_Beret_Colonel",
      "lxWS_H_Beret_Colonel",
      "lxWS_H_MilCap_desert",
      "H_MilCap_grn",
      "H_MilCap_mcamo",
      "H_MilCap_tna_F",
      "H_MilCap_wdl",
      "H_ParadeDressCap_01_US_F"
    };
  };
  class TRIPLES(PREFIX,FACTION,leader) : TRIPLES(PREFIX,FACTION,infantry) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'leader');
    backpacks[] = {
      "B_RadioBag_01_mtp_F",
      "B_RadioBag_01_tropic_F",
      "B_RadioBag_01_wdl_F"
    };
    binoculars[] += {
      "Rangefinder",
      "Laserdesignator_01_khk_F",
      "Laserdesignator_03",
      "Laserdesignator"
    };
    magazines[] += {"1Rnd_RC40_shell_RF"};
    weaponsPrimary[] = {
      "arifle_Mk20_GL_plain_F",
      "arifle_MX_GL_Black_F",
      "arifle_MX_GL_khk_F",
      "arifle_MX_GL_F",
      "arifle_MSBS65_GL_F",
      "arifle_MSBS65_GL_black_F",
      "arifle_MSBS65_GL_sand_F",
      "arifle_SPAR_01_GL_blk_F",
      "arifle_SPAR_01_GL_khk_F",
      "arifle_SPAR_01_GL_snd_F",
      "arifle_SDAR_F",
      "arifle_TRG21_GL_F",
      "arifle_VelkoR5_GL_lxWS",
      "arifle_VelkoR5_GL_snake_lxWS",
      "arifle_XMS_GL_lxWS",
      "arifle_XMS_GL_khk_lxWS",
      "arifle_XMS_GL_Sand_lxWS",
    };
  };
  class TRIPLES(PREFIX,FACTION,grenadier) : TRIPLES(PREFIX,FACTION,infantry) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'grenadier');
    weaponsPrimary[] = {
      "arifle_Mk20_GL_plain_F",
      "arifle_MX_GL_Black_F",
      "arifle_MX_GL_khk_F",
      "arifle_MX_GL_F",
      "arifle_MSBS65_GL_F",
      "arifle_MSBS65_GL_black_F",
      "arifle_MSBS65_GL_sand_F",
      "arifle_SPAR_01_GL_blk_F",
      "arifle_SPAR_01_GL_khk_F",
      "arifle_SPAR_01_GL_snd_F",
      "arifle_SDAR_F",
      "arifle_TRG21_GL_F",
      "arifle_VelkoR5_GL_lxWS",
      "arifle_VelkoR5_GL_snake_lxWS",
      "arifle_XMS_GL_lxWS",
      "arifle_XMS_GL_khk_lxWS",
      "arifle_XMS_GL_Sand_lxWS"
    };
  };
  class TRIPLES(PREFIX,FACTION,autorifleman) : TRIPLES(PREFIX,FACTION,infantry) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'autorifleman');
    backpacks[] += {
      "B_HMG_01_high_weapon_F",
      "B_HMG_01_weapon_F",
      "B_GMG_01_high_weapon_F",
      "B_GMG_01_weapon_F"
    };
    attachments[] += {
      "bipod_01_F_snd",
      "bipod_02_F_arid",
      "bipod_03_F_blk",
      "bipod_02_F_blk",
      "bipod_01_F_blk",
      "bipod_02_F_hex",
      "bipod_01_F_khk",
      "bipod_02_F_lush",
      "bipod_01_F_mtp",
      "bipod_03_F_oli",
      "bipod_02_F_tan"
    };
    magazines[] += {
      "100Rnd_65x39_caseless_mag",
      "100Rnd_65x39_caseless_khaki_mag",
      "100Rnd_65x39_caseless_black_mag",
      "100Rnd_65x39_caseless_mag_tracer",
      "100Rnd_65x39_caseless_khaki_mag_tracer",
      "100Rnd_65x39_caseless_black_mag_tracer",
      "100Rnd_65x39_caseless_mag_Tracer",
      "100Rnd_65x39_caseless_khaki_mag_Tracer",
      "100Rnd_65x39_caseless_black_mag_Tracer",
      "150Rnd_556x45_Drum_Mag_F",
      "150Rnd_556x45_Drum_Mag_Tracer_F",
      "150Rnd_556x45_Drum_Sand_Mag_F",
      "150Rnd_556x45_Drum_Sand_Mag_Tracer_F",
      "150Rnd_556x45_Drum_Green_Mag_F",
      "150Rnd_556x45_Drum_Green_Mag_Tracer_F"
    };
    weaponsPrimary[] = {
      "LMG_03_F",
      "LMG_Mk200_F",
      "LMG_Mk200_black_F",
      "arifle_MX_SW_Black_F",
      "arifle_MX_SW_khk_F",
      "arifle_MX_SW_F",
      "arifle_SPAR_02_blk_F",
      "arifle_SPAR_02_khk_F",
      "arifle_SPAR_02_snd_F",
      "MMG_02_black_F",
      "MMG_02_camo_F",
      "MMG_02_sand_F"
    };
  };
  class TRIPLES(PREFIX,FACTION,antitank) : TRIPLES(PREFIX,FACTION,infantry) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'antitank');
    backpacks[] += {"B_AT_01_weapon_F"};
    weaponsLauncher[] += {
      "launch_MRAWS_green_rail_F",
      "launch_MRAWS_olive_rail_F",
      "launch_MRAWS_sand_rail_F",
      "launch_MRAWS_green_F",
      "launch_MRAWS_olive_F",
      "launch_MRAWS_sand_F",
      "launch_NLAW_F",
      "launch_O_Titan_short_F",
      "launch_I_Titan_short_F",
      "launch_B_Titan_short_F",
      "launch_B_Titan_short_tna_F",
    };
  };
  class TRIPLES(PREFIX,FACTION,antiair) : TRIPLES(PREFIX,FACTION,infantry) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'antiair');
    backpacks[] += {"B_AA_01_weapon_F"};
    weaponsLauncher[] += {
      "launch_B_Titan_olive_F",
      "launch_B_Titan_F",
      "launch_B_Titan_tna_F"
    };
  };
  class TRIPLES(PREFIX,FACTION,medic) : TRIPLES(PREFIX,FACTION,infantry) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'medic');
    medical[] += {"Medikit"};
  };
  class TRIPLES(PREFIX,FACTION,marksman) : TRIPLES(PREFIX,FACTION,infantry) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'marksman');
    attachments[] = {
      "optic_AMS",
      "optic_AMS_khk",
      "optic_AMS_snd",
      "optic_DMS",
      "optic_DMS_weathered_F",
      "optic_LRPS",
      "optic_LRPS_tna_F",
      "optic_SOS",
      "optic_SOS_khk_F",
      "optic_NVS",
      "bipod_02_F_arid",
      "bipod_03_F_blk",
      "bipod_02_F_blk",
      "bipod_01_F_blk",
      "bipod_02_F_hex",
      "bipod_01_F_khk",
      "bipod_02_F_lush",
      "bipod_01_F_mtp",
      "bipod_03_F_oli",
      "bipod_01_F_snd",
      "bipod_02_F_tan",
      "acc_pointer_IR",
      "acc_pointer_IR_arid_lxWS",
      "acc_pointer_IR_lush_lxWS",
      "acc_pointer_IR_sand_lxWS",
      "acc_pointer_IR_snake_lxWS"
    };
    weaponsPrimary[] = {
      "srifle_h6_blk_rf",
      "srifle_h6_oli_rf",
      "srifle_h6_tan_rf",
      "srifle_DMR_02_F",
      "srifle_DMR_02_camo_F",
      "srifle_DMR_02_sniper_F",
      "srifle_DMR_03_F",
      "srifle_DMR_03_multicam_F",
      "srifle_DMR_03_khaki_F",
      "srifle_DMR_03_tan_F",
      "srifle_DMR_03_woodland_F",
      "srifle_EBR_F",
      "srifle_EBR_blk_lxWS",
      "srifle_EBR_snake_lxWS",
      "arifle_MXM_Black_F",
      "arifle_MXM_khk_F",
      "arifle_MXM_F",
      "arifle_MSBS65_Mark_F",
      "arifle_MSBS65_Mark_black_F",
      "arifle_MSBS65_Mark_camo_F",
      "arifle_MSBS65_Mark_sand_F",
      "arifle_SPAR_03_blk_F",
      "arifle_SPAR_03_khk_F",
      "arifle_SPAR_03_snd_F"
    };
  };
  class TRIPLES(PREFIX,FACTION,mortar) : TRIPLES(PREFIX,FACTION,infantry) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'mortar');
    backpacks[] += {
      "B_Mortar_01_weapon_F",
      "B_CommandoMortar_weapon_RF"
    };
  };
  class TRIPLES(PREFIX,FACTION,crewman) : TRIPLES(PREFIX,FACTION,crew) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'crewman');
    headgear[] += {
      "H_HelmetCrew_B",
      "H_HelmetCrew_I_E",
      "lxWS_H_HelmetCrew_I",
      "lxWS_H_HelmetCrew_Blue"
    };
    uniforms[] += {
      "U_Tank_green_F"
    };
    weaponsPrimary[] += {
      "SMG_03_black",
      "SMG_03_camo",
      "SMG_03_khaki",
      "SMG_03_TR_black",
      "SMG_03_TR_camo",
      "SMG_03_TR_hex",
      "SMG_03_TR_khaki",
      "arifle_MXC_Black_F",
      "arifle_MXC_F",
      "arifle_TRG20_F",
      "arifle_MXC_khk_F",
      "arifle_Mk20C_plain_F"
    };
  };
  class TRIPLES(PREFIX,FACTION,aircrew) : TRIPLES(PREFIX,FACTION,crew) {
    condition = QUOTE(([player] call EFUNC(squad,getRole)) == 'aircrew');
    facewear[] += {"G_Aviator"};
    headgear[] += {
      "H_CrewHelmetHeli_I_E",
      "H_CrewHelmetHeli_B",
      "H_PilotHelmetHeli_Black_RF",
      "H_PilotHelmetHeli_MilGreen_RF",
      "H_PilotHelmetHeli_I_E",
      "H_PilotHelmetHeli_B"
    };
    uniforms[] += {
      "U_C_HeliPilotCoveralls_Black_RF",
      "U_C_HeliPilotCoveralls_Green_RF",
      "U_B_HeliPilotCoveralls",
      "U_B_HeliPilotCoveralls_MTP_RF",
      "U_I_pilotCoveralls",
      "U_B_PilotCoveralls",
      "U_lxWS_UN_Pilot"
    };
  };
};