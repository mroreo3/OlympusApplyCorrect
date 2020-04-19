/*
    File: init.sqf
    Author: 
    
    Description:
    
*/
StartProgress = false;

if (hasInterface) then {
    [] execVM "briefing.sqf"; //Load Briefing
};
[] execVM "KRON_Strings.sqf";

StartProgress = true;


#include "lega\core\macros.hpp"


#define DIALOG_MULTIPLIER (profileNamespace getVariable ["Lega_Dialog_Multiplier", 0.70])
#define MULTIPLIER_STRING  "* (profileNamespace getVariable ['Lega_Dialog_Multiplier', 0.70])"

#define pixelScale    0.50

#define GRID_W (pixelW * pixelGrid * pixelScale)
#define GRID_H (pixelH * pixelGrid * pixelScale)

#define CENTER_X    ((getResolution select 2) * 0.5 * pixelW)
#define CENTER_Y    ((getResolution select 3) * 0.5 * pixelH)

#define DIALOG_H ((150 / 4.5) * DIALOG_MULTIPLIER)
#define DIALOG_W ((255 / 4.5) * DIALOG_MULTIPLIER)
#define DIALOG_M 0    

#define BOTTOM_RIGHT
#include "lega\core\ui_macros.h"
#undef BOTTOM_RIGHT

#define REL_W(SCALER) SCALE_X(DIALOG_W * (SCALER / (255 / 4.5)))
#define REL_X(SCALER) RELATIVE_X(DIALOG_W * (SCALER / (255 / 4.5)))

#define REL_H(SCALER) SCALE_Y(DIALOG_H * (SCALER / (150 / 4.5)))
#define REL_Y(SCALER) RELATIVE_Y(DIALOG_H * (SCALER / (150 / 4.5)))

lega_fnc_hud_setup =
{
	if (isNull (uiNamespace getVariable ["lega_hud", displayNull])) then 
	{
		"lega_hud_layer" cutRsc ["lega_hud", "PLAIN"];
		lega_hud_elements = [];
	};

	private _display = (uiNamespace getVariable ["lega_hud", displayNull]);
	private _background = _display ctrlCreate ["RscStructuredText", -1];

	_background ctrlSetPosition [
		REL_X(0),
		REL_Y(0),
		REL_W(0 + (250 / 4.5)),
		REL_H(0 + (40 / 4.5))
	];

	_background ctrlCommit 0;
	_background ctrlSetBackgroundColor [1,1,1,1];

	private _spacer_y = REL_Y(0 + (5 / 4.5));
	private _spacer_x = REL_X(0 + (5 / 4.5));
	private _cur_y = (_spacer_y) - ((REL_H(0 + (30 / 4.5))) * ((count (getArray (missionConfigFile >> "lega_hud" >> "hud_options")))));
	private _total_height = REL_H(0 + (0 / 4.5));

	(getArray (missionConfigFile >> "lega_hud" >> "hud_options")) apply 
	{
		_x params [
			["_data", [], [[]]],
			["_type", "", [""]]
		];
		
		_data params [
			["_image", "", [""]],
			["_data", "", [""]],
			["_extra_text", "", [""]]
		];

		private _x_position = _spacer_x;
		private _data_width = REL_W(0 + (240 / 4.5));

		if !(_image isEqualTo "") then
		{
			_image_ctrl = _display ctrlCreate ["RscPictureKeepAspect", -1];
			_image_ctrl ctrlSetPosition [_spacer_x, _cur_y, REL_W(0 + (30 / 4.5)), REL_H(0 + (30 / 4.5))];
			_image_ctrl ctrlCommit 0;
			_image_ctrl ctrlSetText _image;
			//_image_ctrl ctrlSetTextColor [(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843]), (profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019]), (profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862]), (profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])];
			_x_position = _x_position + REL_W(0 + (35 / 4.5));
			_data_width = _data_width - REL_W(0 + (35 / 4.5));
		};	

		switch (_type) do 
		{
			case "progress" : 
			{
				_ctrl = _display ctrlCreate ["RscProgress", -1];
				_ctrl ctrlSetBackgroundColor [(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843]), (profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019]), (profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862]), (profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])];	
				_ctrl ctrlSetPosition [_x_position, _cur_y, _data_width, REL_H(0 + (30 / 4.5))];
				_ctrl ctrlCommit 0;

				private _progress = ((call compile _data) / 100);
				_ctrl progressSetPosition _progress;

				lega_hud_elements pushBack [_ctrl, _data, _type];
			};
			case "text" : 
			{
				_ctrl = _display ctrlCreate ["Lega_RscStructuredText", -1];
				_ctrl ctrlSetPosition [_x_position, _cur_y, _data_width, REL_H(0 + (30 / 4.5))];
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetStructuredText parseText format ["<t shadow='0' font='RobotoCondensedLight' size='1.7'>%1</t>", (call compile _data)];

				lega_hud_elements pushBack [_ctrl, _data, _type];
			};
 		};

		if !(_extra_text isEqualTo "") then 
		{	
			_extra = _display ctrlCreate ["Lega_RscStructuredText", -1];
			_extra ctrlSetPosition [_x_position, _cur_y, _data_width, REL_H(0 + (30 / 4.5))];
			_extra ctrlCommit 0;
			_extra ctrlSetStructuredText parseText format ["<t shadow='0' font='RobotoCondensedLight' size='1.7'>%1</t>", (call compile _extra_text)];
			lega_hud_elements pushBack [_extra, _extra_text, "text"];
		};


		_cur_y = _cur_y + REL_H(0 + (35 / 4.5));
		_total_height = _total_height + REL_H(0 + (35 / 4.5));;
	};

	_total_height = _total_height + REL_H(0 + (5 / 4.5));;
	_background ctrlSetPosition [
		REL_X(0),
		((REL_Y(0))) - ((REL_H(0 + (30 / 4.5))) * ((count (getArray (missionConfigFile >> "lega_hud" >> "hud_options"))))),
		REL_W(0 + (250 / 4.5)),
		_total_height
	];
	
	_background ctrlCommit 0;
	_background ctrlSetBackgroundColor [0.4,0.4,0.4,0.8];
};


lega_fnc_hud_update = 
{
	lega_hud_elements apply 
	{
		_x params [
			["_control", controlNull, [controlNull]],
			["_data", "", [""]],
			["_type", "", [""]]
		];

		switch (_type) do 
		{
			case "progress" : 
			{
				_control progressSetPosition ((call compile _data) / 100);
			};
			case "text" : 
			{
				_control ctrlSetStructuredText parseText format ["<t shadow='0' font='RobotoCondensedLight' size='1.7'>%1</t>", (call compile _data)];
			};
		};
	};
};


if (isServer) then 
{
	lega_fnc_fetchBounty = 	
	{
		params ["_unit"]; 
		private _res = [format ["SELECT wantedBounty FROM wanted WHERE active='1' AND wantedID='%1'", (getPlayerUID _unit)], 2] call db_fnc_asyncCall; 
		diag_log _res;

		if !(_res isEqualTo []) then  
		{ 
			_unit setVariable ["lega_wanted_bounty", (_res # 0), true]; 
		} else  
		{ 
			_unit setVariable ["lega_wanted_bounty", 0, true]; 
		}; 
	};
};



