if (hasInterface) then {
	// Fix for remoteExec config blocking initPlayerServer.
	0 spawn {
		waitUntil {!isNull player};
		[player, didJIP] remoteExec ["fixes_fnc_initPlayerServer", 2];
	};
};