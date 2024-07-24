#include "script_component.hpp"

if !(isNil QGVAR(init)) exitWith {false}; // Block re-running of component initialisation.
GVAR(init) = false;

// Initialise a list of counter rocket and missile (CRAM) systems if it does not exist.
if (isNil QGVAR(cramSystems)) then {
  GVAR(cramSystems) = [];
};

// Periodically check the tracked projectiles against the list of CRAM devices.
GVAR(cramCheckEH) = -1;
GVAR(cramCheckTimer) = diag_tickTime;

// Track fired projectiles for CRAMs.
GVAR(cramProjectiles) = [];

// Add all artillery capable land vehicles.
{
  [
    _x,
    "Fired",
    {
      private _munition = (_this#6);
      if (_munition isKindOf "ShellBase" || _munition isKindOf "SubmunitionBase") then {
        GVAR(cramProjectiles) pushBack _munition;
        //diag_log format ["%1: %2", count GVAR(cramProjectiles), _munition];
        if (GVAR(cramCheckEH) == -1) then {
          GVAR(cramCheckEH) = addMissionEventHandler [
            "EachFrame",
            FUNC(cramCheckEH)
          ];
        };
      };
    }
  ] call cba_fnc_addClassEventHandler;
} forEach ["StaticMortar", "B_Ship_MRLS_01_base_F", "MBT_01_arty_base_F", "MBT_01_mlrs_base_F", "MBT_02_arty_base_F", "Truck_02_MRL_base_F"];

// Add all air vehicles.
[
  "Air",
  "Fired",
  {
    private _munition = (_this#6);
    if (_munition isKindOf "RocketBase" || _munition isKindOf "MissileBase") then {
      GVAR(cramProjectiles) pushBack _munition;
      //diag_log format ["%1: %2", count GVAR(cramProjectiles), _munition];
      if (GVAR(cramCheckEH) == -1) then {
        GVAR(cramCheckEH) = addMissionEventHandler [
          "EachFrame",
          FUNC(cramCheckEH)
        ];
      };
    };
  }
] call cba_fnc_addClassEventHandler;

GVAR(init) = true;
INFO_1("%1 component initialized.", QUOTE(COMPONENT));