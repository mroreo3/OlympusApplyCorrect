class Lega_RscTree
{
    x = 0;
    y = 0;
    w = 0;
    h = 0;
    type = 12;
    default = 0;
    style = 2;
    blinkingPeriod = 0;
    colorBackground[] = {0,0,0,0.2};
    sizeEx = SIZEEX_PURISTA(SIZEEX_XL) + MULTIPLIER_STRING;
    picture = "";
    colorPicture[] = {1,1,1,1};
    colorPictureSelected[] = {1,1,1,1};
    colorPictureDisabled[] = {1,1,1,1};
    colorPictureRight[] = {1,1,1,1};
    colorPictureRightSelected[] = {1,1,1,1};
    colorPictureRightDisabled[] = {1,1,1,1};
    colorPictureLeft[] = {1,1,1,1};
    colorPictureLeftSelected[] = {1,1,1,1};
    colorPictureLeftDisabled[] = {1,1,1,1};

    font = "RobotoCondensedLight";

    rowHeight = 0.0439091;
    color[] = {1, 1, 1, 1};
    colorSelect[] = {1,0.5,0,1};
    colorSelectBackground[] = {0, 0, 0, 0.5};
    colorBorder[] = {0, 0, 0, 0};
    borderSize = 0;

    colorMarked[] = {1,0.5,0,1}; // Marked item fill color (when multiselectEnabled is 1)
    colorMarkedSelected[] = {1,0.5,0,1}; // Selected item fill color (when multiselectEnabled is 1)

    colorText[] = {1,1,1,1}; // Text color
    colorSelectText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 0)
    colorMarkedText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 1)

    tooltip = "CT_TREE"; // Tooltip text
    tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
    tooltipColorText[] = {1,1,1,1}; // Tooltip text color
    tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

    multiselectEnabled = -1; // Allow selecting multiple items while holding Ctrl or Shift
    expandOnDoubleclick = 1; // Expand/collapse item upon double-click
    hiddenTexture = "\A3\ui_f\data\gui\rsccommon\rsctree\hiddenTexture_ca.paa"; // Expand icon
    expandedTexture = "\A3\ui_f\data\gui\rsccommon\rsctree\expandedTexture_ca.paa"; // Collapse icon
    maxHistoryDelay = 1; // Time since last keyboard type search to reset it

    // Scrollbar configuration
    class ScrollBar
    {
        width = 0; // width of ScrollBar
        height = 0; // height of ScrollBar
        scrollSpeed = 0.01; // scroll speed of ScrollBar
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)
        color[] = {1,1,1,1}; // Scrollbar color
    };
    colorDisabled[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
    colorArrow[] = {0,0,0,0};
};