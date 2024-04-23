#include "script_mission.hpp"

params ["_player", "_didJIP"];

// Fix for remote execution config blocking initPlayerServer.
0 spawn {
	waitUntil {!isNull player};
	[player, didJIP] remoteExec ["fixes_fnc_initPlayerServer", 2];
};

// Mission component initialisation.
call kops_common_fnc_init;
call kops_arsenal_fnc_init;
call kops_support_fnc_init;
call kops_tasks_fnc_init;

{
  [_x] call kops_arsenal_fnc_add;
} forEach [
	kops_arsenal_blufor_1,
	kops_arsenal_blufor_2
];