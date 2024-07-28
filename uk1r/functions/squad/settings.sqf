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
	QGVAR(restrictWeapons),
	"CHECKBOX",
	[
		"Restrict weapons",
		"Restrict use of weapon classes to their respective role."
	],
	_category,
	true,
	true,
	{},
	false
] call cba_fnc_addSetting;
[
	QGVAR(restrictGroundcrew),
	"CHECKBOX",
	[
		"Restrict groundcrew",
		"Restrict land vehicle crew roles to groundcrew (driver, gunner and commander)."
	],
	_category,
	true,
	true,
	{},
	false
] call cba_fnc_addSetting;
[
	QGVAR(restrictAircrew),
	"CHECKBOX",
	[
		"Restrict aircrew",
		"Restrict air vehicle crew roles to aircrew (pilot and gunner)."
	],
	_category,
	true,
	true,
	{},
	false
] call cba_fnc_addSetting;
[
	QGVAR(restrictTurrets),
	"CHECKBOX",
	[
		"Restrict turrets",
		"Restrict non-gunner turret positions to crew only."
	],
	_category,
	false,
	true,
	{},
	false
] call cba_fnc_addSetting;
/*
[
	QGVAR(restrictCargoTurrets),
	"CHECKBOX",
	[
		"Restrict cargo turrets",
		"Restrict person turret positions to crew only."
	],
	_category,
	false,
	true,
	{},
	false
] call cba_fnc_addSetting;
*/
[
	QGVAR(requireGunner),
	"CHECKBOX",
	[
		"Require commander",
		"Determines if a crewed ground vehicle requires the commander to operate."
	],
	_category,
	true,
	true,
	{},
	false
] call cba_fnc_addSetting;
[
	QGVAR(requireCopilot),
	"CHECKBOX",
	[
		"Require copilot",
		"Determines if a crewed air vehicle requires a copilot to operate (gunner for attack helos)."
	],
	_category,
	true,
	true,
	{},
	false
] call cba_fnc_addSetting;