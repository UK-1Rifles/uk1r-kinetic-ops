#include "script_component.hpp"

// Only run in singleplayer.
if (isMultiplayer) exitWith {false};

params [
  ["_config", configNull, [configNull]]
];

// Check for null parameters.
if !(isClass _config) exitWith {false};

// Get a list of weapons from the sub classes.
private _weapons = ["Throw", "Put"];
{
  _weapons = _weapons + getArray (_x >> "weaponsPrimary");
  _weapons = _weapons + getArray (_x >> "weaponsLauncher");
  _weapons = _weapons + getArray (_x >> "weaponsHandgun");
} forEach ("true" configclasses _config);

// Remove duplicates.
_weapons = _weapons arrayIntersect _weapons;
diag_log _weapons;

// Get a list of compatible magazines.
private _magazines = [];
{
  // Create the base config path for the weapon.
  private _cfg = configFile >> "CfgWeapons" >> _x;

  // Get the top level magazines of the weapon.
  private _mags = getArray (_cfg >> "magazines");

  // Get the top level magazine wells of the weapon.
  private _magWells = getArray (_cfg >> "magazineWell");

  // Iterate through any muzzles and pull their magazine and magazine well values.
  {
    if !(_x == "this") then {
      _mags = _mags + getArray (_cfg >> _x >> "magazines");
      _magWells = _magWells + getArray (_cfg >> _x >> "magazineWell");
    };
  } forEach getArray (_cfg >> "muzzles");

  // Iterate over any magazine wells found and pull the magazines from the properties of those classes.
  {
    {
      _mags = _mags + getArray (_x);
    } forEach configProperties [configFile >> "CfgMagazineWells" >> _x, "true", true];
  } forEach _magWells;
  
  // Remove duplicates.
  _mags = _mags arrayIntersect _mags;

  // Add to the output.
  _magazines = _magazines + _mags;
} forEach _weapons;

// Remove duplicates.
_magazines = _magazines arrayIntersect _magazines;

// Output the list of magazines.
diag_log text "";
diag_log text "--- Magazines ---";
{diag_log text format["""%1"",", _x]} forEach _magazines;
diag_log text "";
diag_log text "";
diag_log text "";
diag_log text "";
diag_log text "";