/**
 * English and French comments
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
];

/**
 * List of class names of objects which can be towed.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_can_be_towed = R3F_LOG_CFG_can_be_towed +
[
	// e.g. : "MyTowableObjectClassName1", "MyTowableObjectClassName2"
    "RHS_M119_base",
	"rhs_D30_base"
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
    "RHS_M119_base",
	"rhs_D30_base"
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
 *
 * Liste des noms de classes des véhicules ou "objets contenant" pouvant transporter des objets.
 * Le deuxième élément des sous-tableaux est la capacité de chargement (en relation avec le coût de capacité des objets).
 */
R3F_LOG_CFG_can_transport_cargo = R3F_LOG_CFG_can_transport_cargo +
[
	// e.g. : ["MyTransporterClassName1", itsCapacity], ["MyTransporterClassName2", itsCapacity]
];

/**
 * List of class names of objects which can be loaded in transport vehicle/cargo.
 * The second element of the nested arrays is the cost capacity (in relation with the capacity of the vehicles).
 */
R3F_LOG_CFG_can_be_transported_cargo = R3F_LOG_CFG_can_be_transported_cargo +
[
    ["RHS_M2StaticMG_WD", 1],
    ["RHS_M2StaticMG_MiniTripod_WD", 1],
    ["RHS_Stinger_AA_pod_WD", 1],
    ["RHS_TOW_TriPod_WD", 1],
    ["RHS_MK19_TriPod_WD", 1],

    ["rhs_Metis_9k115_2_msv", 1],
	["rhs_Kornet_9M133_2_msv", 1],
	["rhs_Igla_AA_pod_msv", 1],
	["RHS_AGS30_TriPod_MSV", 1],
	["rhs_KORD_MSV", 1],
	["rhs_KORD_high_MSV", 1],
	["RHS_NSV_TriPod_MSV", 1],
	["rhs_SPG9M_MSV", 1],
	["RHS_ZU23_MSV", 1]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects which can be carried and moved by a player.
 */
R3F_LOG_CFG_can_be_moved_by_player = R3F_LOG_CFG_can_be_moved_by_player +
[
	// e.g. : "MyMovableObjectClassName1", "MyMovableObjectClassName2"
    "RHS_M119_base",
	"rhs_D30_base"
];
