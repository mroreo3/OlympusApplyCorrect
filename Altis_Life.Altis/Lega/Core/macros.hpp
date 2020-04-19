
#define DEBUG true

// -- Global Variables
#define DIALOG_MULTIPLIER (profileNamespace getVariable ["Lega_Dialog_Multiplier", 0.70])
#define MULTIPLIER_STRING  "* (profileNamespace getVariable ['Lega_Dialog_Multiplier', 0.70])"

// -- 3DEN Macros
#define pixelScale    0.50

#define GRID_W (pixelW * pixelGrid * pixelScale)
#define GRID_H (pixelH * pixelGrid * pixelScale)

#define CENTER_X    ((getResolution select 2) * 0.5 * pixelW)
#define CENTER_Y    ((getResolution select 3) * 0.5 * pixelH)

#define SCALE_X(UNSCALED_SIZE) ((UNSCALED_SIZE) * GRID_W)
#define SCALE_Y(UNSCALED_SIZE) ((UNSCALED_SIZE) * GRID_H)

#define COLORHEADER {1,0.5,0,1}
#define COLORBACKGROUND {0,0,0,0.7}