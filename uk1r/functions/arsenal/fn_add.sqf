#include "script_component.hpp"
params [
  ["_arsenal", objNull, [objNull]]
];

// Check for null parameters.
if (isNull _arsenal) exitWith {false};

// Register the arsenal.
GVAR(active) pushBackUnique _arsenal;

// Update the arsenal contents.
[_arsenal] call FUNC(update);

true