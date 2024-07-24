#include "script_component.hpp"
_thisArgs params ["_cram", "_range"];

// Prevent running during pause menu.
if (isGamePaused) exitWith {false};

// Get current target.
private _target = _cram getVariable [QGVAR(cramTarget), objNull];

// Deactivate the CRAM if no target is assigned.
if (isNull _target) exitWith {
  
  // Remove the engage EH.
  removeMissionEventHandler ["EachFrame", _cram getVariable QGVAR(cramEngageEH)];
  _cram setVariable [QGVAR(cramEngageEH), -1];

  // Clear the CRAM time on target.
  _cram setVariable [QGVAR(cramTimeOnTarget), -1];
  
  // Return the turret to the front after a cooldown.
  [_cram] spawn {
    _this params ["_cram"];
    sleep 5;
    if (isNull (_cram getVariable [QGVAR(cramTarget), objNull])) then {
      _cram setVehicleAmmo 1;
      _cram doWatch objNull;
    };
  };

  //diag_log "Deactivating CRAM";
  false
};

// Lead and watch target.
_cram doWatch ((position _target) vectorAdd (velocity _target vectorMultiply (_target distance _cram)*0.0008));

// Check for minimum elevation to avoid collatoral damage.
if ((_cram weaponDirection (currentWeapon _cram))#2 >= 0.2) then {

  // Fire the CRAM weapon.
  _cram fireAtTarget [_target, currentWeapon _cram];

  // Start a counter for the time on target.
  // This is reset by the parent CRAM check script if a new target is assigned.
  private _timeOnTarget = _cram getVariable [QGVAR(cramTimeOnTarget), -1];
  if (_timeOnTarget == -1) then {
    _cram setVariable [QGVAR(cramTimeOnTarget), diag_tickTime];
  } else {

    // Destroy the target if still engaged after 3 seconds.
    if (diag_tickTime >= _timeOnTarget + 3) then {

      //diag_log format ["%1 destroyed.", _target];
      "helicopterexplosmall" createVehicle getPos _target;
      deleteVehicle _target;

    };
  
  };

};

true