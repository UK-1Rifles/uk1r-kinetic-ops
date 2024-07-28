#include "script_component.hpp"

// Locality check.
if !(hasInterface) exitWith {false};

params ["_unit", "_turret", "_oldTurret"];

// Null parameter check.
if (isNull _unit || _turret isEqualTo []) exitWith {false};
diag_log "Turret changed.";

diag_log _unit;
diag_log _turret;
diag_log _oldTurret;