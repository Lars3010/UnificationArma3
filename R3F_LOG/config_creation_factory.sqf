/**
 * CREATION FACTORY CONFIGURATION FILE
 *
 * English and French comments
 * Commentaires anglais et fran�ais
 *
 * (EN)
 * This file contains the predefined lists of available categories in the creation factory.
 * The objects/vehicles categories are the same as in the mission editor.
 * It corresponds to the tree CfgVehicleClasses in the config file.
 * To add a category in one of the lists, you must write its class name. Use the BIS' "Config viewer".
 *
 * To understand the white or black list system, read also the needed parameters in USER_FUNCT\init_creation_factory.sqf
 * There are three white list "FULL", "MEDIUM" and "LIGHT", and a black list.
 * The black list is used if no white list is mentioned when calling USER_FUNCT\init_creation_factory.sqf.
 *
 * (FR)
 * Ce fichier contient la liste des cat�gories disponibles dans l'usine de cr�ation.
 * Les cat�gories d'objets/v�hicules sont les m�mes que dans l'�diteur de mission.
 * Cela correspond � l'arborescence CfgVehicleClasses dans le config file.
 * Pour ajouter une cat�gorie dans une des listes, vous devez �crire son nom de classe. Utilisez le "Config viewer" de BIS.
 *
 * Pour comprendre le syst�me de white/black list, consultez les param�tres requis par USER_FUNCT\init_creation_factory.sqf
 * Il y a trois white list "FULL", "MEDIUM" and "LIGHT", et une black list.
 * La black list est utilis�e si aucune white list n'est mentionn�e lors de l'appel de USER_FUNCT\init_creation_factory.sqf.
 */

/**
 * SELL BACK REIMBURSEMENT RATE
 *
 * Rate of reimbursement from the buying price granted to the factory when the object is send back to it.
 * Value of 0 means no credits back, 0.5 means half buying price, 1 means full buying price, and so on.
 * Set to -1 to disable the possibility to give back objects to the creation factory.
 * Note : the reimbursement amount take also into account of the damage level of the object.
 *
 * Taux de remboursement par rapport au prix d'achat accord� � l'usine lors de la restitution d'un objet.
 * Une valeur de 0 signifie pas de cr�dits en retour, 0.5 donne 50% du prix d'achat, 1 correspond � 100% du prix d'achat.
 * Mettre � -1 pour d�sactiver la possibilit� de redonner les objets � l'usine de cr�ation.
 * Note : le montant du remboursement prend aussi en compte l'�tat (dommage) de l'objet.
 */

/*

	Add all the categories that you want to use objects out of, then add the classnames of the objects themselves to filter

*/

R3F_LOG_CFG_CF_sell_back_bargain_rate = 0.75;

/**
 * LIGHT WHITE LIST
 * Categories of objects/vehicles available in a "LIGHT" factory (see USER_FUNCT\init_creation_factory.sqf).
 */
R3F_LOG_CFG_CF_whitelist_light_categories =
[
	"Objects",                          // Objects (1 entries)
	"Armory",                           // Armory (0 entries)
	"Targets",                          // Targets (0 entries)
	"Cargo",                            // Objects (Construction) (43 entries)
	"Flag",                             // Objects (Flags) (35 entries)
	"Lamps",                            // Objects (Lamps) (0 entries)
	"Communication",                    // Objects (Communications) (0 entries)
	"Furniture",                        // Objects (Furniture) (22 entries)
	"Misc",                             // Objects (0 entries)
	"Signs",                            // Objects (Signs) (50 entries)
	"Small_items",                      // Objects (Small) (88 entries)
	"Training",                         // Training (80 entries)
	"Shelters",                         // Objects (Shelters) (0 entries)
	"Fortifications",                   // Objects (Fortifications) (47 entries)
	"Tents",                            // Objects (Camping) (46 entries)
	"Market",                           // Objects (Market) (11 entries)
	"Structures",                       // Structures (0 entries)
	"Structures_Military",              // Structures (Military) (12 entries)
	"Structures_Walls",                 // Structures (Walls) (0 entries)
	"Structures_Fences"                 // Structures (Fences) (1 entries)
];

