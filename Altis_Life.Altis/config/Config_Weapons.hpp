/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*            
*
*    ARRAY FORMAT:
*        0: STRING (Classname): Item Classname
*        1: STRING (Nickname): Nickname that will appear purely in the shop dialog
*        2: SCALAR (Buy price)
*        3: SCALAR (Sell price): To disable selling, this should be -1
*        4: STRING (Conditions): Same as above conditions string
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        conditions = "license_civ_gun";
        items[] = {
            { "hgun_P07_F", "", 2000, -1, "" },
            { "hgun_Rook40_F", "", 2000, -1, "" }, //Apex DLC
            { "hgun_ACPC2_F", "", 5000, -1, "" },
            { "hgun_Pistol_heavy_01_F", "", 5000, -1, "" },
            { "hgun_Pistol_heavy_02_F", "", 5000, -1, "" }, //Apex DLC
			{ "SMG_05_F", "", 9500, -1, "" },
            { "hgun_PDW2000_F", "", 15000, -1, "" }
        };
        mags[] = {
            { "30Rnd_9x21_Mag", "", 125, -1, "" },
            { "30Rnd_9x21_Red_Mag", "", 150, -1, "" },
            { "9Rnd_45ACP_Mag", "", 200, -1, "" },
            { "11Rnd_45ACP_Mag", "", 250, -1, "" },
            { "6Rnd_45ACP_Cylinder", "", 250, -1, "" }, 
            { "30Rnd_9x21_Mag_SMG_02", "", 250, -1, "" },
			{ "30Rnd_9x21_Mag_SMG_02_Tracer_Red", "", 250, -1, "" },
			{ "16Rnd_9x21_red_Mag", "", 250, -1, "" },
			{ "16Rnd_9x21_Mag", "", 250, -1, "" }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 2500, -1, "" }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = {
            { "arifle_TRG20_F", "", 25000, 12500, "" },
            { "arifle_Katiba_F", "", 30000, 15000, "" },
            { "srifle_DMR_01_F", "", 50000, 25000, "" },
            { "arifle_SDAR_F", "", 20000, 10000, "" },
            { "arifle_AK12_F", "", 22000, 11000, "" }, //Apex DLC
            { "arifle_AKS_F", "", 22000, 11000, "" }, //Apex DLC
            { "arifle_AKM_F", "", 22000, 11000, "" }, //Apex DLC
            { "arifle_ARX_blk_F", "", 22000, 11000, "" }, //Apex DLC
            { "arifle_SPAR_01_blk_F", "", 33000, 16500, "" }, //Apex DLC
            { "arifle_CTAR_blk_F", "", 30000, 15000, "" } //Apex DLC
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 300, 150, "" },
            { "30Rnd_762x39_Mag_F", "", 300, 150, "" }, //Apex DLC
            { "30Rnd_545x39_Mag_F", "", 300, 150, "" }, //Apex DLC
            { "30Rnd_65x39_caseless_green", "", 275, 140, "" },
            { "10Rnd_762x54_Mag", "", 500, 250, "" },
            { "20Rnd_556x45_UW_mag", "", 125, 60, "" },
			{ "30Rnd_762x39_AK12_Mag_F", "", 125, 60, "" },
            { "30Rnd_580x42_Mag_F", "", 125, 60, "" } //Apex DLC=
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500, 1750, "" },
            { "optic_Holosight", "", 3600, 1800, "" },
            { "optic_Hamr", "", 7500, 3750, "" },
            { "acc_flashlight", "", 1000, 500, "" }
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        conditions = "";
        items[] = {
            { "hgun_Rook40_F", "", 1500, 750, "" },
            { "hgun_Pistol_heavy_02_F", "", 2500, 1250, "" },
            { "hgun_ACPC2_F", "", 4500, 2250, "" },
            { "hgun_PDW2000_F", "", 9500, 4750, "" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, 60, "" },
            { "6Rnd_45ACP_Cylinder", "", 150, 75, "" },
            { "9Rnd_45ACP_Mag", "", 200, 100, "" },
            { "30Rnd_9x21_Mag", "", 250, 125, "" }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 950, 475, "" }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        conditions = "";
        items[] = {
            { "Binocular", "", 150, 75, "" },
            { "ItemGPS", "", 100, 50, "" },
            { "ItemMap", "", 50, 25, "" },
            { "ItemCompass", "", 50, 25, "" },
            { "ItemWatch", "", 50, 25, "" },
            { "FirstAidKit", "", 150, 75, "" },
            { "NVGoggles", "", 2000, 1000, "" },
            { "Chemlight_red", "", 300, 150, "" },
            { "Chemlight_yellow", "", 300, 150, "" },
            { "Chemlight_green", "", 300, 150, "" },
            { "Chemlight_blue", "", 300, 150, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        conditions = "";
        items[] = {
            { "Binocular", "", 750, 75, "" },
            { "ItemGPS", "", 500, 50, "" },
            { "ItemMap", "", 250, 25, "" },
            { "ItemCompass", "", 250, 25, "" },
            { "ItemWatch", "", 250, 25, "" },
            { "FirstAidKit", "", 750, 75, "" },
            { "NVGoggles", "", 10000, 1000, "" },
            { "Chemlight_red", "", 1500, 150, "" },
            { "Chemlight_yellow", "", 1500, 150, "" },
            { "Chemlight_green", "", 1500, 150, "" },
            { "Chemlight_blue", "", 1500, 150, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        conditions = "";
        items[] = {
            { "Binocular", "", 150, 75, "" },
            { "ItemGPS", "", 100, 50, "" },
            { "FirstAidKit", "", 150, 75, "" },
            { "NVGoggles", "", 2000, 1000, "" },
            { "HandGrenade_Stone", $STR_W_items_Flashbang, 1700, 850, "call life_coplevel >= 2" },
            { "hgun_P07_F", "", 7500, 3750, "call life_coplevel >= 1" },
			{ "SMG_02_F", "", 7500, 3750, "call life_coplevel >= 1" },
			{ "arifle_SPAR_01_blk_F", "", 7500, 3750, "call life_coplevel >= 2" },
			{ "arifle_MX_Black_F", "", 7500, 3750, "call life_coplevel >= 3" },
			{ "hgun_ACPC2_F", "", 7500, 3750, "call life_coplevel >= 4" },
			{ "arifle_ARX_blk_F", "", 7500, 3750, "call life_coplevel >= 4" },
			{ "arifle_SPAR_03_blk_F", "", 7500, 3750, "call life_coplevel >= 5" },
			{ "launch_MRAWS_olive_F", "", 117500, 3750, "call life_coplevel >= 5" },
			{ "srifle_DMR_01_F", "", 7500, 3750, "call life_coplevel >= 6" },
			{ "arifle_AK12_F", "", 7500, 3750, "call life_coplevel >= 7" },
			{"arifle_MXM_Black_F", "", 7500, 3750, "call life_coplevel >= 7" }
			
			
        };
        mags[] = {
            { "30Rnd_9x21_Red_Mag", "", 130, 65, "call life_coplevel >= 1" },
            { "30Rnd_9x21_Mag_SMG_02_Tracer_Red", "", 130, 65, "call life_coplevel >= 1" },
            { "30Rnd_556x45_Stanag_Tracer_Red", "", 250, 125, "call life_coplevel >= 2" },
            { "30Rnd_65x39_caseless_black_mag", "", 200, 100, "call life_coplevel >= 3" },
			{ "100Rnd_65x39_caseless_black_mag", "", 200, 100, "call life_coplevel >= 4" },
			{ "9Rnd_45ACP_Mag", "", 130, 65, "call life_coplevel >= 4" },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "", 130, 65, "call life_coplevel >= 4" },
			{ "20Rnd_762x51_Mag", "", 130, 65, "call life_coplevel >= 5" },
			{ "MRAWS_HE_F", "", 10030, 65, "call life_coplevel >= 5" },
			{ "10Rnd_762x54_Mag", "", 130, 65, "call life_coplevel >= 6" },
            { "30Rnd_762x39_AK12_Mag_F", "", 200, 100, "call life_coplevel >= 7" },
			{ "100Rnd_65x39_caseless_mag", "", 200, 100, "call life_coplevel >= 7" }
	
        };
        accs[] = {
            { "optic_MRD", "", 2750, 1375, "call life_coplevel >= 1" },
			{ "optic_Aco", "", 2750, 1375, "call life_coplevel >= 1" },
            { "acc_flashlight", "", 750, 375, "call life_coplevel >= 2" },
            { "optic_Holosight", "", 1200, 600, "call life_coplevel >= 2" },
            { "optic_MRCO", "", 2500, 1250, "call life_coplevel >= 2" },
			{ "optic_Arco", "", 2500, 1250, "call life_coplevel >= 2" },
			{ "acc_pointer_IR", "", 2500, 1250, "call life_coplevel >= 2" },
			{ "optic_DMS", "", 2500, 1250, "call life_coplevel >= 6" },
			{ "muzzle_snds_B", "", 2500, 1250, "call life_coplevel >= 7" }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 100, 50, "" },
            { "Binocular", "", 150, 75, "" },
			{ "Rangefinder", "", 150, 75, "" },
            { "FirstAidKit", "", 150, 75, "" },
            { "NVGoggles", "", 1200, 600, "" },
			{ "Medikit", "", 150, 75, "" }
        };
        mags[] = {};
        accs[] = {};
    };
};
