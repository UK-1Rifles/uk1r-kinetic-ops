#include "script_component.hpp"

if !(isNil QGVAR(init)) exitWith {false}; // Block re-running of component initialisation.
GVAR(init) = false;

if (hasInterface) then {
  [
    "weapon",
    FUNC(weaponChangedEH)
  ] call cba_fnc_addPlayerEventHandler;

  [
    "vehicle",
    FUNC(vehicleChangedEH)
  ] call cba_fnc_addPlayerEventHandler;

  [
    "turret",
    FUNC(turretChangedEH)
  ] call cba_fnc_addPlayerEventHandler;
};

GVAR(init) = true;
INFO_1("%1 component initialized.", QUOTE(COMPONENT));