/**
 * MEDIUM WHITE LIST
 * Categories of objects/vehicles available in a "MEDIUM" factory (see USER_FUNCT\init_creation_factory.sqf).
 * It includes all the categories of the "LIGHT" list, and the listed categories below.
 */
R3F_LOG_CFG_CF_whitelist_medium_categories = R3F_LOG_CFG_CF_whitelist_light_categories +
[
	"Ammo",                             // Ammo (49 entries)
	"Static",                           // Static (28 entries)
	"Container",                        // Objects (Containers) (39 entries)
	"Objects_Airport",                  // Objects (Airport) (20 entries)

	// All in Arma
	"StaticW",                          // Static (woodland) (4 entries)
	"Static_ChDKZ",                     // Static (Insurgency) (0 entries)
	"Static_USMC",                      // Static (USMC) (0 entries)
	"Static_RU",                        // Static (RU) (0 entries)
	"Static_CDF"                        // Static (CDF) (0 entries)
];

/**
 * FULL WHITE LIST
 * Categories of objects/vehicles available in a "FULL" factory (see USER_FUNCT\init_creation_factory.sqf).
 * It includes all the categories of the "MEDIUM" list, and the listed categories below.
 */
R3F_LOG_CFG_CF_whitelist_full_categories = R3F_LOG_CFG_CF_whitelist_medium_categories +
[
	"Car",                              // Cars (42 entries)
	"Armored",                          // Armored (16 entries)
	"Air",                              // Air (19 entries)
	"Support",                          // Supports (21 entries)
	"Ship",                             // Ships (13 entries)
	"Autonomous",                       // Autonomous (15 entries)
	"Submarine",                        // Submarines (3 entries)
	"Wreck",                            // Wrecks (24 entries)
	"Wreck_sub",                        // Wrecks (Submerged) (5 entries)
	"Military",                         // Objects (Military) (9 entries)
	"Structures_Commercial",            // Structures (Commercial) (1 entries)
	"Structures_Infrastructure",        // Structures (Infrastructure) (1 entries)
	"Structures_Town",                  // Structures (Town) (4 entries)
	"Structures_Cultural",              // Structures (Cultural) (0 entries)
	"Structures_Industrial",            // Structures (Industrial) (0 entries)
	"Structures_Transport",             // Structures (Transport) (0 entries)
	"Structures_Village",               // Structures (Village) (0 entries)
	"Structures_Slums",                 // Structures (Slums) (0 entries)
	"Structures_Airport",               // Structures (Airport) (0 entries)

	// All in Arma
	"WarfareBuildingsClassname",        // Warfare Buildings (79 entries)
	"CarW",                             // Cars (woodland) (10 entries)
	"Military_With_side",               // Military (36 entries)
	"WarfareClassName",                 // Warfare (16 entries)

	//RHS
	"rhs_vehclass_truck",
	"rhs_vehclass_tank",
	"rhs_vehclass_mrap",
	"rhs_vehclass_car",
	"class rhs_vehclass_car",
	"rhs_vehclass_apc",
	"rhs_vehclass_ifv",
	"rhs_vehclass_helicopter",
	"rhs_vehclass_artillery",
	"rhs_vehclass_aa",
	"rhs_vehclass_aircraft",

	//ACE
   	"ACE_Logistics_Items",

	//Project opfor
	"LOP_Armored",
	"LOP_Wheeled"
];


R3F_LOG_CFG_CF_whitelist_default_categories = R3F_LOG_CFG_CF_whitelist_full_categories +
[

   	/*fortifications*/
   	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_Big_F",
	"Land_HBarrier_1_F",
	"Land_HBarrierWall_corridor_F",
	"Land_HBarrierWall_corner_F",
	"Land_HBarrierWall6_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierTower_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Mil_WallBig_Corner_F",

	"Land_BagFence_Corner_F",
	"Land_BagFence_End_F",
	"Land_BagFence_Long_F",
	"Land_BagFence_Round_F",
	"Land_BagFence_Short_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Small_F",
	"Land_SandbagBarricade_01_hole_F",
	"Land_SandbagBarricade_01_half_F",
	"Land_SandbagBarricade_01_F",

	"Land_CzechHedgehog_01_F",
	"Land_Bunker_01_small_F",
	"Land_Bunker_01_big_F",
	"Land_Bunker_01_HQ_F",
	"Land_Bunker_01_blocks_3_F",
	"Land_Bunker_01_blocks_1_F",

	"Land_Razorwire_F",
	"Land_BarGate_F",

	//signs
	"Land_Sign_MinesDanger_English_F",
	"Land_Sign_MinesTall_English_F",
	"Land_SignM_WarningMilitaryArea_english_F",

   	//ace
   	"ACE_TripodObject",
   	"RoadBarrier_F",
	"ACE_Track",
	"ACE_Wheel",
	"ACE_ConcertinaWireCoil",
	"Land_PortableLight_single_F",
	"Land_PortableLight_double_F"
];

