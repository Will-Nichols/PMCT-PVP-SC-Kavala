//medic.sqf
_unit = player;

//remove existing items
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;
removeAllWeapons _unit;
sleep 0.1;

//add uniform
_unit forceAddUniform "TFA_green";
_unit addVest "TFA_PlateCarrierH_Grn";
_unit addHeadgear "TFA_Mich_Green";
_unit addBackpack "TFA_assault_grn";
_unit addGoggles "T_HoodTanCLR";

//add common items
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles";
_unit linkItem "tf_anprc152";
_unit addItemToVest "ACE_MapTools";

//add binoculars
_unit addWeapon "Binocular";

//add items
_unit addItemToVest "ACE_EarPlugs";
_unit addItemToVest "ACE_microDAGR";
//add primary mags
_unit addItemToVest "CUP_30Rnd_545x39_AK_M";
//add weapons
_unit addWeapon "CUP_arifle_AK107";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "FHQ_optic_AIM";

//add medical supplies
if (ace_medical_level == 1) then {
for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 7 do {_unit addItemToVest "ACE_fieldDressing";};
};
if (ace_medical_level == 2) then {
for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 7 do {_unit addItemToVest "ACE_quikclot";};
};
for "_i" from 1 to 5 do {_unit addItemToVest "ACE_morphine";};
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_epinephrine";};
//extra supplies for medic
if (ace_medical_level == 1) then {
for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "SmokeShell";};
};
if (ace_medical_level == 2) then {
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_bloodIV_250";};
_unit addItemToBackpack "ACE_bloodIV_500";
_unit addItemToBackpack "ACE_personalAidKit";
};
//add ammo
for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellRed";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 9 do {_unit addItemToVest "CUP_30Rnd_545x39_AK_M";};

_unit setSpeaker "ACE_NoVoice";