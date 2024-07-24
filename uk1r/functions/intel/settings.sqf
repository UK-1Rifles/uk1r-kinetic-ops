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
	True, // Type specific options (https://github.com/CBATeam/CBA_A3/wiki/CBA-Settings-System#setting-type-specific-arguments-_valueinfo).
	True, // Is global.
	{},
	True // Requires restart.
] call cba_fnc_addSetting;