#include "script_component.hpp"

// Only run in singleplayer.
if (isMultiplayer) exitWith {false};

// Empty the players inventory.
removeUniform player;
removeVest player;
removeHeadgear player;
removeBackpack player;
removeGoggles player;
removeAllWeapons player;
{
  player unassignItem _x;
  player removeItem _x;
} forEach assignedItems player;

// Global variable for the eachFrame event handler.
GVAR(exportEachFrameEH) = 0;

// Store unique equipment in the below categories.
GVAR(exportAttachments) = [];
GVAR(exportBackpacks) = [];
GVAR(exportBinoculars) = [];
GVAR(exportFacewear) = [];
GVAR(exportHeadgear) = [];
GVAR(exportItems) = [];
GVAR(exportMagazines) = [];
GVAR(exportUniforms) = [];
GVAR(exportVests) = [];
GVAR(exportWeaponsPrimary) = [];
GVAR(exportWeaponsLauncher) = [];
GVAR(exportWeaponsHandgun) = [];

// Setup event handlers to start and stop equipment monitoring.
[
  missionNameSpace,
  "arsenalOpened",
  {
    // Add eachFrame event handler that monitors for changes in player equipment.
    GVAR(exportEachFrameEH) = addMissionEventHandler [
      "eachFrame",
      {
        {
          GVAR(exportAttachments) pushBackUnique _x;
        } forEach (primaryWeaponItems player + secondaryWeaponItems player + handgunItems player + binocularItems player);
        GVAR(exportBackpacks) pushBackUnique backpack player;
        GVAR(exportFacewear) pushBackUnique goggles player;
        GVAR(exportHeadgear) pushBackUnique headgear player;
        {
          if (_x isKindOf ["CA_Magazine", configFile >> "CfgMagazines"]) then {
            GVAR(exportMagazines) pushBackUnique _x;
          } else {
            if (_x isKindOf ["Binocular", configFile >> "CfgWeapons"]) then {
              GVAR(exportBinoculars) pushBackUnique _x;
            } else {
              GVAR(exportItems) pushBackUnique _x;
            };
          };
        } forEach (uniformItems player + vestItems player + backpackItems player + assignedItems player + binocularMagazine player);
        GVAR(exportUniforms) pushBackUnique uniform player;
        GVAR(exportVests) pushBackUnique vest player;
        GVAR(exportWeaponsPrimary) pushBackUnique primaryWeapon player;
        GVAR(exportWeaponsLauncher) pushBackUnique secondaryWeapon player;
        GVAR(exportWeaponsHandgun) pushBackUnique handgunWeapon player;
      }
    ];
  }
] call BIS_fnc_addScriptedEventHandler;

[
  missionNameSpace,
  "arsenalClosed",
  {
    // Remove the eachFrame EH.
    removeMissionEventHandler ["eachFrame", GVAR(exportEachFrameEH)];

    // Remove empty values from the export item lists.
    GVAR(exportAttachments) = GVAR(exportAttachments) - [""];
    GVAR(exportBackpacks) = GVAR(exportBackpacks) - [""];
    GVAR(exportBinoculars) = GVAR(exportBinoculars) - [""];
    GVAR(exportFacewear) = GVAR(exportFacewear) - [""];
    GVAR(exportHeadgear) = GVAR(exportHeadgear) - [""];
    GVAR(exportItems) = GVAR(exportItems) - [""];
    GVAR(exportMagazines) = GVAR(exportMagazines) - [""];
    GVAR(exportUniforms) = GVAR(exportUniforms) - [""];
    GVAR(exportVests) = GVAR(exportVests) - [""];
    GVAR(exportWeaponsPrimary) = GVAR(exportWeaponsPrimary) - [""];
    GVAR(exportWeaponsLauncher) = GVAR(exportWeaponsLauncher) - [""];
    GVAR(exportWeaponsHandgun) = GVAR(exportWeaponsHandgun) - [""];

    // Output the items by category.
    diag_log text "--- Attachments ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportAttachments);
    diag_log text "";
    diag_log text "--- Backpacks ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportBackpacks);
    diag_log text "";
    diag_log text "--- Binoculars ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportBinoculars);
    diag_log text "";
    diag_log text "--- Facewear ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportFacewear);
    diag_log text "";
    diag_log text "--- Headgear ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportHeadgear);
    diag_log text "";
    diag_log text "--- Items ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportItems);
    diag_log text "";
    diag_log text "--- Magazines ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportMagazines);
    diag_log text "";
    diag_log text "--- Uniforms ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportUniforms);
    diag_log text "";
    diag_log text "--- Vests ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportVests);
    diag_log text "";
    diag_log text "--- Primary weapons ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportWeaponsPrimary);
    diag_log text "";
    diag_log text "--- Launchers ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportWeaponsLauncher);
    diag_log text "";
    diag_log text "--- Handguns ---";
    {diag_log text format["""%1"",", _x]} forEach GVAR(exportWeaponsHandgun);
    diag_log text "";
    diag_log text "";
    diag_log text "";
    diag_log text "";
    diag_log text "";
  }
] call BIS_fnc_addScriptedEventHandler;

// Open an arsenal with all items.
["Open", [true]] call BIS_fnc_arsenal;