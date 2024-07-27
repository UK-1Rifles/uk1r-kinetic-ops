#include "script_component.hpp"
private _category = format [
	"%1: %2",
	toUpper QUOTE(PREFIX),
	[QUOTE(COMPONENT)] call cba_fnc_capitalize
];
[
	QGVAR(enable),
	"CHECKBOX",
	[
		"Enable",
		format ["Enables or disables the %1 system", QUOTE(COMPONENT)]
	],
	_category,
	true, // Type specific options (https://github.com/CBATeam/CBA_A3/wiki/CBA-Settings-System#setting-type-specific-arguments-_valueinfo).
	true, // Is global.
	{},
	true // Requires restart.
] call cba_fnc_addSetting;
[
	QGVAR(activationDistance),
	"SLIDER",
	[
		"Activation distance",
		"The distance a player must be from an AI squad to start caching."
	],
	[500, 2000, 1000, 0],
	true,
	{},
	false
] call cba_fnc_addSetting;
[
	QGVAR(vehicleMultiplier),
	"SLIDER",
	[
		"Vehicle multiplier",
		"Multiplier applied to the activation distance for land vehicles."
	],
	[50, 200, 100, 0, true],
	true,
	{},
	true
] call cba_fnc_addSetting;
[
	QGVAR(aircraftMultiplier),
	"SLIDER",
	[
		"Aircraft multiplier",
		"Multiplier applied to the activation distance for air vehicles."
	],
	[50, 200, 100, 0, true],
	true,
	{},
	true
] call cba_fnc_addSetting;