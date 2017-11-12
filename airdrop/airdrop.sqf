_dropArray = ["drop_0","drop_1","drop_2","drop_3","drop_4","drop_5","drop_6","drop_7","drop_8","drop_9","drop_10","drop_11","drop_12","drop_13","drop_14","drop_15","drop_16","drop_17","drop_18"
,"drop_19","drop_20","drop_21","drop_22","drop_23","drop_24","drop_25","drop_26"];


_dropNumber = [1,2,3,4,5,6]; //,7,8
_number = _dropNumber call bis_fnc_selectRandom;
_location = _dropArray call bis_fnc_selectRandom;
_cargo = "B_supplyCrate_F";

_box = _cargo createVehicle getMarkerpos _location;_box setPos [getMarkerPos _location select 0, getMarkerPos _location select 1, 250];[objnull, _box] call BIS_fnc_curatorobjectedited;

clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;

switch (_number) do
{
	// Tier 1 Opfor
	case 1:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_m38_rail", 1];
		_box addItemCargoGlobal ["rhs_weap_m70ab2", 2];
		_box addItemCargoGlobal ["rhs_weap_m92", 2];
		_box addItemCargoGlobal ["rhs_weap_m76", 1];

		//Ammo
		_box addItemCargoGlobal ["rhsgref_10Rnd_792x57_m76", 4]; // m76 Ammo
		_box addItemCargoGlobal ["rhsgref_5Rnd_762x54_m38", 4]; // Mosin Ammo
		_box addItemCargoGlobal ["rhs_30Rnd_762x39mm_89", 6]; //7.62 x 39mm AKM Ammo
		_box addItemCargoGlobal ["rhs_30Rnd_762x39mm_tracer", 2]; //7.62 x 39mm AKM Ammo Green Tracer

		//Uniform
		_box addItemCargoGlobal ["rhs_uniform_m88_patchless", 4]; //Beige Coverall
		_box addItemCargoGlobal ["rhs_6b5_khaki", 4]; //Afghan War Era Vest
		_box addItemCargoGlobal ["rhs_ssh68", 4]; //WW2 Soviet Helmet
	};

	// Tier 1 Blufor
	case 2:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_m16a4_carryhandle", 3];
		_box addItemCargoGlobal ["rhs_weap_m4_carryhandle", 2];
		_box addItemCargoGlobal ["rhs_weap_m14ebrri", 1];

		//Ammo
		_box addItemCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 2];
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 6]; //5.56 x 45 NATO
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 2]; //5.56 x 45 NATO Red Tracer

		//Uniform
		_box addItemCargoGlobal ["rhs_uniform_g3_m81", 4]; //M81 Woodland uniform
		_box addItemCargoGlobal ["rhsgref_otv_khaki", 4]; //Khaki OTV
		_box addItemCargoGlobal ["rhsgref_helmet_pasgt_erdl", 4]; //PASGT ERDL
	};

	// Tier 2 Opfor
	case 3:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_ak74m", 2]; //ak74M
		_box addItemCargoGlobal ["rhs_weap_ak74m_desert", 2]; //ak74M
		_box addItemCargoGlobal ["rhs_weap_ak74m_zenitco01_grip1", 1]; //AK74M Zentico
		_box addItemCargoGlobal ["rhs_weap_aks74un", 1]; //AK74UN
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
		_box addItemCargoGlobal ["rhs_acc_grip_rk2", 1]; //RK2 Grip
		_box addItemCargoGlobal ["rhs_acc_grip_ffg2", 1]; //FFG2 Grip
		_box addItemCargoGlobal ["rhs_acc_2dpZenit", 5]; //Flashlight

		//Uniform
		_box addItemCargoGlobal ["rhs_uniform_flora_patchless_alt", 4]; //Alt Flora
		_box addItemCargoGlobal ["rhs_6b23_ML_vydra_3m", 4]; //Tier 2 vest
		_box addItemCargoGlobal ["rhs_6b27m_ml", 4]; //Tier 2 Helmet
		_box addbackpackCargoGlobal ["rhs_assault_umbts", 4]; //Backpack
	};

	//Tier 2 Blufor
	case 4:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_m4a1_carryhandle", 4]; //M4A1
		_box addItemCargoGlobal ["rhs_weap_m4a1_d_mstock", 2]; //M4A1 Desert
		_box addItemCargoGlobal ["rhs_weap_m240B", 1]; //M240B
		_box addItemCargoGlobal ["rhs_weap_m24sws_blk", 1]; //M24 SWS Black
		_box addItemCargoGlobal ["rhsusf_weap_m9", 5]; //M9

		//Ammo
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10]; //5.55 x 45mm NATO Ammo
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 4]; //5.56 x 45 NATO Red Tracer
		_box addItemCargoGlobal ["rhsusf_100Rnd_762x51_m80a1epr", 3]; //7.62 x 51mm M80A1EPR M240 100 round belt
		_box addItemCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer", 1]; //7.62 x 51mm M80A1EPR M240 100 round belt
		_box addItemCargoGlobal ["rhsusf_5Rnd_762x51_m993_Mag", 8]; // 7.62 x 51mm M24 Ammo
		_box addItemCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ", 10]; // M9 Ammo

		//Accessories
		_box addItemCargoGlobal ["rhsusf_acc_LEUPOLDMK4", 1]; //Leopold MK4 3.5 - 10x
		_box addItemCargoGlobal ["rhsusf_acc_ACOG", 2]; //ACOG Optic
		_box addItemCargoGlobal ["rhsusf_acc_compm4", 1]; // CompM4 Red dot
		_box addItemCargoGlobal ["rhsusf_acc_grip3", 1]; //Vertical Grip
		_box addItemCargoGlobal ["rhsusf_acc_grip2", 2]; //AFG Grip
		_box addItemCargoGlobal ["rhsusf_acc_M952V", 5]; //Flashlight

		//Uniform
		_box addItemCargoGlobal ["rhs_uniform_cu_ucp", 4]; //UCP
		_box addItemCargoGlobal ["rhsusf_iotv_ucp_Rifleman", 4]; //IOTV UCP
		_box addItemCargoGlobal ["rhsusf_ach_helmet_ucp", 4]; //ACH UCP
		_box addbackpackCargoGlobal ["rhsusf_assault_eagleaiii_ucp", 4]; //Backpack UCP
	};

	//Tier 3 Opfor
	case 5:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_ak74mr_gp25", 2]; //AK74MR with GP25
		_box addItemCargoGlobal ["rhs_weap_ak74mr", 2]; //AK74MR
		_box addItemCargoGlobal ["rhs_weap_ak74m_zenitco01", 4]; //AK74M Zentico
		_box addItemCargoGlobal ["rhs_weap_ak105_zenitco01", 1]; //AK105 Zentico
		_box addItemCargoGlobal ["rhs_weap_asval_grip", 3]; //AS Val Grip
		_box addItemCargoGlobal ["rhs_weap_t5000", 1]; //T5000
		_box addItemCargoGlobal ["rhs_weap_pya", 2]; //MP-443 Grach

		//Ammo
		_box addItemCargoGlobal ["rhs_30Rnd_545x39_7N22_AK", 10]; //5.45 x 39mm AK74 Ammo
		_box addItemCargoGlobal ["rhs_30Rnd_545x39_AK_green", 4]; //5.45 x 39mm AK74 Ammo Green Tracer
		_box addItemCargoGlobal ["rhs_5Rnd_338lapua_t5000", 8]; // T5000 Ammo
		_box addItemCargoGlobal ["rhs_10rnd_9x39mm_SP6", 6]; // AS VAL Ammo
		_box addItemCargoGlobal ["rhs_mag_9x19_17", 4]; // MP-443 Ammo
		_box addItemCargoGlobal ["rhs_VG40MD_White", 5]; // 40mm White Smoke
		_box addItemCargoGlobal ["rhs_GDM40", 5]; // 40mm Fast White Smoke
		_box addItemCargoGlobal ["rhs_VG40OP_green", 5]; // 40mm Green Flare
		_box addItemCargoGlobal ["rhs_VOG25", 5]; // 40mm HE FRAG
		_box addItemCargoGlobal ["rhs_VOG25P", 5]; // 40mm HET Airburst

		//Accessories
		_box addItemCargoGlobal ["rhs_acc_dh520x56", 1]; //DH520x56
		_box addItemCargoGlobal ["rhs_acc_rakursPM", 2]; // CompM4 Aimpoint
		_box addItemCargoGlobal ["rhs_acc_grip_rk6", 2]; //RK6 Grip
		_box addItemCargoGlobal ["rhs_acc_npz", 4]; //NPZ rail
		_box addItemCargoGlobal ["rhs_acc_1p78", 2]; //1P78 Optic
		_box addItemCargoGlobal ["rhsusf_acc_ACOG", 1]; //ACOG Optic
		_box addItemCargoGlobal ["rhs_acc_rakursPM", 2]; // Rakurs
		_box addItemCargoGlobal ["rhs_acc_grip_rk2", 1]; //RK2 Grip
		_box addItemCargoGlobal ["rhs_acc_grip_ffg2", 1]; //FFG2 Grip
		_box addItemCargoGlobal ["rhsusf_acc_grip1", 2]; //GripPod
		_box addItemCargoGlobal ["rhs_acc_perst3_2dp_light", 3]; //Light/Laser
		_box addItemCargoGlobal ["rhs_acc_tgp", 2]; //Supressor
		_box addItemCargoGlobal ["rhs_acc_harris_swivel", 1]; //Harris Bipod

		//Uniform
		_box addItemCargoGlobal ["rhs_1PN138", 2]; //NVG
		_box addItemCargoGlobal ["rhs_uniform_emr_des_patchless", 4]; //Alt Flora
		_box addItemCargoGlobal ["rhs_6b13_EMR_6sh92_vog", 4]; //Tier 3 vest
		_box addItemCargoGlobal ["rhs_6b47", 4]; //Tier 3 Helmet
	};

	//Tier 3 Blufor
	case 6:
	{
		//Weapons
		_box addItemCargoGlobal ["rhs_weap_hk416d145_m320", 1]; //HK M416 with M320
		_box addItemCargoGlobal ["rhs_weap_hk416d145", 2]; //HK M416
		_box addItemCargoGlobal ["rhs_weap_m4a1_blockII", 3]; //M4A1 Block II
		_box addItemCargoGlobal ["rhs_weap_XM2010", 1]; //M2010
		_box addItemCargoGlobal ["rhsusf_weap_m9", 2]; //M9

		//Ammo
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10]; //5.55 x 45mm NATO Ammo
		_box addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 4]; //5.56 x 45 NATO Red Tracer
		_box addItemCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 8]; // .300 winmag M2010 Ammo
		_box addItemCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ", 4]; // M9 Ammo
		_box addItemCargoGlobal ["rhs_mag_m714_White", 5]; // 40mm White Smoke
		_box addItemCargoGlobal ["rhs_mag_m662_red", 5]; // 40mm Red Flare
		_box addItemCargoGlobal ["rhs_mag_M441_HE", 5]; // 40mm HE
		_box addItemCargoGlobal ["rhs_mag_M397_HET", 5]; // 40mm HET Airburst

		//Accessories
		_box addItemCargoGlobal ["rhsusf_acc_premier", 1]; //M8541A
		_box addItemCargoGlobal ["rhsusf_acc_ACOG", 1]; //ACOG Optic
		_box addItemCargoGlobal ["rhsusf_acc_compm4", 2]; // CompM4 Aimpoint
		_box addItemCargoGlobal ["rhsusf_acc_grip1", 2]; //GripPod
		_box addItemCargoGlobal ["rhsusf_acc_grip2", 2]; //AFG Grip
		_box addItemCargoGlobal ["rhsusf_acc_grip2_tan", 2]; //AFG Grip Tan
		_box addItemCargoGlobal ["rhsusf_acc_harris_bipod", 2]; //Harris Bipod
		_box addItemCargoGlobal ["rhsusf_acc_nt4_black", 3]; //Supressor
		_box addItemCargoGlobal ["rhsusf_acc_nt4_tan", 2]; //Supressor Tan
		_box addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light", 3]; //Light/Laser

		//Uniform
		_box addItemCargoGlobal ["rhsusf_ANPVS_14", 2]; //NVG
		_box addItemCargoGlobal ["rhs_uniform_cu_ocp", 4]; //OCP
		_box addItemCargoGlobal ["rhsusf_spcs_ocp_rifleman", 4]; //SPCS OCP
		_box addItemCargoGlobal ["rhsusf_mich_bare_norotos_arc_alt_tan", 4]; //Mich 2000 Norotos Arc
		_box addbackpackCargoGlobal ["rhsusf_assault_eagleaiii_ocp", 4]; //Backpack OCP
	};

	default
	{
		_box addItemCargoGlobal ["rhsusf_mag_7x45acp_MHP", 4]; // .45 ACP
		_box addItemCargoGlobal ["rhs_mag_9x18_8_57N181S", 4]; // 9x18 Makarov
	};
};


waitUntil {(getPosATL _box) select 2 < 2};
_signal = "SmokeShellRed" createVehicle position _box; _signal allowDamage false;

sleep 300;
deleteVehicle _box;

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

