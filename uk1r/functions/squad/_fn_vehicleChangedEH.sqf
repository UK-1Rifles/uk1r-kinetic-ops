#include "script_component.hpp"

// Locality check.
if !(hasInterface) exitWith {false};

params ["_unit", "_vehicle", "_oldVehicle"];

// Null parameter check.
if (objNull in [_unit, _vehicle, _oldVehicle]) exitWith {false};
diag_log "Vehicle changed.";
diag_log _unit;
diag_log _vehicle;
diag_log _oldVehicle;

private _cfgVeh = configFile >> "CfgVehicles";

// Crewman checks.
if (GVAR(restrictCrewman)) then {
  if !([_unit] call FUNC(getRole) == "crewman") then {
    if (typeOf _vehicle isKindOf ["Tank_F", _cfgVeh] || {typeOf _vehicle isKindOf ["Wheeled_APC_F", _cfgVeh]}) then {
      {
        _x params ["_crew", "_role", "_index", "_turret", "_personTurret"];
        if (_crew == _unit && {toLOwer _role in ["driver", "gunner", "commander", "turret"] && {!_personTurret}}) exitWith {
          doGetOut _unit;
          hint "You are not qualified to operate that position.";
        };
      } forEach fullCrew [_vehicle, "", false];
    };
  };
};

// Aircrew checks.
if (GVAR(restrictAircrew)) then {
  if !([_unit] call FUNC(getRole) == "aircrew") then {
    if (typeOf _vehicle isKindOf ["Air", _cfgVeh]) then {
      {
        _x params ["_crew", "_role", "_index", "_turret", "_personTurret"];
        if (_crew == _unit && {toLOwer (_role) in ["driver", "gunner", "commander", "turret"] && {!(_personTurret)}}) then {
          _unit moveOut _vehicle;
          hint "You are not qualified to operate that position.";
        };
      } forEach fullCrew [_vehicle, "", false];
    };
  };
};