R3F_LOG_CF_west_objects = R3F_LOG_CFG_CF_whitelist_default_categories +
[

    //Apcs
	"rhsusf_m113_usarmy",
    "rhsusf_m113_usarmy_M240",
    "rhsusf_m113_usarmy_MK19",
    "rhsusf_m113_usarmy_unarmed",
    "rhsusf_m109_usarmy",

    "CUP_B_AAV_USMC",

    //Cars
    "RHS_M119_WD",
    "RHS_M252_WD",
    "rhsusf_m1025_w_m2",
    "rhsusf_m1025_w_mk19",
    "rhsusf_m1025_w",
    "rhsusf_m998_w_2dr_fulltop",
    "rhsusf_m998_w_2dr_halftop",
    "rhsusf_m998_w_4dr",

    //Ifvs
    "RHS_M2A2_wd",
    "RHS_M2A2_BUSKI_WD",
    "RHS_M2A3_wd",
    "RHS_M2A3_BUSKIII_wd",

    "CUP_B_M6LineBacker_USA_W",

    //Mraps?
    "rhsusf_M1117_W",
    "rhsusf_M1220_usarmy_wd",
    "rhsusf_M1220_M153_M2_usarmy_wd",
    "rhsusf_M1220_M2_usarmy_wd",
    "rhsusf_M1220_MK19_usarmy_wd",
    "rhsusf_M1230_M2_usarmy_wd",
    "rhsusf_M1230_MK19_usarmy_wd",

    //Armoured
    "rhsusf_m1a1aimwd_usarmy",
    "rhsusf_m1a1aim_tuski_wd",
    "rhsusf_m1a2sep1wd_usarmy",
    "rhsusf_m1a2sep1tuskiwd_usarmy",
    "rhsusf_m1a2sep1tuskiiwd_usarmy",

	"CUP_B_M60A3_USMC",

	"CUP_B_M1130_CV_M2_Woodland",
	"CUP_B_M1130_CV_M2_Woodland_Slat",
	"CUP_B_M1128_MGS_Woodland",
	"CUP_B_M1128_MGS_Woodland_Slat",

    //Trucks
    "rhsusf_M1078A1P2_WD_fmtv_usarmy",
    "rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy",
	"rhsusf_M1084A1P2_B_WD_fmtv_usarmy",
    "rhsusf_M977A4_usarmy_wd",
	"rhsusf_M978A4_usarmy_wd",
	"rhsusf_M977A4_REPAIR_usarmy_wd",

	//Cars (trucks cause CUP)
	"CUP_B_MTVR_USMC",
	"CUP_B_MTVR_Ammo_USMC",
	"CUP_B_MTVR_Refuel_USMC",
	"CUP_B_MTVR_Repair_USMC",

    //Aircraft
    "RHS_A10",

    //Helicopters
    "RHS_AH64D_wd",
    "RHS_CH_47F",
    "RHS_UH60M",
    "RHS_UH60M2",

	//Air (helicopters)
	"CUP_B_UH1D_slick_GER_KSK_Des",
	"CUP_B_UH1D_GER_KSK_Des",
	"RHS_MELB_MH6M",

	//turrets
	"RHS_M2StaticMG_WD",
	"RHS_M2StaticMG_MiniTripod_WD",
	"RHS_Stinger_AA_pod_WD",
	"RHS_TOW_TriPod_WD",
	"RHS_MK19_TriPod_WD"

];

