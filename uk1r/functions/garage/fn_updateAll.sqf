#include "script_component.hpp"

// Check run conditions.
if (!hasInterface || isNull player) exitWith {false};

{
  [_x] call FUNC(update);
} forEach GVAR(active);

true