#include "script_component.hpp"

if !(isServer) exitWith {false};

params [
  ["_arsenal", objNull, [objNull]],
  ["_side", sideUnknown, [sideUnknown]]
];

// Check for null parameters.
if (isNull _arsenal) exitWith {false};

// Store the side on the arsenal if defined.
// Leave the side undefined to apply to all sides.
if !(_side == sideUnknown) then {
  _arsenal setVariable [QGVAR(side), _side];
};

// Register the arsenal.
GVAR(active) pushBackUnique _arsenal;
publicVariable QGVAR(active);

// Update the arsenal contents.
[_arsenal] remoteExec [QFUNC(update), if(_side == sideUnknown) then {-2} else {_side}];

true