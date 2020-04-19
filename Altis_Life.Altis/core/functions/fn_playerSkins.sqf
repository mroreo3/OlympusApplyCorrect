#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private ["_skinName"];

switch (playerSide) do {
    case civilian: {
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_C_Poloshirt_blue") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_1.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_burgundy") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_2.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_stripped") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_3.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_tricolour") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_4.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_salmon") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_5.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_6.jpg"];
            };
            if (uniform player isEqualTo "U_C_Commoner1_1") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_7.jpg"];
            };
        };
    };

    case west: {

		if ((FETCH_CONST(life_coplevel) >= 1) && ((uniform player) == "U_Rangemaster")) then {
			player setObjectTextureGlobal [0, "textures\Cop\Clothing\cop_uniform_1.jpg"];
			};
			
		if ((FETCH_CONST(life_coplevel) >= 2) && ((uniform player) == "U_Rangemaster")) then {
			player setObjectTextureGlobal [0, "textures\Cop\Clothing\cop_uniform_2.jpg"];
			};
		if ((FETCH_CONST(life_coplevel) >= 3) && ((uniform player) == "U_B_GEN_Commander_F")) then {
			player setObjectTextureGlobal [0, "textures\Cop\Clothing\cop_uniform_3.jpg"];
			};
	
		
		//Invis Backpack
		if (backpack player != "") then {
            unitBackpack player setObjectTextureGlobal [0, ""];
		};
    };

    case independent: {
		if ((FETCH_CONST(life_mediclevel) >= 1) && ((uniform player) == "U_Rangemaster")) then {
			player setObjectTextureGlobal [0, "textures\Medic\Clothing\EMT_1.jpg"];
		};
		if ((FETCH_CONST(life_mediclevel) >= 3) && ((uniform player) == "U_O_PilotCoveralls")) then {
			player setObjectTextureGlobal [0, "textures\Medic\Clothing\medic_uniform2.jpg"];
		};
		
		
		
		//Invis Backpack
		if (backpack player != "") then {
            unitBackpack player setObjectTextureGlobal [0, ""];
		};
    };
};
