#include "script_component.hpp"
params [
  ["_target", objNull, [objNull]]
];

// Check for null parameters.
if (isNull _target) exitWith {false};

// Get the role.
private _return = (_target getVariable [QGVAR(role), ""]);

_return