/*
	##############################################################################
	File: fn_completeBugTracking.sqf
	Author: Casperento
	
	Bought On bytex.digital
	!!!You're not authorized to use this code without the author's permission!!!
	##############################################################################
*/
params ["_result"];
if !(_result in ["sucess","fail"]) exitWith {life_action_inUse = false;};
if (_result isEqualTo "sucess") exitWith {
	closeDialog 0;
	life_action_inUse = false;
	cxp_bt_timer = time;
	hint (getText(missionConfigFile >> "Cxp_Config_BugTracker" >> "cxp_btstr_Thx"));
	[] call SOCK_fnc_updateRequest;
};
if (_result isEqualTo "fail") exitWith {
	closeDialog 0;
	life_action_inUse = false;
	hint (getText(missionConfigFile >> "Cxp_Config_BugTracker" >> "cxp_btstr_tryAgainLater"));
	[] call SOCK_fnc_updateRequest;
};
