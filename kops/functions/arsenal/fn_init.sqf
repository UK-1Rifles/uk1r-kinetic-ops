#include "script_component.hpp"

if !(isNil QGVAR(init)) exitWith {false}; // Block re-running of component initialisation.
GVAR(init) = false;

// Register of active arsenals.
GVAR(active) = [];

// Only needed on the clients.
if (hasInterface) then {
  // Check the player loadout when exiting arsenal.
  [
    missionNameSpace,
    "arsenalClosed",
    FUNC(validateLoadout)
  ] call bis_fnc_addScriptedEventHandler;
};

GVAR(init) = true;
INFO_1("%1 component initialized.", QUOTE(COMPONENT));