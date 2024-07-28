#include "script_component.hpp"

params ["_vehicle", "_engineState"];

diag_log _vehicle;

// Null parameter check.
if (isNull _vehicle) exitWith {false};

// Exit if the player is not in the vehicle.
if !(vehicle player == _vehicle) exitWith {false};

//{diag_log _x} forEach fullCrew _vehicle;

if (typeOf _vehicle isKindOf ["Land", configFile >> "CfgVehicles"]) then {

  // Land vehicles require a commander.
  if (isNull commander _vehicle) then {
    _vehicle engineOn false;
    hint "A commander is required to operate this vehicle.";
  };

} else {

  // Air vehicles require a copilot.
  if (typeOf _vehicle isKindOf ["Air", configFile >> "CfgVehicles"]) then {
    if (isNull driver _vehicle || {isNull (_vehicle turretUnit [0])}) then { // Prevents copilot taking control and flying solo.
      _vehicle engineOn false;
      hint "A copilot is required to operate this vehicle.";
    };
  };

};