R3F_LOG_CF_east_objects = R3F_LOG_CFG_CF_whitelist_default_categories +
[
    //Apcs
    "rhs_btr60_vdv",
    "rhs_btr70_msv",
    "rhs_btr80_msv",
    "rhs_btr80a_msv",

    //Ifvs
    "rhs_bmp1_tv",
    "rhs_bmp1p_tv",
    "rhs_bmp2_tv",
    "rhs_bmp2d_tv",
    "rhs_brm1k_tv",
    "rhs_bmd1",
    "rhs_bmd1r",
    "rhs_bmd1p",
    "rhs_bmd2",
    "rhs_bmd2m",
    "rhs_bmd4ma_vdv",
    "rhs_bmp3mera_msv",
    "rhs_bmp3_late_msv",

    //Mrap
    "rhsgref_BRDM2_msv",
    "rhsgref_BRDM2_ATGM_msv",
    "rhsgref_BRDM2UM_msv",
    "rhsgref_BRDM2_HQ_msv",
    "rhs_tigr_vdv",
    "rhs_tigr_sts_vdv",
    "rhs_tigr_m_vdv",

    //Cars
    "rhs_uaz_vdv",
    "rhs_uaz_open_vdv",
    "LOP_SLA_UAZ_DshKM",
    "LOP_TKA_UAZ_AGS",

    //Trucks
    "rhs_gaz66_msv",
    "rhs_gaz66o_msv",
    "rhs_kamaz5350_msv",
    "rhs_kamaz5350_open_msv",
    "RHS_Ural_Zu23_VDV_01",
	"RHS_Ural_Open_Flat_MSV_01",
	"RHS_Ural_Repair_MSV_01",
	"RHS_Ural_Fuel_MSV_01",
	"rhs_gaz66_ap2_msv",
	"rhs_kamaz5350_flatbed_msv",
	"RHS_Ural_MSV_01",
	"RHS_Ural_Open_MSV_01",

    //Artillery
    "RHS_BM21_MSV_01",
    "rhs_D30_msv",
    "rhs_D30_at_msv",
    "rhs_2b14_82mm_msv",
    "rhs_sprut_vdv",

    //Armoured
    "rhs_zsu234_aa",
    "CUP_O_2S6M_RU",
    "rhs_2s3_tv",
    "rhs_t72ba_tv",
    "rhs_t72bd_tv",
    "rhs_t80",
    "rhs_t80bvk",
    "rhs_t80um",
    "rhs_t90_tv",
    "rhs_t90a_tv",
    "LOP_AFR_OPF_T34",
	"LOP_AFR_OPF_T55",

    //Helicopters
    "RHS_Mi8mt_vdv",
    "RHS_Mi8MTV3_vdv",
    "RHS_Ka52_vvsc",
    "RHS_Mi24V_vdv",
    "rhs_ka60_grey",
    "CUP_O_MI6T_RU",

	//turrets
	"rhs_Metis_9k115_2_msv",
	"rhs_Kornet_9M133_2_msv",
	"rhs_Igla_AA_pod_msv",
	"RHS_AGS30_TriPod_MSV",
	"rhs_KORD_MSV",
	"rhs_KORD_high_MSV",
	"rhsgref_ins_DSHKM",
    "rhsgref_ins_DSHKM_Mini_TriPod",
	"RHS_NSV_TriPod_MSV",
	"rhs_SPG9M_MSV",
	"RHS_ZU23_MSV"
];

R3F_LOG_CF_independent_objects = R3F_LOG_CFG_CF_whitelist_default_categories +
[
	//add classes here
];

/**
 * BLACK LIST
 * Categories of objects/vehicles to deny if no white list is set to the factory (see USER_FUNCT\init_creation_factory.sqf).
 */
