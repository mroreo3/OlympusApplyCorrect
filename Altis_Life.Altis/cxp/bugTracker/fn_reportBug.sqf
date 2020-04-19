/*
	##############################################################################
	File: fn_reportBug.sqf
	Author: Casperento
	
	Bought On bytex.digital
	!!!You're not authorized to use this code without the author's permission!!!
	##############################################################################
*/
disableSerialization;
private _cfg = missionConfigFile >> "Cxp_Config_BugTracker";
private _bugTxt = ctrlText ((findDisplay 717273) displayCtrl 7302);
private _behavTxt = ctrlText ((findDisplay 717273) displayCtrl 7301);

if ((_bugTxt isEqualTo "") || (_behavTxt isEqualTo "")) exitWith {closeDialog 0;hint (getText(_cfg >> "cxp_btstr_emptyStr"));};

private _allowedChar = toArray(getText(_cfg >> "cxp_bt_allowedChar"));
private _allowedLen = getNumber(_cfg >> "cxp_bt_lenChar");
private _buglen = count(toArray(_bugTxt));
private _behavelen = count(toArray(_behavTxt));
private _bugbyteChar = toArray(_bugTxt);
private _behavebyteChar = toArray(_behavTxt);
private _badChar = false;

if (_buglen > _allowedLen || _behavelen > _allowedLen) exitWith {hint format [(getText(_cfg >> "cxp_btstr_CharLen")),_allowedLen];};
{if !(_x in _allowedChar) exitWith {_badChar = true;};} forEach _bugbyteChar;
if !(_badChar) then {{if !(_x in _allowedChar) exitWith {_badChar = true;};} forEach _behavebyteChar;};
if (_badChar) exitWith {hint (getText(_cfg >> "cxp_btstr_UnsuppChar"))};

[(getPlayerUID player),profileName,_bugTxt,_behavTxt,player] remoteExecCall ["cxpbt_fnc_saveBugReported",2];