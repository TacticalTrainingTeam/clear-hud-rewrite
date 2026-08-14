#include "..\script_component.hpp"
#include "\a3\ui_f\hpp\defineDIKCodes.inc"

/*
 * Authors: Soldia, Andx
 * Toggles chat visibility
 *
 * Arguments:
 * 0: Display <DISPLAY> (unused)
 * 1: DIK code <NUMBER>
 * 2: Shift pressed <BOOLEAN>
 * 3: Ctrl pressed <BOOLEAN>
 * 4: Alt pressed <BOOLEAN>
 *
 * Return Value:
 * Status <BOOLEAN>
 *
 * Example:
 * [] call chr_main_fnc_toggleChat
 *
 * Public: No
 */

TRACE_1("fnc_toggleChat",_this);

params ["", "_dikCode", "_shift", "_ctrl", "_alt"];

private _activated = "";

if (shownChat) then {
    _activated = parseText LLSTRING(chatDisabled);
    showChat false;
} else {
    _activated = parseText LLSTRING(chatEnabled);
    showChat true;
};

//translate the DIK code and modifiers into the readable keybind name
private _keyName = [_dikCode, [_shift, _ctrl, _alt]] call CBA_fnc_localizeKey;
private _keybind = parseText format ["<t color='#FFA54F'>%1</t>", _keyName];

[
    formatText [LLSTRING(hintToggle), _activated, lineBreak, _keybind]
] call ace_common_fnc_displayTextStructured;
