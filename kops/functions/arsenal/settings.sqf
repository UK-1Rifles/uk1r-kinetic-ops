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
	True, // Type specific options (https://github.com/CBATeam/CBA_A3/wiki/CBA-Settings-System#setting-type-specific-arguments-_valueinfo).
	True, // Is global.
	{},
	True // Requires restart.
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
	True,
	{},
	True
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
	True,
	{},
	True
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
	True,
	{},
	True
] call cba_fnc_addSetting;