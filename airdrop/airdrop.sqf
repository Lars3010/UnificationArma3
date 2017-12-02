private ["_side", "_case"];
_dropArray = ["East","West"];

_number = _case;
_location = _side
_cargo = "B_supplyCrate_F";

_box = _cargo createVehicle getMarkerpos _location;_box setPos [getMarkerPos _location select 0, getMarkerPos _location select 1, 250];[objnull, _box] call BIS_fnc_curatorobjectedited;

clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;

_costbase = 3000;
// Calculates the amount of cash to subtract based on crate tier
if (_side == "West") then {
_cost = _costbase * (_case - 3);
} else {
_cost = _costbase * _case;
};

// Chooses the side to subtract that cash from
if (_side == "West") then {
_credits = west_factory getVariable "R3F_LOG_CF_credits";

_credits = _credits + _cost;

west_factory setVariable ["R3F_LOG_CF_credits", _credits, true];
} else {
_credits = east_factory getVariable "R3F_LOG_CF_credits";

_credits = _credits + _cost;

east_factory setVariable ["R3F_LOG_CF_credits", _credits, true];};
};

// fetches the contents of the crate
switch (_number) do
{
	// Uniform tier 3 Opfor
	case 1:
	{
		//Uniform
		_box addItemCargoGlobal ["rhs_uniform_emr_patchless", 7]; //EMR bdu's
		_box addItemCargoGlobal ["rhs_6b13_EMR_6sh92", 7]; //Flak vest with carrier rig EMR
		_box addItemCargoGlobal ["rrhs_6b27m_digi", 7]; //EMR Helmet
		_box addbackpackCargoGlobal ["B_Carryall_oli", 7]; //Backpack
		_box addItemCargoGlobal ["rhs_1PN138", 7]; //NVG
	};

	//Guns Tier 3 Opfor
	case 2:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_ak74m", 2]; //ak74M
		_box addItemCargoGlobal ["rhs_weap_ak74n", 2]; //ak74n
		_box addItemCargoGlobal ["rhs_weap_ak74m_fullplum", 1]; //AK74M Zentico
		_box addItemCargoGlobal ["rhs_weap_pkm", 1]; //PKM
		_box addItemCargoGlobal ["rhs_weap_svdp", 1]; //SVD-M
		_box addItemCargoGlobal ["rhs_weap_pya", 5]; //MP-443 Grach

		//Ammo
		_box addItemCargoGlobal ["rhs_30Rnd_545x39_7N22_AK", 10]; //5.45 x 39mm AK74 Ammo
		_box addItemCargoGlobal ["rhs_30Rnd_545x39_AK_green", 4]; //5.45 x 39mm AK74 Ammo Green Tracer
		_box addItemCargoGlobal ["rhs_100Rnd_762x54mmR_7N13", 3]; //7.62 x 54mmR 7N13 PKM 100 round belt
		_box addItemCargoGlobal ["rhs_100Rnd_762x54mmR_green", 1]; //7.62 x 54mmR PKM 100 round belt Green Tracer
		_box addItemCargoGlobal ["rhs_10Rnd_762x54mmR_7N1", 4]; // SVD Ammo
		_box addItemCargoGlobal ["rhs_mag_9x19_17", 10]; // MP-443 Ammo

		//Accessories
		_box addItemCargoGlobal ["rhs_acc_pso1m2", 1]; //PSO1M2
		_box addItemCargoGlobal ["rhs_acc_npz", 1]; //NPZ rail
		_box addItemCargoGlobal ["rhs_acc_1p78", 1]; //1P78 Optic
		_box addItemCargoGlobal ["rhs_acc_1p29", 2]; // 1P29 Optic
		_box addItemCargoGlobal ["rhs_acc_1p63", 1]; // 1P63 Red dot
		_box addItemCargoGlobal ["rhs_acc_2dpZenit", 7]; //Flashlight
	};

	//Launchers tier 3 Opfor
	case 3:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_rpg7", 2]; //RPG7V2
		_box addItemCargoGlobal ["rhs_weap_rpg26", 2]; //RPG26
		_box addItemCargoGlobal ["rhs_weap_igla", 1]; //Igla AA

		//Acc
		_box addItemCargoGlobal ["rhs_acc_pgo7v3", 2]; //PGO7V3 rpg optic

		//Ammo
		_box addItemCargoGlobal ["rhs_rpg7_PG7VL_mag", 6]; //standard rocket
		_box addItemCargoGlobal ["rhs_rpg7_OG7V_mag", 4]; //HE FRAG
		_box addItemCargoGlobal ["rhs_rpg7_PG7VR_mag", 2]; //Tandem
		_box addItemCargoGlobal ["rhs_rpg7_TBG7V_mag", 2]; //Thermobaric
		_box addItemCargoGlobal ["rhs_mag_9k38_rocket", 3]; //Igla Rocket
	};

