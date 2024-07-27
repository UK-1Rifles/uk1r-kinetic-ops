#include "script_component.hpp"
/*
private _category = format [
	"%1: %2",
	QUOTE(PREFIX),
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
	true,
	true
] call cba_fnc_addSetting;
*/