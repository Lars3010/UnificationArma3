comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "LOP_U_PMC_Fatigue_03";
player addItemToUniform "FirstAidKit";
player addVest "CUP_V_B_GER_Carrier_Rig_2_Brown";
player addHeadgear "H_Cap_oli_hs";

comment "Add weapons";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";

comment "Set identity";
player setFace "WhiteHead_16";
player setSpeaker "Male11ENG";
