class Cxp_Config_BugTracker {
	//Backend Variables
	cxp_bt_keyOpen = 63; // Key that opens the main menu [DEFAULT: F5] ... Check out: https://community.bistudio.com/wiki/DIK_KeyCodes
	cxp_bt_allowedChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789,.-+*&@$!#();çÇ/\| "; // Allowed characters
	cxp_bt_lenChar = 512; // Number of characters the strings should have
	cxp_bt_delay = 3; // Time in minutes to wait for the next report [DEFAULT: 3min]
	
	//User Interface Strings
	cxp_btstr_emptyStr = "You need to type something first!";
	cxp_btstr_CharLen = "Character limit reached: %1";
	cxp_btstr_UnsuppChar = "Invalid character typed...";
	cxp_btstr_DelayTimer = "You must wait %1min to report something again...";
	cxp_btstr_Thx = "We thank you for your help and we will fix this bug as faster as we can!";
	cxp_btstr_tryAgainLater = "Try again later...";
	
	//Put your license key here	
	license = "de43d878-03ab-443d-81de-03cd9bdd2008:nm82dl8zugrsxtlom8cu";// REMEMBER: don't share your license key or you'll be blocked from our system !!!
};
