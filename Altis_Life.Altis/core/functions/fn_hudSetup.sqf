#include "..\..\script_macros.hpp"
/*
    File: fn_hudSetup.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Setups the hud for the player?
*/
disableSerialization;

[] call lega_fnc_hud_setup;

[] spawn
{
    for "_i" from 0 to 1 step 0 do 
    {
        uiSleep 0.5;
        [] call lega_fnc_hud_update;
    };
};
