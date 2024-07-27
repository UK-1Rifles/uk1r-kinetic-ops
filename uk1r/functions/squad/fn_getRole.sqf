#include "script_component.hpp"
params [
  ["_unit", objNull, [objNull]]
];

// Check for null parameters.
if (isNull _unit or !(_unit isKindOf "CAManBase")) exitWith {""};

// Get the role.
private _role = (
  switch true do {
    // TODO: Find ways to define other roles.
    // Default: The role variable, otherwise "rifleman".
    default {_unit getVariable [QGVAR(role), "rifleman"]};
  };
);

_role