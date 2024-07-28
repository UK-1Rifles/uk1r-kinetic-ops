#include "script_component.hpp"

if !(isNil QGVAR(init)) exitWith {false}; // Block re-running of component initialisation.
GVAR(init) = false;

if (hasInterface) then {
  [
    "weapon",
    FUNC(weaponChangedEH)
  ] call cba_fnc_addPlayerEventHandler;

  player addEventHandler [
    "GetInMan",
    FUNC(getInManEH)
  ];

  player addEventHandler [
    "SeatSwitchedMan",
    FUNC(seatSwitchedManEH)
  ];

  [
    "Tank_F",
    "Engine",
    FUNC(engineEH)
  ] call cba_fnc_addClassEventHandler;

  [
    "Wheeled_APC_F",
    "Engine",
    FUNC(engineEH)
  ] call cba_fnc_addClassEventHandler;

  [
    "Air",
    "Engine",
    FUNC(engineEH)
  ] call cba_fnc_addClassEventHandler;

};

GVAR(init) = true;
INFO_1("%1 component initialized.", QUOTE(COMPONENT));