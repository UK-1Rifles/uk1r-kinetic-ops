#include "script_component.hpp"

params ["_vehicle", "_engineState"];

// Null parameter check.
if (isNull _vehicle) exitWith {false};

if (player in [driver _vehicle, gunner _vehicle, commander _vehicle]) then {
  if (_vehicle isKindOf ["Land", configFile >> "CfgVehicles"]) then {
    if (isNull commander _vehicle) then {
      _vehicle engineOn false;
      hint "A commander is required to operate this vehicle.";
    };
  } else {
    if (_vehicle isKindOf ["Air", configFile >> "CfgVehicles"]) then {
      if (isNull gunner _vehicle) then {
        _vehicle engineOn false;
        hint "A copilot is required to operate this vehicle.";
      };
    };
  };
};