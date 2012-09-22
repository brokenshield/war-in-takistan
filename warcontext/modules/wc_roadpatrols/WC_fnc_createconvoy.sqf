	// -----------------------------------------------
	// Author:  code34 nicolas_boiteux@yahoo.fr
	// WARCONTEXT - create a enemy convoy

	if (!isServer) exitWith{};

	private [
		"_arrayofvehicle",
		"_cible",
		"_formationtype",
		"_group",
		"_lastposition",
		"_move",
		"_nearestenemy",
		"_originalsize",
		"_originalcible",
		"_position",
		"_target",
		"_vehicle",
		"_wp",
		"_wptype"
		];

	diag_log "WARCONTEXT: BUILD 1 CONVOY";

	_target = wctownlocations call BIS_fnc_selectRandom;
	_position = (position _target) findEmptyPosition [10, 500];

	if(count _position == 0) exitwith {
		diag_log "WARCONTEXT: NO FOUND EMPTY POSITION FOR CONVOY SPAWN";
	};


	_arrayofvehicle = [_position, 0, (wcvehicleslistE call BIS_fnc_selectRandom), east] call BIS_fnc_spawnVehicle;

	sleep 1;

	_vehicle 	= _arrayofvehicle select 0;
	_arrayofpilot 	= _arrayofvehicle select 1;
	_group 		= _arrayofvehicle select 2;

	_vehicle setVehicleLock "LOCKED";
	_originalsize = count (units _group);

	wcgarbage = [_vehicle] spawn WC_fnc_vehiclehandler;
	wcgarbage = [_group] spawn WC_fnc_grouphandler;	

	if(random 1 > 0.9) then {

		_arrayofvehicle = [_position, 0, (wcvehicleslistE call BIS_fnc_selectRandom), east] call BIS_fnc_spawnVehicle;
	
		sleep 1;
	
		_vehicle2 	= _arrayofvehicle select 0;
		_arrayofpilot2 	= _arrayofvehicle select 1;
		_group2		= _arrayofvehicle select 2;

		_vehicle2 setVehicleLock "LOCKED";

		wcgarbage = [_vehicle2] spawn WC_fnc_vehiclehandler;
		wcgarbage = [_group2] spawn WC_fnc_grouphandler;	

		_arrayofpilot2 joinsilent _group;

		_arrayofvehicle = [_position, 0, (wcconvoyvehicles call BIS_fnc_selectRandom), east] call BIS_fnc_spawnVehicle;
	
		sleep 1;
	
		_vehicle3 	= _arrayofvehicle select 0;
		_arrayofpilot3 	= _arrayofvehicle select 1;
		_group3		= _arrayofvehicle select 2;

		_vehicle3 setVehicleLock "LOCKED";

		wcgarbage = [_vehicle3] spawn WC_fnc_vehiclehandler;
		wcgarbage = [_group3] spawn WC_fnc_grouphandler;	

		_arrayofpilot3 joinsilent _group;
	};


	_vehicle setvariable ["cible", objnull, false];

	while { count (units _group) > 0 } do {

		if((wcalert > 50) || (count (units _group) < _originalsize)) then {
			_group setBehaviour "AWARE";
			_group setCombatMode "RED";
			_group setSpeedMode "LIMITED";
			_wptype = ["SAD"];
		} else {
			_group setBehaviour "SAFE";
			_group setCombatMode "GREEN";
			_group setSpeedMode "FULL";
			_wptype = ["MOVE", "SAD"];
		};

		_cible = _vehicle getvariable "cible";
		_originalcible = _cible;

		if((isnull _cible) or !(alive _cible) or ((_cible distance _vehicle) > wcdistance)) then {
			_vehicle setvariable ["cible", _vehicle, false];
			_target = wctownlocations call BIS_fnc_selectRandom;
			_position = (position _target) findEmptyPosition [10, 500];
			while { count _position == 0 } do {
				_target = wctownlocations call BIS_fnc_selectRandom;
				_position = (position _target) findEmptyPosition [10, 500];
				sleep 0.1;
			};
		} else {
			if(_cible != _vehicle) then {
				_wptype = ["SAD"];
				_position = position _cible;
				_group setBehaviour "AWARE";
				_group setCombatMode "RED";
				_group setSpeedMode "LIMITED";
			};
		};

		//_formationtype = ["COLUMN", "STAG COLUMN","WEDGE","ECH LEFT","ECH RIGHT","VEE","LINE","FILE","DIAMOND"] call BIS_fnc_selectRandom;
		_wp = _group addwaypoint [_position, 0];
		//_wp setWaypointFormation _formationtype;
		_wp setWaypointPosition [_position, 5];
		_wp setWaypointType (_wptype call BIS_fnc_selectRandom);
		_wp setWaypointVisible true;
		_wp setWaypointSpeed "FULL";
		_group setCurrentWaypoint _wp;

		_move = false;
		while { !(_move) } do {
			_lastposition = position (leader _group);
			sleep 10;
			if(_lastposition distance (position (leader _group)) < 5) then {
				_move = true;
			};
			_cible = _vehicle getvariable "cible";
			if(_originalcible != _cible) then {
				_move = true;
			};
		};
		deletewaypoint _wp;
		_vehicle setFuel 1;
	};