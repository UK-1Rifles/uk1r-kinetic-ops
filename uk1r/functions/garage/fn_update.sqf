#include "script_component.hpp"

// Check run conditions.
if (!hasInterface || isNull player) exitWith {false};

params [
  ["_garage", objNull, [objNull]]
];

// Check for null parameters.
if (isNull _garage) exitWith {false};

// Check the arsenal side.
private _side = _garage getVariable [QGVAR(side), playerSide];

// Check if side restrictions apply.
if (GVAR(restrict) && _side != playerSide) exitWith {false};