R3F_LOG_CFG_CF_blacklist_categories =
[
	"Submerged",                        // Objects (Sea) (2 entries)
	"Camera",                           // Cameras (0 entries)
	"Sounds",                           // Sounds (9 entries)
	"Mines",                            // Mines (15 entries)
	"Backpacks",                        // Backpacks (157 entries)
	"Uniforms",                         // Uniforms (0 entries)
	"Anomalies",                        // Anomalies (0 entries)
	"Test",                             // TEST (0 entries)
	"Locations",                        // Locations (0 entries)
	"Modules",                          // Modules (128 entries)
	"Emitters",                         // Emitters (0 entries)
	"WeaponsPrimary",                   // Weapons (Primary) (30 entries)
	"WeaponsSecondary",                 // Weapons (Launchers) (10 entries)
	"WeaponsHandguns",                  // Weapons (Sidearms) (6 entries)
	"WeaponAccessories",                // Weapon Accessories (26 entries)
	"Magazines",                        // Magazines (0 entries)
	"Items",                            // Items (18 entries)
	"ItemsHeadgear",                    // Items (Headgear) (110 entries)
	"ItemsVests",                       // Items (Vests) (39 entries)
	"ItemsUniforms",                    // Items (Uniforms) (53 entries)
	"Intel",                            // Intel (3 entries)
	"Virtual",                          // Virtual Entities (0 entries)
	"Garbage",                          // Objects (Garbage) (15 entries)
	"Helpers",                          // Objects (Helpers) (34 entries)
	"Dead_bodies",                      // Objects (Dead bodies) (12 entries)
	"SystemLocations",                  // Locations (11 entries)
	"SystemSides",                      // Sides (3 entries)
	"SystemMisc",                       // Misc (3 entries)
	"Objects_VR",                       // Objects (Virtual Reality) (1 entries)
	"Objects_Sports",                   // Objects (Sports) (24 entries)
	"Structures_VR",                    // Structures (Virtual Reality) (10 entries)
	"Structures_Sports",                // Structures (Sports) (11 entries)
	"Explosives",                       // Explosives (0 entries)
	"Respawn",                          // Respawn (5 entries)

	// All in Arma
	"IEDs",                             // IEDs (4 entries)
	"LocationLogics",                   // Locations (14 entries)
	"Test_EP1",                          // Test EP1 (0 entries)
	"Wrecks",                           // Wrecks (19 entries)
	"Military_US_EP1",                  // Military (US) (12 entries)
	"Military_TKA_EP1",                 // Military (TKA) (12 entries)
	"Military_GUE_EP1",                 // Military (Guerillas) (12 entries)
	"SupportWoodland_ACR",              // Support (woodland) (4 entries)
	"ArmouredD",                        // Armored (desert) (1 entries)
	"ArmouredW",                        // Armored (woodland) (7 entries)
	"CarD",                             // Cars (desert) (4 entries)
	"Armored_CDF",                      // Armored (CDF) (0 entries)
	"Armored_ChDKZ",                    // Armored (Insurgency) (0 entries)
	"Armored_USMC",                     // Armored (USMC) (0 entries)
	"Armored_RU",                       // Armored (RU) (0 entries)
	"Car_USMC",                         // Cars (USMC) (0 entries)
	"Car_RU",                           // Cars (RU) (0 entries)
	"Car_ChDKZ",                        // Cars (Insurgency) (0 entries)
	"Car_CDF",                          // Cars (CDF) (0 entries)
	"Air_ChDKZ",                        // Air (Insurgency) (0 entries)
	"Air_USMC",                         // Air (USMC) (0 entries)
	"Air_RU",                           // Air (RU) (0 entries)
	"Air_CDF",                          // Air (CDF) (0 entries)
	"Ship_CDF",                         // Ship (CDF) (0 entries)
	"Ship_ChDKZ",                       // Ship (Insurgency) (0 entries)
	"Ship_USMC",                        // Ship (USMC) (0 entries)
	"Ship_RU",                          // Ship (RU) (0 entries)
	"support_ChDKZ",                    // Support (Insurgency) (0 entries)
	"support_USMC",                     // Support (USMC) (0 entries)
	"support_RU",                       // Support (RU) (0 entries)
	"support_CDF",                      // Support (CDF) (0 entries)
	"Structures_E",                     // Structures EP1 (0 entries)
	"Ruins"                             // Ruins (0 entries)
];

