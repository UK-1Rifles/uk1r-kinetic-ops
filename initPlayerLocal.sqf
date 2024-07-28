#include "script_mission.hpp"
params ["_player", "_didJIP"];

// Fix for remote execution config blocking initPlayerServer.
0 spawn {
	waitUntil {!isNull player};
	[player, didJIP] remoteExec ["fixes_fnc_initPlayerServer", 2];
};

// Mission component initialisation.
call uk1r_main_fnc_init;