/*****************************************************
BLUFOR
*******************************************************/
	// Uniform  tier 3 Blufor
	case 4:
	{
		//Uniform
		_box addItemCargoGlobal ["rhsgref_uniform_woodland", 7]; //M81 Woodland uniform
		_box addItemCargoGlobal ["rhsgref_otv_khaki", 7]; //Khaki OTV
		_box addItemCargoGlobal ["rhsusf_ach_helmet_M81", 7]; //ACH M81
		_box addbackpackCargoGlobal ["rhsgref_wdl_alicepack", 7]; //Backpack M81
		_box addItemCargoGlobal ["rhsusf_ANPVS_15", 7]; //NVG
	};

	//Guns Tier 2 Blufor
	case 5:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_m16a4_carryhandle", 5]; //M16A4
		_box addItemCargoGlobal ["rhs_weap_m249_pip_L_para", 1]; //M249
		_box addItemCargoGlobal ["rhs_weap_m14ebrri", 1]; //M14 ebr
		_box addItemCargoGlobal ["rhsusf_weap_m9", 5]; //M9

		//Ammo
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10]; //5.55 x 45mm NATO Ammo
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 4]; //5.56 x 45 NATO Red Tracer
		_box addItemCargoGlobal ["rhs_200rnd_556x45_M_SAW", 3]; //7.62 x 51mm M80A1EPR M240 100 round belt
		_box addItemCargoGlobal ["rhs_200rnd_556x45_T_SAW", 1]; //7.62 x 51mm M80A1EPR M240 100 round belt
		_box addItemCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 8]; // 7.62 x 51mm M24 Ammo
		_box addItemCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ", 10]; // M9 Ammo

		//Accessories
		_box addItemCargoGlobal ["rhsusf_acc_ACOG_MDO", 1]; //marksman ACOG
		_box addItemCargoGlobal ["rhsusf_acc_ACOG", 2]; //ACOG Optic
		_box addItemCargoGlobal ["rhsusf_acc_compm4", 1]; // CompM4 Red dot
		_box addItemCargoGlobal ["rhsusf_acc_grip3", 1]; //Vertical Grip
		_box addItemCargoGlobal ["rhsusf_acc_grip2", 2]; //AFG Grip
		_box addItemCargoGlobal ["rhsusf_acc_M952V", 7]; //Flashlight
		_box addItemCargoGlobal ["rhsusf_acc_harris_bipod", 1]; //bipod
	};

	//Launchers Tier 3 Blufor
	case 6:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_fgm148", 1]; //FGM148 Javelin
		_box addItemCargoGlobal ["rhs_weap_maaws", 1]; //Carl Gustav
		_box addItemCargoGlobal ["rhs_weap_m72a7", 2]; //M72A7 LAW
		_box addItemCargoGlobal ["rhs_weap_fim92", 1]; //stinger AA

		//Acc
		_box addItemCargoGlobal ["rhs_optic_maaws", 1]; //maaws optic

		//Ammo
		_box addItemCargoGlobal ["rhs_mag_maaws_HEAT", 6]; //standard HEAT
		_box addItemCargoGlobal ["rhs_mag_maaws_HEDP", 4]; //HEDP
		_box addItemCargoGlobal ["rhs_mag_maaws_HE", 2]; //HE
		_box addItemCargoGlobal ["rhs_fgm148_magazine_AT", 2]; //Javelin Rocket
		_box addItemCargoGlobal ["rhs_fim92_mag", 3]; //Stinger Rocket
	};

	default
	{
		_box addItemCargoGlobal ["ACE_VMM3", 2]; // metal detector
		_box addItemCargoGlobal ["SatchelCharge_Remote_Mag", 2]; // satchel demo charge
		_box addItemCargoGlobal ["DemoCharge_Remote_Mag", 4]; // demoblock
		_box addItemCargoGlobal ["ACE_DefusalKit", 2]; // ace defusal kit
	};
};


waitUntil {(getPosATL _box) select 2 < 2};
_signal = "SmokeShellRed" createVehicle position _box; _signal allowDamage false;

/*
Opfor Weapons:

	Standard:
	- PM Makarov
	- M38 Mosin Nagant no rail

	Tier1:
	- Bolt actions (rails)
	- Zastava M70 rifles
	- Zastava M92 carbines
	- M76 no optic

	Tier2:
	- MP443 pistol
	- AK74M (zentico) caliber rifles low magnification optics
	- AK74MU
	- PSO 1M2
	- Grips and bipods
	- SVD-M
	- PKM Machine Gun

	Tier3:
	- AK74MR (UUK)
	- SVD NPZ
	- T5000 sniper rifle with DH 5-20x56
	- AK74/105 with upgraded stocks and rails
	- Underslung Grenade Launchers
	- AS VAL / VSS Vintorez with sp6 ammo
*/

/*
Blufor Weapons

	Standard:
	- M1911A1
	- Kar98K

	Tier1:
	- Bolt actions (rails)
	- M16A4 Carryhandle
	- M4 Carryhandle
	- M14 EBR-RI

	Tier2:
	- M9 Beretta pistol
	- M4A1
	- MK4 ER/T 3.5 - 10x M3
	- Grips and bipods
	- M249 PIP solid stock
	- M24 SWS black

	Tier3:
	- M4A1 Block II
	- HK416
	- M2010 ESR black
	- M8541A1 optic
	- Underslung Grenade Launchers
	- Suppressors

*/
