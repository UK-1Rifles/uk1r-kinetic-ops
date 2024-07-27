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
	GVAR(maxGlobal),
	"SLIDER",
	[
		"Max. active global",
		"Maximum number of active civilians globally."
	],
	_category,
	[10, 100, 50, 0],
	true,
	{},
	false
] call cba_fnc_addSetting;
[
	GVAR(maxLocal),
	"SLIDER",
	[
		"Max. active local",
		"Maximum number of active civilians per location."
	],
	[5, 50, 25, 0],
	true,
	{},
	false
] call cba_fnc_addSetting;
[
	GVAR(parkedVehicles),
	"LIST",
	[
		[0.5, 0.75, 1, 1.25, 1.5],
		["Very low", "Low", "Normal", "High", "Very high"],
		1
	],
	true,
	{},
	false
] call cba_fnc_addSetting;
[
	GVAR(traffic),
	"LIST",
	[
		[0.5, 0.75, 1, 1.25, 1.5],
		["Very low", "Low", "Normal", "High", "Very high"],
		1
	],
	true,
	{},
	false
] call cba_fnc_addSetting;