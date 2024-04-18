#include "script_component.hpp"

// Check run conditions.
if (!hasInterface || isNull player) exitWith {};

// Select the appropriate arsenal config for the player side.
private _config = (switch playerSide do {
  case BLUFOR : {GVAR(blufor)};
  case OPFOR : {GVAR(opfor)};
  case Independent : {GVAR(indep)};
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

// TODO: Add ACRE radio compatibility.
// Likely need to add all ACRE radios individually here.

// Remove duplicates.
_weapons = _weapons arrayIntersect _weapons;
_magazines = _magazines arrayIntersect _magazines;
_backpacks = _backpacks arrayIntersect _backpacks;
_items = _items arrayIntersect _items;

// Keep track of removed items.
private _removed = [];

// Check player loadout.
// Remove any items that are not allowed.
// Uniforms.
if !(uniform player in _items) then {
  _removed pushBackUnique uniform player;
  removeUniform player;
};

// Vests.
if !(vest player in _items) then {
  _removed pushBackUnique vest player;
  removeVest player;
};

// Backpacks.
if !(backpack player in _backpacks) then {
  _removed pushBackUnique backpack player;
  removeBackpack player;
};

// Headgear.
if !(headgear player in _items) then {
  _removed pushBackUnique headgear player;
  removeHeadgear player;
};

// Goggles.
if !(goggles player in _items) then {
  _removed pushBackUnique goggles player;
  removeGoggles player;
};

// Weapons.
// Primary weapon.
if !(primaryWeapon player in _weapons) then {
  _removed pushBackUnique primaryWeapon player;
  player removeWeapon primaryWeapon player;
} else {
  // Weapon items.
  {
    if !(_x in _items || _x in _magazines) then {
      _removed pushBackUnique _x;
      player removePrimaryWeaponItem _x;
    };
  } forEach (primaryWeaponItems player + primaryWeaponMagazine player);
};

// Secondary weapon.
if !(secondaryWeapon player in _weapons) then {
  _removed pushBackUnique secondaryWeapon player;
  player removeWeapon secondaryWeapon player;
} else {
  // Weapon items.
  {
    if !(_x in _items || _x in _magazines) then {
      _removed pushBackUnique _x;
      player removeSecondaryWeaponItem _x;
    };
  } forEach (secondaryWeaponItems player + secondaryWeaponMagazine player);
};

// Handgun weapon.
if !(handgunWeapon player in _weapons) then {
  _removed pushBackUnique handgunWeapon player;
  player removeWeapon handgunWeapon player;
} else {
  // Weapon items.
  {
    if !(_x in _items || _x in _magazines) then {
      _removed pushBackUnique _x;
      player removeHandgunItem _x;
    };
  } forEach (handgunItems player + handgunMagazine player);
};

// Assigned items.
{
  if !(_x in _items) then {
    _removed pushBackUnique _x;
    player unassignItem _x;
    player removeItem _x;
  };
} forEach assignedItems player;

// Lastly any items left in player containers.
{
  if !(_x in _items || _x in _magazines) then {
    _removed pushBackUnique _x;
    player removeItem _x;
  };
} forEach (uniformItems player + vestItems player + backpackItems player + binocularItems player + binocularMagazine player);

// Remove blanks from the removed list.
_removed = _removed - [""];

// Output the items that were disallowed.
if (count _removed > 0) then {
  systemChat "The following items are not allowed for your role and were removed:";
  {
    private _displayName = "";
    if (isClass (configFile >> "CfgWeapons" >> _x)) then {
          _displayName = getText (configFile >> "CfgWeapons" >> _x >> "displayName");
    } else {
      if (isClass (configFile >> "CfgMagazines" >> _x)) then {
          _displayName = getText (configFile >> "CfgMagazines" >> _x >> "displayName");
      } else {
        if (isClass (configFile >> "CfgVehicles" >> _x)) then {
          _displayName = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
        } else {
          _displayName = _x;
        };
      };
    };
    systemChat format ["%1 (%2)", _displayName, _x];
    INFO_2("Item removed: %1 (%2).", _displayName, _x);
  } forEach _removed;
};
true