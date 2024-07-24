#include "script_component.hpp"

params [
  ["_group", grpNull, [grpNull]]
];

if (isNull _group) exitWith {false};

private _supports = getArray (configFile >> "CfgVehicles" >> typeOf vehicle leader _group);

private _result = (switch (true) do {
  case ("Artillery" in _support) : {GVAR(artillery) pushBackUnique _group; true};
  case ("CAS_Bombing" in _support);
  case ("CAS_heli" in _support) : {GVAR(cas) pushBackUnique _group; true};
  case ("Transport" in _support) : {GVAR(transport) pushBackUnique _group; true};
  case ("Drop" in _support) : {GVAR(lift) pushBackUnique _group; true}; 
  default {false};
});

_result