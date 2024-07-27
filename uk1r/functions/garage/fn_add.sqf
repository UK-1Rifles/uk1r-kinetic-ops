#include "script_component.hpp"

if !(isServer) exitWith {false};

params [
  ["_garage", objNull, [objNull]],
  ["_spawnPos", objNull, [objNull, ""]],
  ["_groups", ["cars", "mechanised", "armour", "helicopters", "planes", "unmanned"], [[]]],
  ["_side", sideUnknown, [sideUnknown]]
];

// Check for null parameters.
if (isNull _garage) exitWith {false};

// Get the spawn position.
_spawnPos = [_spawnPos] call bis_fnc_position;

// Make sure the spawn position is valid.
if (_spawnPos == [0,0,0]) exitWith {false};

// Get the spawn direction.
_spawnDir = 0;
if (_spawnPos isEqualType objNull) then {_spawnDir = getDir _spawnPos};
if (_spawnPos isEqualType "") then {_spawnDir = markerDir _spawnPos};

// Store the side on the garage if defined.
// Leave the side undefined to apply to all sides.
if !(_side == sideUnknown) then {
  _garage setVariable [QGVAR(side), _side];
};

// Store the spawn position and direction on the terminal.
_garage setVariable [QGVAR(spawnPos), _spawnPos];
_garage setVariable [QGVAR(spawnDir), _spawnDir];
_garage setVariable [QGVAR(groups), _groups];

// Register the garage.
GVAR(active) pushBackUnique [_garage];
publicVariable QGVAR(active);

// Update the garage.
[_garage] remoteExec [QFUNC(update), if(_side == sideUnknown) then {-2} else {_side}];

true