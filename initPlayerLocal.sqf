#include "script_mission.hpp"

params ["_player", "_didJIP"];

// Fix for remote execution config blocking initPlayerServer.
0 spawn {
	waitUntil {!isNull player};
	[player, didJIP] remoteExec ["fixes_fnc_initPlayerServer", 2];
};

// Mission component initialisation.
call uk1r_common_fnc_init;
call uk1r_arsenal_fnc_init;
call uk1r_support_fnc_init;
call uk1r_tasks_fnc_init;

{
  [_x] call uk1r_arsenal_fnc_add;
} forEach [
	uk1r_arsenal_blufor_1,
	uk1r_arsenal_blufor_2
];