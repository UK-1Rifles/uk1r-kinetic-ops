#include "script_component.hpp"

// Locality check.
if !(hasInterface) exitWith {false};

params ["_unit", "", "_vehicle"];

// Null parameter check.
if (isNull _unit) exitWith {false};

// Set a flag to determine if the unit should be ejected or not.
private _qualified = true;

// Groundcrew restrictions.
if (GVAR(restrictGroundCrew)) then {

  // Check if the unit is qualified.
  if !([_unit] call FUNC(getRole) == "groundcrew") then {
  
    // Check the vehicle is a tank or APC.
    if (typeOf _vehicle isKindOf ["Tank_F", configFile >> "CfgVehicles"] || {typeOf _vehicle isKindOf ["Wheeled_APC_F", configFile >> "CfgVehicles"]}) then {

      // Look over the crew, find the unit and check if it is qualified.
      {
        _x params ["_crewUnit", "_crewRole", "_cargoIndex", "_turretPath", "_personTurret"];

        if (_crewUnit == _unit) then {
          if (_crewRole in ["driver", "commander"]) then {
            _qualified = false;
          };
          if (_crewRole == "gunner") then {
            if (_turrentPath isEqualTo [0]) then {
              _qualified = false;
            };
            if (GVAR(restrictTurrets) && _turrentPath isNotEqualTo []) then {
              _qualified = false;
            };
          };
        };
      } forEach fullCrew _vehicle;
      
    };
  };
};

// Stop processing if the groundcrew checks disqualified the unit.
if !(_qualified) exitWith {
  _unit moveOut _vehicle;
  hint "You are not qualified to use this position, please take a groundcrew role for this.";
};

// Aircrew restrictions.
if (GVAR(restrictAirCrew)) then {

  // Check if the unit is qualified.
  if !([_unit] call FUNC(getRole) == "aircrew") then {
  
    // Check the vehicle is an air vehicle
    if (typeOf _vehicle isKindOf ["Air", configFile >> "CfgVehicles"]) then {

    };
  };
};

// Stop processing if the aircrew checks disqualified the unit.
if !(_qualified) exitWith {
  _unit moveOut _vehicle;
  hint "You are not qualified to use this position, please take a aircrew role for this.";
};

true