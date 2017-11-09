/**
 * English and French comments
 * Commentaires anglais et français
 *
 * This file is a template to add objetcs from an addon in the configuration variables of the logistics system.
 * Make a copy of this file and fill it. Then add a #include to this file in the file R3F_LOG\config.sqf.
 *
 * IMPORTANT NOTE : when a logistics feature is given to an object/vehicle class name, all the classes which inherit
 *                  of the parent/generic class (according to the CfgVehicles) will also have this feature.
 *                  CfgVehicles tree view example : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 */

/**
 * List of class names of ground vehicles which can tow objects.
 * Liste des noms de classes des véhicules terrestres pouvant remorquer des objets.
 */
R3F_LOG_CFG_can_tow = R3F_LOG_CFG_can_tow +
[
	// e.g. : "MyTowingVehicleClassName1", "MyTowingVehicleClassName2"
    //Apcs
	"rhsusf_m113_usarmy",
    "rhsusf_m113_usarmy_M240",
    "rhsusf_m113_usarmy_MK19",
    "rhsusf_m113_usarmy_unarmed",
    "rhsusf_m109_usarmy",

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

    //Trucks
    "rhsusf_M1078A1P2_WD_fmtv_usarmy",
    "rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy",
    "rhsusf_M977A4_usarmy_wd",
	"rhsusf_M978A4_usarmy_wd",
	"rhsusf_M977A4_REPAIR_usarmy_wd",

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
    "rhs_2s3_tv",
    "rhs_t72ba_tv",
    "rhs_t72bd_tv",
    "rhs_t80",
    "rhs_t80bvk",
    "rhs_t80um",
    "rhs_t90_tv",
    "rhs_t90a_tv",
    "LOP_AFR_OPF_T34",
	"LOP_AFR_OPF_T55"
];

/**
 * List of class names of objects which can be towed.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_can_be_towed = R3F_LOG_CFG_can_be_towed +
[
	// e.g. : "MyTowableObjectClassName1", "MyTowableObjectClassName2"
	//Apcs
	"rhsusf_m113_usarmy",
    "rhsusf_m113_usarmy_M240",
    "rhsusf_m113_usarmy_MK19",
    "rhsusf_m113_usarmy_unarmed",
    "rhsusf_m109_usarmy",

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

    //Trucks
    "rhsusf_M1078A1P2_WD_fmtv_usarmy",
    "rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy",
    "rhsusf_M977A4_usarmy_wd",
	"rhsusf_M978A4_usarmy_wd",
	"rhsusf_M977A4_REPAIR_usarmy_wd",

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
    "rhs_2s3_tv",
    "rhs_t72ba_tv",
    "rhs_t72bd_tv",
    "rhs_t80",
    "rhs_t80bvk",
    "rhs_t80um",
    "rhs_t90_tv",
    "rhs_t90a_tv",
    "LOP_AFR_OPF_T34",
	"LOP_AFR_OPF_T55"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of helicopters which can lift objects.
 * Liste des noms de classes des hélicoptères pouvant héliporter des objets.
 */
R3F_LOG_CFG_can_lift = R3F_LOG_CFG_can_lift +
[
	// e.g. : "MyLifterVehicleClassName1", "MyLifterVehicleClassName2"
];

/**
 * List of class names of objects which can be lifted.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_can_be_lifted = R3F_LOG_CFG_can_be_lifted +
[
	// e.g. : "MyLiftableObjectClassName1", "MyLiftableObjectClassName2"
	"rhs_2s3_tv"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section uses a numeric quantification of capacity and cost of the objets.
 * For example, in a vehicle has a capacity of 100, we will be able to load in 5 objects costing 20 capacity units.
 * The capacity doesn't represent a real volume or weight, but a choice made for gameplay.
 *
 * Note : the priority of a declaration of cost/capacity to another one corresponds to the inverse order in the tables.
 *   It means that the most generic classes should be listed before the less generic classes.
 *   For example : the "Truck_F" class is a child of the "Car_F" class (see http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html).
 *   If "Car_F" is declared before "Truck_F" with a capacity of 40, and "Truck_F" is declared after with a capacity of 140,
 *   Then all the child classes of "Truck_F" will have a capacity of 140.
 *   And all the derived classes of "Car_F", not in "Truck_F", will have a capacity of 40.
 */

/**
 * List of class names of vehicles or cargo objects which can transport objects.
 * The second element of the nested arrays is the load capacity (in relation with the capacity cost of the objects).
 */
R3F_LOG_CFG_can_transport_cargo = R3F_LOG_CFG_can_transport_cargo +
[
	// e.g. : ["MyTransporterClassName1", itsCapacity], ["MyTransporterClassName2", itsCapacity]
    //Blufor vehicles
    ["rhsusf_m113_usarmy", 1],
    ["rhsusf_m113_usarmy_M240", 1],
    ["rhsusf_m113_usarmy_MK19", 1],
    ["rhsusf_m113_usarmy_unarmed", 5],

    ["rhsusf_m109_usarmy", 1],
    ["RHS_M119_WD", 1],
    ["RHS_M252_WD", 1],

    ["rhsusf_m1025_w_m2", 1],
    ["rhsusf_m1025_w_mk19", 1],
    ["rhsusf_m1025_w", 1],

    ["rhsusf_m998_w_2dr_fulltop", 1],
    ["rhsusf_m998_w_2dr_halftop", 1],
    ["rhsusf_m998_w_4dr", 1],

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

    ["rhsusf_M1078A1P2_WD_fmtv_usarmy", 1],
    ["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", 1],
    ["rhsusf_M977A4_usarmy_wd", 1],
	["rhsusf_M978A4_usarmy_wd", 1],
	["rhsusf_M977A4_REPAIR_usarmy_wd", 1],

	//Opfor vehicles
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

    ["rhs_zsu234_aa", 1],
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
	["LOP_AFR_OPF_T55", 1]
];

/**
 * List of class names of objects which can be loaded in transport vehicle/cargo.
 * The second element of the nested arrays is the cost capacity (in relation with the capacity of the vehicles).
 */
R3F_LOG_CFG_can_be_transported_cargo = R3F_LOG_CFG_can_be_transported_cargo +
[
	// e.g. : ["MyTransportableObjectClassName1", itsCost], ["MyTransportableObjectClassName2", itsCost]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects which can be carried and moved by a player.
 */
R3F_LOG_CFG_can_be_moved_by_player = R3F_LOG_CFG_can_be_moved_by_player +
[
	// e.g. : "MyMovableObjectClassName1", "MyMovableObjectClassName2"
];
