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
player forceAddUniform "CUP_U_O_TK_Green";
player addItemToUniform "FirstAidKit";
player addVest "CUP_V_I_Carrier_Belt";
player addHeadgear "CUP_H_ChDKZ_Beret";

comment "Add weapons";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";

comment "Set identity";
player setFace "PersianHead_A3_01";
player setSpeaker "Male01PER";
