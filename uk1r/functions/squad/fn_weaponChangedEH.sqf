#include "script_component.hpp"
params ["_unit", "_weapon", "_oldWeapon"];

// Exit if this feature has been disabled.
if !(GVAR(restrictWeapons)) exitWith {true};

// Exit if the weapon selected is empty (holstered weapon).
if (_weapon == "") exitWith {true};

// Set a flag to force select the previous weapon.
private _qualified = true;

// Set the default message to show to players. Can be overwritten if needed.
private _message = "You are not qualified to use that weapon.";

// Get the unit role.
private _role = [_unit] call FUNC(getRole);

// Get weapon config.
private _weaponCfg = configFile >> "CfgWeapons" >> _weapon;

// Restrict usage of anti-tank and anti-air weapons.
if (_weapon isKindOf ["Launcher", configFile >> "CfgWeapons"]) then {

  // Check if the unit is anti-tank.
  if !(_role isEqualTo "anti-tank") then {
    // Check if the weapon is anti-tank.
    if (_weapon isKindOf ["Launcher", configFile >> "CfgWeapons"]) then {_qualified = false}; // TODO: Make this a proper AT check.
  };

  // Check if the weapon is anti-air.
  if !(_role isEqualTo "anti-air") then {
    // Check if the weapon is anti-air.
    if (_weapon isKindOf ["Launcher", configFile >> "CfgWeapons"]) then {_qualified = false}; // TODO: Make this a proper AA check.
  };
  
};

// Restrict usage of machineguns.
if (_qualified && {_weapon isKindOf ["MachineGun", configFile >> "CfgWeapons"]}) then {
  if !([_unit] call FUNC(getRole) in ["machinegunner"]) then {_qualified = false};
};

// Restrict usage of marksman and sniper rifles.
if (_qualified && {_weapon isKindOf ["Rifle_Base", configFile >> "CfgWeapons"]}) then {
  if !([_unit] call FUNC(getRole) in ["marksman", "sniper"]) then {_qualified = false};
};

if !(_qualified) then {
  _unit selectWeapon _oldWeapon;
  hint _message;
};

_qualified