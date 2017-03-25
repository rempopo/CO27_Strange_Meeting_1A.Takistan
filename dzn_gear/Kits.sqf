// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

//ANA Forces
kit_ana_sl = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_rba_lbv_rm","","rhsusf_ach_bare",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms_gp25","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["PRIMARY MAG",8],["rhs_VOG25",10],["rhs_VG40OP_red",1],["rhs_VG40OP_white",1],["SmokeShellBlue",1],["SmokeShellPurple",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ana_mg = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_rba_lbv_mg","","CUP_H_RUS_6B27",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShellBlue",1],["SmokeShell",3],["HandGrenade",3],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ana_at = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_rba_lbv_rm","rhs_rpg_empty","CUP_H_RUS_6B27",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","",["","","rhs_acc_pgo7v3",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["PRIMARY MAG",7],["HandGrenade",3],["SmokeShellBlue",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]]]
];
kit_ana_aat = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_rba_lbv_rm","rhs_rpg_empty","CUP_H_RUS_6B27",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["PRIMARY MAG",7],["HandGrenade",3],["SmokeShellBlue",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]]]
];
kit_ana_ss = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_rba_lbv_gr","","CUP_H_RUS_6B27",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["PRIMARY MAG",7],["rhs_VOG25",10],["rhs_VG40OP_white",2],["rhs_VG40OP_red",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ana_gr = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_rba_lbv_gr","","CUP_H_RUS_6B27",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["PRIMARY MAG",7],["rhs_VOG25",10],["rhs_VG40OP_white",2],["rhs_VG40OP_red",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ana_mm = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_rba_lbv_rmp","","CUP_H_RUS_6B27",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svdp_wd","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["PRIMARY MAG",15],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
//US Forces
kit_us_pl = [
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ucp","rhsusf_iotv_ucp_Squadleader","","rhsusf_ach_helmet_ucp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["30Rnd_556x45_Stanag",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_us_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ucp","rhsusf_iotv_ucp_Squadleader","","rhsusf_ach_helmet_ucp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["30Rnd_556x45_Stanag",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_us_ftl = [
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ucp","rhsusf_iotv_ucp_Teamleader","","rhsusf_ach_helmet_ucp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_m203","30Rnd_556x45_Stanag",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["30Rnd_556x45_Stanag",7],["rhs_mag_M441_HE",11]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_us_ar = [
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ucp","rhsusf_iotv_ucp_SAW","rhsusf_assault_eagleaiii_ucp","rhsusf_ach_helmet_ucp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip","rhs_200rnd_556x45_M_SAW",["","","rhsusf_acc_ELCAN",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];
kit_us_gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ucp","rhsusf_iotv_ucp_Grenadier","","rhsusf_ach_helmet_ucp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_m203","30Rnd_556x45_Stanag",["","","rhsusf_acc_ACOG2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["30Rnd_556x45_Stanag",7],["rhs_mag_M441_HE",9]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_us_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_cu_ucp","rhsusf_iotv_ucp_Rifleman","rhsusf_assault_eagleaiii_ucp","rhsusf_ach_helmet_ucp",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_carryhandle_grip3","30Rnd_556x45_Stanag",["","","rhsusf_acc_ACOG2","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","rhs_m72a7_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["30Rnd_556x45_Stanag",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_us_heli = [
	[],
	[["30Rnd_556x45_Stanag",15],["rhs_200rnd_556x45_M_SAW",5],["DemoCharge_Remote_Mag",5],["CUP_HandGrenade_M67",10]],
	[["ACE_fieldDressing",15],["ACE_elasticBandage",15],["ACE_quikclot",15],["ACE_bodyBag",10],["ACE_Clacker",3],["ACE_packingBandage",10]],
	[]
];
// Mujahedeen
#define INS_UNI ["CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_05"]
#define INS_HEAD ["CUP_H_TKI_Pakol_1_01","CUP_H_TKI_Pakol_2_06","CUP_H_TKI_Pakol_1_06","CUP_H_TKI_SkullCap_03","CUP_H_TKI_Lungee_05","CUP_H_TKI_Lungee_02"]
#define INS_VEST ["CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_05","CUP_V_OI_TKI_Jacket2_04","CUP_V_OI_TKI_Jacket2_05","CUP_V_O_Ins_Carrier_Rig"]
#define INS_WEP ["rhs_weap_akm","rhs_weap_akms","rhs_weap_aks74","CUP_srifle_LeeEnfield"]
#define INS_MAG ["rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","rhs_30Rnd_545x39_AK","CUP_10x_303_M"]
#define INS_GP ["rhs_weap_akm_gp25","rhs_weap_akms_gp25","rhs_weap_aks74_gp25"]
#define INS_GP_MAG ["rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","rhs_30Rnd_545x39_AK"]

kit_ins_random = [
	"kit_ins_fighter"
	,"kit_ins_gr"
	,"kit_ins_at"
	,"kit_ins_mg"
	,"kit_ins_mm"
	,"kit_ins_rat"
];

kit_ins_fighter =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_gr =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_GP ,INS_GP_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["rhs_VOG25",10],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_at =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"CUP_B_AlicePack_Khaki",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",4],["rhs_rpg7_type69_airburst_mag",4]]]
];
kit_ins_mg =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"CUP_B_AlicePack_Khaki",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_mm =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_rat =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];
