#include "script_component.hpp"
params ["_unit", "_weapon", "_oldWeapon"];

if (_weapon == "") exitWith {false};

if (_weapon isKindOf ["Launcher", configFile >> "CfgWeapons"]) then {
  if !([_unit] call FUNC(getRole) in ["anti-tank", "anti-air"]) then {
    _unit selectWeapon _oldWeapon;
    hint "You are not qualified to use that weapon.";
  };
};