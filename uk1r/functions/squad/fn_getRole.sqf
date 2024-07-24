#include "script_component.hpp"
params [
  ["_unit", objNull, [objNull]]
];

// Check for null parameters.
if (isNull _unit) exitWith {false};

// Get the role.
private _role = (
  switch true do {
    default {_unit getVariable [QGVAR(role), "rifleman"]};
  }
);

_role