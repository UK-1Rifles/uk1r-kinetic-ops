#include "script_component.hpp"

// Check run conditions.
if (!hasInterface || isNull player) exitWith {false};

// Select the appropriate arsenal config for the player side.
private _config = (switch playerSide do {
  case BLUFOR : {GVAR(blufor)};
  case OPFOR : {GVAR(opfor)};
  case Independent : {GVAR(grefor)};
  default {configNull};
});

// Exit if no valid config is set for this side.
if (!isClass _config) exitWith {false};

// Prepare the item lists.
private _weapons = ["Throw", "Put"];
private _magazines = [];
private _backpacks = [];
private _items = [];

// Populate the item lists.
{
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

// Keep a count of which arsenals were updated.
private _updated = [];

{
  // Clear existing virtual inventory before proceeding.
  if !([_x] call FUNC(clear)) exitWith {INFO_1("Failed to update arsenal: %1.",_x); false};

  // Add virtual contents.
  [_x, _weapons, false, false] call bis_fnc_addVirtualWeaponCargo;
  [_x, _magazines, false, false] call bis_fnc_addVirtualMagazineCargo;
  [_x, _backpacks, false, false] call bis_fnc_addVirtualBackpackCargo;
  [_x, _items, false, true] call bis_fnc_addVirtualItemCargo;

  // Add to the updated list.
  _updated pushBackUnique _x;
} forEach GVAR(active);

// Return true only if all arsenals were successfully updated.
if !(count GVAR(active) == count _updated) exitWith {false};
true