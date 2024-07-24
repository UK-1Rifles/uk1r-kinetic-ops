#include "script_component.hpp"

// Check four times a second while unpaused.
if (isGamePaused || {!(diag_tickTime >= GVAR(cramCheckTimer) + 0.25)}) exitWith {false};

// Remove null objects from the projectile list.
GVAR(cramProjectiles) = GVAR(cramProjectiles) - [objNull];

// Remove the event handler and exit if there are no projectiles to track.
if (count GVAR(cramProjectiles) == 0) exitWith {
  removeMissionEventHandler ["EachFrame", GVAR(cramCheckEH)];
  GVAR(cramCheckEh) = -1;
  diag_log "Exiting check EH!";
  true
};

// Check for projectiles in the area of each CRAM.
{
  _x params ["_cram", "_range"];
  
  // Get a list of projectiles in the CRAM engagement range.
  private _targets = GVAR(cramProjectiles) select {_x distance _cram <= _range};

  // Only engage enemy projectiles.
  _targets = _targets select {(side _cram getFriend side ((getShotParents _x)#1)) < 0.6};

  // If targets are found, select and engage one.
  if (count _targets > 0) then {

    // Select the closest target.
    private _target = _targets#0;
    {
      if (_x distance _cram < _target distance _cram) then {
        _target = _x;
      };
    } forEach _targets;

    // If this is an new or changing target, reset the CRAM time on target.
    if (_cram getVariable [QGVAR(cramTarget), objNull] != _target) then {
      _cram setVariable [QGVAR(cramTimeOnTarget), -1];
    };

    // Set the CRAM target.
    _cram setVariable [QGVAR(cramTarget), _target];

    // Check if the CRAM is already activated.
    if (_cram getVariable [QGVAR(cramEngageEH), -1] == -1) then {

      // Activate the CRAM.
      private _cramEngageEH = addMissionEventHandler [
        "EachFrame",
        FUNC(cramEngageEH),
        [_cram, _range]
      ];

      // Store the engage EH.
      _cram setVariable [QGVAR(cramEngageEH), _cramEngageEH];

      diag_log "Activating CRAM";
    
    };
    
  } else {
    
    // Clear any active targets if none are in range.
    if (_cram getVariable [QGVAR(creamEngageEH), -1] != -1) then {
      _cram setVariable [QGVAR(cramTarget), objNull];
    };

  };

} forEach GVAR(cramSystems);


// Update the timer.
GVAR(cramCheckTimer) = diag_tickTime;