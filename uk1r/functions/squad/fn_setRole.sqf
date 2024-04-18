#include "script_component.hpp"
params [
  ["_target", objNull, [objNull]],
  ["_role", "", [""]]
];

// Check for null parameters.
if (isNull _target) exitWith {false};

// Set the role.
_target setVariable [QGVAR(role), _role];

true