#include "script_component.hpp"
params [
  ["_cram", objNull, [objNull]],
  ["_maxRange", 1000, [0]],
  ["_minRange", 0, [0]]
];

// Invalid parameter check.
if (isNull _cram) exitWith {false};

if (_minRange == 0) then {_minRange = _maxRange * 0.2};

while {alive _cram} do {
  // Get a list of targets.
  private _targets = [];
  _targets = _targets + (_cram nearObjects ["ShellBase", _maxRange]);
  _targets = _targets + (_cram nearObjects ["RocketBase", _maxRange]);
  _targets = _targets + (_cram nearObjects ["MissileBase", _maxRange]);

  // Filter targets below the minimum height.
  _targets = _targets select {_x distance2D _cram > _minRange && (getPos _x)#2 > 50};

  // Engage targets if found.
  if (count _targets > 0) then {
    diag_log "Targets found.";

    // Select closest target.
    private _target = _targets#0;
    {
      if (_x distance2D _cram < _target distance2D _cram) then {
        _target = _x;
      };
    } forEach _targets;

    // Wait until the barrel is pointing roughly at the target.
    private _vTarget = getPos _cram vectorFromTo getPos _target;
    diag_log _vTarget;
    private _vTol = 0.1;
    waitUntil {
      _cram lookAt _target;
      private _vCram = _cram weaponDirection (currentWeapon _cram);
      _vCram#2 >= 0.15 &&
      {_vCram#0 > (_vTarget#0 - _vTol) && _vCram#0 < (_vTarget#0 + _vTol) &&
      {_vCram#1 > (_vTarget#1 - _vTol) && _vCram#1 < (_vTarget#1 + _vTol) &&
      {_vCram#2 > (_vTarget#2 - _vTol) && _vCram#2 < (_vTarget#2 + _vTol)}}}
    };
    diag_log "Locked!";

    // Fire at the target.
    while {alive _target && {(_target distance2D _cram) <= _maxRange && {(_target distance2D _cram) >= _minRange && {(_cram weaponDirection (currentWeapon _cram))#2 >= 0.15}}}} do {
      _targetPos = (position _target) vectorAdd (velocity _target vectorMultiply (_target distance _cram)*0.0001);
      _cram lookAt _targetPos;
      _cram fire (currentWeapon _cram);
      sleep 0.01;
    };
  };
  sleep 0.01;
};