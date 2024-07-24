#include "script_component.hpp"
params [
  ["_cram", objNull, [objNull]],
  ["_range", 0, [0]]
];

// Check input parameters.
if (isNull _cram) exitWith {false};

// Check the CRAM register exists (unit init runs before script init).
if (isNil QGVAR(cramSystems)) then {
  GVAR(cramSystems) = [];
};

// If no range is given, find the max range of the weapon systems.
if (_range == 0) then {
  private _weapons = [];
  {
    _weapons = _weapons + getArray (_x >> "weapons");
  } forEach ("true" configclasses (configFile >> "CfgVehicles" >> typeOf _x >> "turrets"));
  {
    private _weaponRange = getNumber (configFile >> "CfgWeapons" >> _x >> "maxRange");
    if (_weaponRange > _range) then {
      _range = _weaponRange;
    };
  } forEach _weapons;
};

GVAR(cramSystems) pushBackUnique [_cram, _range];