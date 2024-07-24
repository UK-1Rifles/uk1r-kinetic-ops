#include "script_component.hpp"
params ["_unit", "_vehicle", "_oldVehicle"];

if (isNull _vehicle) exitWith {false};

private _cfgVeh = configFile >> "CfgVehicles";

// Crewman checks.
if !([_unit] call FUNC(getRole) == "crewman") then {
  if (typeOf _vehicle isKindOf ["Tank_F", _cfgVeh] || {typeOf _vehicle isKindOf ["Wheeled_APC_F", _cfgVeh]}) then {
    {
      if (_x#0 == _unit && {toLOwer (_x#1) in ["driver", "gunner", "commander", "turret"] && {!(_x#4)}}) exitWith {
        doGetOut _unit;
        hint "You are not qualified to operate that position.";
      };
    } forEach fullCrew [_vehicle, "", false];
  };
};

// Aircrew checks.
if !([_unit] call FUNC(getRole) == "aircrew") then {
  if (typeOf _vehicle isKindOf ["Air", _cfgVeh]) then {
    {
      if (_x#0 == _unit && {toLOwer (_x#1) in ["driver", "gunner", "commander", "turret"] && {!(_x#4)}}) then {
        _unit moveOut _vehicle;
        hint "You are not qualified to operate that position.";
      };
    } forEach fullCrew [_vehicle, "", false];
  };
};