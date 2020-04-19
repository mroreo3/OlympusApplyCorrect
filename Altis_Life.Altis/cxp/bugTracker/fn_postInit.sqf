/*
	##############################################################################
	File: fn_postInit.sqf
	Author: Casperento
	
	Bought On bytex.digital
	!!!You're not authorized to use this code without the author's permission!!!
	##############################################################################
*/
cxp_bt_timer = 0;
[] spawn {
	waitUntil {!(isNull (findDisplay 46))};
	(findDisplay 46) displayAddEventHandler ["KeyDown","_this call {
		if ((_this select 1) isEqualTo (getNumber(missionConfigFile >> 'Cxp_Config_BugTracker' >> 'cxp_bt_keyOpen')) && !dialog && !visibleMap && !(player getVariable ['restrained',false]) && !(animationState player isEqualTo 'Incapacitated')) then {
			if (life_action_inUse || life_is_processing) exitWith {hint localize 'STR_NOTF_Action';};
			if ((time - cxp_bt_timer) < (60 * getNumber(missionConfigFile >> ""Cxp_Config_BugTracker"" >> ""cxp_bt_delay"")) && cxp_bt_timer != 0) exitWith {hint format[(getText(missionConfigFile >> ""Cxp_Config_BugTracker"" >> ""cxp_btstr_DelayTimer"")),([((60 * getNumber(missionConfigFile >> ""Cxp_Config_BugTracker"" >> ""cxp_bt_delay"")) - (time - cxp_bt_timer)),""MM:SS""] call BIS_fnc_secondsToString)];};
			if !(createDialog 'cxp_bug_tracker_menu') exitWith {};
		};
	}"];
};
