#include "..\..\script_macros.hpp"
/*
    File: fn_demoChargeTimerArmory.sqf
    Author: Tonic
    Edited by: Jokahghost & Izzi

    Description:
    Starts the "Demo" timer for the police.
*/
private ["_uiDisp","_time","_timer"];
disableSerialization;
"lifeTimer" cutRsc ["life_timer","PLAIN"];
_uiDisp = uiNamespace getVariable "life_timer";
_timer = _uiDisp displayCtrl 38301;
_time = time + (20 * 60); // Set the time you want before the bomb goes off 20 * 60 = 20 minutes

for "_i" from 0 to 1 step 0 do {
    if (isNull _uiDisp) then {
        "lifeTimer" cutRsc ["life_timer","PLAIN"];
        _uiDisp = uiNamespace getVariable "life_timer";
        _timer = _uiDisp displayCtrl 38301;
    };
    if (round(_time - time) < 1) exitWith {};
    if (!(fed_armory getVariable ["chargeplaced",false])) exitWith {};
    _timer ctrlSetText format ["%1",[(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
    sleep 0.08;
};
"lifeTimer" cutText["","PLAIN"];