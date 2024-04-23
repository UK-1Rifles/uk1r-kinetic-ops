#include "script_component.hpp"

params [
  ["_target", objNull, [objNull, grpNull, "", locationNull]]
];

private _position = [];

switch (typeOf _target)