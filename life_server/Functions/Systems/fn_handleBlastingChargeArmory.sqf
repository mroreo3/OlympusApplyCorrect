/*
    File: fn_blastingChargeArmory.sqf
    Author: Tonic, Izzi & Jokahghost

    Description:
    Handles fed explosion and spawns loot when successful.
*/
private ["_bomb","_time"];
_marker = getMarkerPos "federal_armory"; //Creates a marker indicating that the robbery is still active
createMarker ["Markerarm", _marker];
"Markerarm" setMarkerColor "ColorRed";
"Markerarm" setMarkerText "!! Active Robbery !!";
"Markerarm" setMarkerType "Mil_dot";
createMarker ["Markerarmc", _marker];
"Markerarmc" setMarkerColor "ColorRed";
"Markerarmc" setMarkerShape "Ellipse";
"Markerarmc" setMarkerSize [600,600]; // the size of the KOS zone
_time = time + (20 * 60); //Set this as the same time you set in demoChargeTimerArmory.sqf
waitUntil{(round(_time - time) < 1)};
sleep 0.9;
if (!(fed_armory getVariable["chargeplaced",false])) exitWith {{deleteMarker "Markerarm";deleteMarker "Markerarmc";} forEach allPlayers;};

_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL fed_armory select 0, getPosATL fed_armory select 1, (getPosATL fed_armory select 2)+0.5];
fed_armory setVariable ["chargeplaced",false,true];
fed_armory setVariable ["safe_open",true,true];
fed_armory setVariable ["locked",false,true];
fed_armory setVariable ["robbed",true,true];

clearWeaponCargoGlobal fed_armory;
clearMagazineCargoGlobal fed_armory;
clearItemCargoGlobal fed_armory;
clearBackpackCargoGlobal fed_armory;

sleep 0.3;

_var=floor(random 6);
if (_var==0) then {fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 2]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 20]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 20];};
if (_var==1) then {fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addMagazineCargoGlobal ["Titan_AA", 4]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 20]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 20];};
if (_var==2) then {fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 2]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 2]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 2]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 20]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 6]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 20]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 6]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 20];};
if (_var==3) then {fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 15]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 2]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 2]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 15]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 10]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 10]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 10];};
if (_var==4) then {fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 2]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 2]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 10]; fed_armory addMagazineCargoGlobal ["arifle_AK12_F", 10];};
if (_var==5) then {fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 10]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 5]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1]; fed_armory addWeaponCargoGlobal ["arifle_AK12_F", 1];};
sleep 300; //Waits 5 minutes after the bomb has exploded assuming the robbers have already gotten what they came for

{
	deleteMarker "Markerarm";
	deleteMarker "Markerarmc";
} forEach allPlayers;

sleep 600; //waits another 10 minutes before everything in the vault gets cleared
clearWeaponCargoGlobal fed_armory;
clearMagazineCargoGlobal fed_armory;
clearItemCargoGlobal fed_armory;
clearBackpackCargoGlobal fed_armory;

fed_armory setVariable ["chargeplaced",false,true];
fed_armory setVariable ["safe_open",false,true];
fed_armory setVariable ["locked",true,true];

_marker = getMarkerPos "federal_armory"; //This is used to indicate that the armory has recently been robbed and can't be robbed again for some time
createMarker ["Markerarms", _marker];
"Markerarms" setMarkerColor "ColorOrange";
"Markerarms" setMarkerText "Elevated Security";
"Markerarms" setMarkerType "Mil_dot";
createMarker ["Markerarmsc", _marker];
"Markerarmsc" setMarkerColor "ColorOrange";
"Markerarmsc" setMarkerShape "Ellipse";
"Markerarmsc" setMarkerSize [600,600];

sleep 3600; //waits an hour before it can be robbed again
{
	deleteMarker "Markerarms";
	deleteMarker "Markerarmsc";
} forEach allPlayers;
fed_armory setVariable ["robbed",false,true];