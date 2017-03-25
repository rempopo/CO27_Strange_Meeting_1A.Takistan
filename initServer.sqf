/*
 *	You can change MissionDate to some specific date to override date set in mission editor:
 *		format:		[@Year, @Month, @Day, @Hours, @Minutes] (e.g. [2012, 12, 31, 12, 45])
 */
 
MissionDate = [
	date select 0
	, date select 1
	, date select 2
	, if ("par_daytime" call BIS_fnc_getParamValue == 0) then {10+round(random 4)} else {21+round(random 8)}
	, selectRandom [0,10,15,20,25,30,40,45,50]
];
publicVariable "MissionDate";

/*
 * Date
 */
setDate MissionDate;

/*
 *	Weather
 */
if (!isNil "dzn_fnc_setWeather") then {
	("par_weather" call BIS_fnc_getParamValue) spawn dzn_fnc_setWeather;
};


/*
 *	Collect Some Player connection data
 */
PlayerConnectedData = [];
PlayerConnectedEH = addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
	diag_log _this;
	// [ DirectPlayID, getPlayerUID player, name player, @bool, clientOwner ]
	PlayerConnectedData pushBack _this;
	publicVariable "PlayerConnectedData";
}];

//Trigger for attack start
[] spawn {
attack_start = 0;
PublicVariable "attack_start";
};
//Timer
[] spawn {
	WaitUntil {sleep 60};
	attack_start = 1;
};
//Artillery
[] spawn {
	waitUntil {attack_start == 1};
	stopFiring = 1;
};
//Move groups
[] spawn {
	waitUntil {attack_start == 1};
	[force_1, [getPosASL pos_1, getPosASL pos_2, getPosASL pos_3], "SAD"] call dzn_fnc_dynai_moveGroups; 
	[force_2, [getPosASL pos_1, getPosASL pos_2, getPosASL pos_3], "SAD"] call dzn_fnc_dynai_moveGroups;
};
