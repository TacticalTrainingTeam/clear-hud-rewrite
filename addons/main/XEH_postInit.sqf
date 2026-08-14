#include "script_component.hpp"
#include "\a3\ui_f\hpp\defineDIKCodes.inc"

if (!hasInterface) exitWith {};

//initiate the cba keybind
private _keybind = [
    ELSTRING(main,name),
    QGVAR(toggleChat),
    [LSTRING(chatKeybindName),LSTRING(chatKeybindTooltip)],
    { _this call FUNC(toggleChat) },
    "",
    [DIK_COMMA, [true, false, false]]
] call CBA_fnc_addKeybind;

if (isMultiplayer) then {
    [
        {
            // Wait until the chat display exists
            (!isNull (findDisplay 24))
        },
        {
            //Disable Chat and Display Hint
            showChat false;

            private _activated = parseText LLSTRING(chatDisabled);
            [
                formatText [LLSTRING(hintDefault), _activated]
            ] call ace_common_fnc_displayTextStructured;
        }
    ] call CBA_fnc_waitUntilAndExecute;
};
