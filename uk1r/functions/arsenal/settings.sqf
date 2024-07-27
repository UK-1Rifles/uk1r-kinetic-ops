#include "script_component.hpp"
private _category = format [
	"%1: %2",
	toUpper QUOTE(PREFIX),
	[QUOTE(COMPONENT)] call cba_fnc_capitalize
];
private _values = ("getNumber (_x >> 'scope') == 2" configClasses (missionConfigFile >> "CfgArsenal"));
private _names = _values apply { getText (_x >> "displayName"); };
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
	QGVAR(restrict),
	"CHECKBOX",
	[
		"Restrict sides",
		"Restrict players to arsenals of the same side only."
	],
	_category,
	true,
	true,
	{},
	true
] call cba_fnc_addSetting;
[
	QGVAR(blufor),
	"LIST",
	[
		"BLUFOR arsenal",
		"Arsenal config to use for the BLUFOR side."
	],
	_category,
	[
		_values,
		_names,
		0
	],
	true,
	{[] remoteExec [QFUNC(updateAll), WEST]},
	false
] call cba_fnc_addSetting;
[
	QGVAR(opfor),
	"LIST",
	[
		"OPFOR arsenal",
		"Arsenal config to use for the OPFOR side."
	],
	_category,
	[
		_values,
		_names,
		0
	],
	true,
	{[] remoteExec [QFUNC(updateAll), EAST]},
	false
] call cba_fnc_addSetting;
[
	QGVAR(grefor),
	"LIST",
	[
		"GREFOR arsenal",
		"Arsenal config to use for the GREFOR side."
	],
	_category,
	[
		_values,
		_names,
		0
	],
	true,
	{[] remoteExec [QFUNC(updateAll), INDEPENDENT]},
	false
] call cba_fnc_addSetting;