#include "script_component.hpp"
params [
  ["_arsenal", objNull, [objNull]]
];

// Check for null parameters.
if (isNull _arsenal) exitWith {false};

[_arsenal] call bis_fnc_removeVirtualWeaponCargo;
[_arsenal] call bis_fnc_removeVirtualMagazineCargo;
[_arsenal] call bis_fnc_removeVirtualBackpackCargo;
[_arsenal] call bis_fnc_removeVirtualItemCargo;

true