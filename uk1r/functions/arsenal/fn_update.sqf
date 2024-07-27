#include "script_component.hpp"

// Check run conditions.
if (!hasInterface || isNull player) exitWith {false};

params [
  ["_arsenal", objNull, [objNull]]
];

// Check for null parameters.
if (isNull _arsenal) exitWith {false};

// Check the arsenal side.
private _side = _arsenal getVariable [QGVAR(side), playerSide];

// Check if side restrictions apply.
if (GVAR(restrict) && _side != playerSide) exitWith {false};

// Select the appropriate arsenal config for the player side.
private _config = (switch _side do {
  case BLUFOR : {GVAR(blufor)};
  case OPFOR : {GVAR(opfor)};
  case Independent : {GVAR(grefor)};
  default {configNull};
});

// Exit if no valid config is set for this side.
if (!isClass _config) exitWith {false};

// Clear existing virtual inventory before proceeding.
if !([_arsenal] call FUNC(clear)) exitWith {false};

// Prepare the item lists.
private _weapons = ["Throw", "Put"];
private _magazines = [];
private _backpacks = [];
private _items = [];

// Populate the item lists.
{
  // If the current config sub-class conditions are met, add the items to the list.
  if (call compile getText (_x >> "condition")) then {
    _weapons = _weapons + getArray (_x >> "weaponsPrimary");
    _weapons = _weapons + getArray (_x >> "weaponsLauncher");
    _weapons = _weapons + getArray (_x >> "weaponsHandgun");
    _magazines = _magazines + getArray (_x >> "magazines");
    _backpacks = _backpacks + getArray (_x >> "backpacks");
    _items = _items + getArray (_x >> "attachments");
    _items = _items + getArray (_x >> "binoculars");
    _items = _items + getArray (_x >> "facewear");
    _items = _items + getArray (_x >> "headgear");
    _items = _items + getArray (_x >> "items");
    _items = _items + getArray (_x >> "medical");
    _items = _items + getArray (_x >> "uniforms");
    _items = _items + getArray (_x >> "vests");
  };
} forEach ("true" configClasses _config);

// Remove duplicates.
_weapons = _weapons arrayIntersect _weapons;
_magazines = _magazines arrayIntersect _magazines;
_backpacks = _backpacks arrayIntersect _backpacks;
_items = _items arrayIntersect _items;

// Add virtual cargo items.
[_arsenal, _weapons, false, false] call bis_fnc_addVirtualWeaponCargo;
[_arsenal, _magazines, false, false] call bis_fnc_addVirtualMagazineCargo;
[_arsenal, _backpacks, false, false] call bis_fnc_addVirtualBackpackCargo;
[_arsenal, _items, false, true] call bis_fnc_addVirtualItemCargo;

true