/**
 * CREATION COST FACTOR
 *
 * Multiplication factor to fix the CfgVehicles' "cost" property values of vehicles/objects.
 * It permits to have a better homogeneity between values.
 * For example a SDV (Submarine) has a cost (divided by 100) of 100 and a Hunter (Car) of 5000.
 * By fixing the values with factors, the SDV (Submarine) costs 100x4000 = 400.000 and the Hunter (Car) 5000x12 = 60.000.
 * The format of the array is ["categorie class name", multiplication factor].
 * All non-listed categories have a factor of 1x.
 *
 * Facteur de multiplication pour corriger la propri�t� "cost" des objets/v�hicules dans le CfgVehicles.
 * Par exemple, un sous-marins SDV (Submarine) a un co�t (divis� par 100) de 100 et un Hunter (Car) du 5000.
 * En appliquant un facteur de correction, le SDV (Submarine) vaut 100x4000 = 400 000 et le Hunter (Car) 5000x12 = 60 000.
 * Le format du tableau est ["nom de classe de la cat�gorie", facteur de multiplication]
 * Les cat�gories non list�es ont un facteur de 1x.
 */
R3F_LOG_CFG_CF_creation_cost_factor =
[
	//Building prices

    //Blufor Prices
    ["rhsusf_m113_usarmy", 1],
    ["rhsusf_m113_usarmy_M240", 1],
    ["rhsusf_m113_usarmy_MK19", 1],
    ["rhsusf_m113_usarmy_unarmed", 1],
    ["CUP_B_AAV_USMC", 1],

    ["rhsusf_m109_usarmy", 1],
    ["RHS_M119_WD", 1],
    ["RHS_M252_WD", 1],

    ["rhsusf_m1025_w_m2", 1],
    ["rhsusf_m1025_w_mk19", 1],
    ["rhsusf_m1025_w", 1],

    ["rhsusf_m998_w_2dr_fulltop", 1],
    ["rhsusf_m998_w_2dr_halftop", 1],
    ["rhsusf_m998_w_4dr", 1],

    ["CUP_B_M6LineBacker_USA_W", 1],
    ["RHS_M2A2_wd", 1],
    ["RHS_M2A2_BUSKI_WD", 1],
    ["RHS_M2A3_wd", 1],
    ["RHS_M2A3_BUSKIII_wd", 1],

    ["rhsusf_M1117_W", 1],

    ["rhsusf_M1220_usarmy_wd", 1],
    ["rhsusf_M1220_M153_M2_usarmy_wd", 1],
    ["rhsusf_M1220_M2_usarmy_wd", 1],
    ["rhsusf_M1220_MK19_usarmy_wd", 1],
    ["rhsusf_M1230_M2_usarmy_wd", 1],
    ["rhsusf_M1230_MK19_usarmy_wd", 1],

    ["rhsusf_m1a1aimwd_usarmy", 1],
    ["rhsusf_m1a1aim_tuski_wd", 1],
    ["rhsusf_m1a2sep1wd_usarmy", 1],
    ["rhsusf_m1a2sep1tuskiwd_usarmy", 1],
    ["rhsusf_m1a2sep1tuskiiwd_usarmy", 1],

	["CUP_B_M60A3_USMC", 1],
	["CUP_B_M1130_CV_M2_Woodland", 1],
	["CUP_B_M1130_CV_M2_Woodland_Slat", 1],
	["CUP_B_M1128_MGS_Woodland", 1],
	["CUP_B_M1128_MGS_Woodland_Slat", 1],

    ["rhsusf_M1078A1P2_WD_fmtv_usarmy", 1],
    ["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", 1],
	["rhsusf_M1084A1P2_B_WD_fmtv_usarmy", 1],
    ["rhsusf_M977A4_usarmy_wd", 1],
	["rhsusf_M978A4_usarmy_wd", 1],
	["rhsusf_M977A4_REPAIR_usarmy_wd", 1],

	["CUP_B_MTVR_USMC", 1],
	["CUP_B_MTVR_Ammo_USMC", 1],
	["CUP_B_MTVR_Refuel_USMC", 1],
	["CUP_B_MTVR_Repair_USMC", 1],

    ["RHS_A10", 1],
    ["RHS_AH64D_wd", 1],
    ["RHS_CH_47F", 1],
    ["RHS_UH60M", 1],
    ["RHS_UH60M2", 1],
	["RHS_MELB_MH6M", 1],

	["CUP_B_UH1D_slick_GER_KSK_Des", 1],
	["CUP_B_UH1D_GER_KSK_Des", 1],

	["RHS_M2StaticMG_WD", 1],
	["RHS_M2StaticMG_MiniTripod_WD", 1],
	["RHS_Stinger_AA_pod_WD", 1],
	["RHS_TOW_TriPod_WD", 1],
	["RHS_MK19_TriPod_WD", 1],

	//Opfor Prices
	["rhs_btr60_vdv", 1],
    ["rhs_btr70_msv", 1],
    ["rhs_btr80_msv", 1],
    ["rhs_btr80a_msv", 1],

    ["rhs_bmp1_tv", 1],
    ["rhs_bmp1p_tv", 1],
    ["rhs_bmp2_tv", 1],
    ["rhs_bmp2d_tv", 1],
    ["rhs_bmp3mera_msv", 1],
    ["rhs_bmp3_late_msv", 1],
    ["rhs_brm1k_tv", 1],

    ["rhs_bmd1", 1],
    ["rhs_bmd1r", 1],
    ["rhs_bmd1p", 1],
    ["rhs_bmd2", 1],
    ["rhs_bmd2m", 1],
    ["rhs_bmd4ma_vdv", 1],

    ["rhsgref_BRDM2_msv", 1],
    ["rhsgref_BRDM2_ATGM_msv", 1],
    ["rhsgref_BRDM2UM_msv", 1],
    ["rhsgref_BRDM2_HQ_msv", 1],

    ["rhs_tigr_vdv", 1],
    ["rhs_tigr_sts_vdv", 1],
    ["rhs_tigr_m_vdv", 1],

    ["rhs_uaz_vdv", 1],
    ["rhs_uaz_open_vdv", 1],
    ["LOP_SLA_UAZ_DshKM", 1],
    ["LOP_TKA_UAZ_AGS", 1],
    ["rhs_gaz66_msv", 1],
    ["rhs_gaz66o_msv", 1],
    ["rhs_kamaz5350_msv", 1],
    ["rhs_kamaz5350_open_msv", 1],
    ["RHS_Ural_Zu23_VDV_01", 1],
	["RHS_Ural_Open_Flat_MSV_01", 1],
	["RHS_Ural_Repair_MSV_01", 1],
	["RHS_Ural_Fuel_MSV_01", 1],
	["rhs_gaz66_ap2_msv", 1],
	["rhs_kamaz5350_flatbed_msv", 1],
	["RHS_Ural_MSV_01", 1],
	["RHS_Ural_Open_MSV_01", 1],

    ["RHS_BM21_MSV_01", 1],
    ["rhs_D30_msv", 1],
    ["rhs_D30_at_msv", 1],
    ["rhs_2b14_82mm_msv", 1],

    ["rhs_zsu234_aa", 1],
    ["CUP_O_2S6M_RU", 1],
    ["rhs_sprut_vdv", 1],
    ["rhs_2s3_tv", 1],
    ["rhs_t72ba_tv", 1],
    ["rhs_t72bd_tv", 1],
    ["rhs_t80", 1],
    ["rhs_t80bvk", 1],
    ["rhs_t80um", 1],
    ["rhs_t90_tv", 1],
    ["rhs_t90a_tv", 1],
    ["LOP_AFR_OPF_T34", 1],
	["LOP_AFR_OPF_T55", 1],

    ["RHS_Mi8mt_vdv", 1],
    ["RHS_Mi8MTV3_vdv", 1],
    ["RHS_Ka52_vvsc", 1],
    ["RHS_Mi24V_vdv", 1],
    ["rhs_ka60_grey", 1],
    ["CUP_O_MI6T_RU", 1],

	["rhs_Metis_9k115_2_msv", 1],
	["rhs_Kornet_9M133_2_msv", 1],
	["rhs_Igla_AA_pod_msv", 1],
	["RHS_AGS30_TriPod_MSV", 1],
	["rhs_KORD_MSV", 1],
	["rhs_KORD_high_MSV", 1],
	["rhsgref_ins_DSHKM", 1],
    ["rhsgref_ins_DSHKM_Mini_TriPod", 1],
	["RHS_NSV_TriPod_MSV", 1],
	["rhs_SPG9M_MSV", 1],
	["RHS_ZU23_MSV", 1]

];
