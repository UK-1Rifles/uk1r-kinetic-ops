#include "script_component.hpp"

params [
  ["_group", grpNull, [grpNull]],
  ["_target", objNull, [objNull, [], ""]],
  ["_magazine", "", [""]],
  ["_count", 1, [0]]
];

if (isNull _group || isNull _target) exitWith {false};

_target = _target call bis_fnc_position;

{
  if (getNumber (configFile >> "CfgVehicles" >> typeOf vehicle _x >> "artilleryScanner") == 1) then {
    if (_x == gunner vehicle _x) then {
      _x doArtilleryFire [_target, _magazine, _count];
    };
  };
} forEach units _group;

true