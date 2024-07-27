#include "script_component.hpp"
private _category = format [
	"%1: %2",
	toUpper QUOTE(PREFIX),
	[QUOTE(COMPONENT)] call cba_fnc_capitalize
];
private _values = ("getNumber (_x >> 'scope') == 2" configClasses (missionConfigFile >> "CfgFactions"));
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
	QGVAR(restrictWeapons),
	"CHECKBOX",
	[
		"Restrict weapons",
		"Restrict use of weapon classes to their respective role."
	],
	_category,
	True,
	True,
	{},
	False
]
[
	QGVAR(restrictCrewman),
	"CHECKBOX",
	[
		"Restrict crewman",
		"Restrict land vehicle crew roles to crewman (driver, gunner and commander)."
	],
	_category,
	True,
	True,
	{},
	False
] call cba_fnc_addSetting;
[
	QGVAR(restrictAircrew),
	"CHECKBOX",
	[
		"Restrict aircrew",
		"Restrict air vehicle crew roles to aircrew (pilot, gunner and commander)."
	],
	_category,
	True,
	True,
	{},
	False
] call cba_fnc_addSetting;