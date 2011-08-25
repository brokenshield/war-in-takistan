	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext  - rescue some civils

	private [
		"_unit", 
		"_enemy", 
		"_enemy", 
		"_missioncomplete",
		"_typeof",
		"_position",
		"_civilrescue",
		"_civilrescuenumber",
		"_civils",
		"_civil",
		"_group",
		"_type",
		"_vehicle",
		"_vehicles",
		"_count",
		"_number",
		"_counter"
	];

	_unit = _this select 0;
	_number = _this select 1;

	_civils = [];
	_civilrescue = [];
	_civilrescuenumber = 0;

	_missioncomplete = false;

	_group = creategroup civilian;
	for "_i" from 1 to _number do {
		_type = ["TK_CIV_Takistani01_EP1", "TK_CIV_Takistani02_EP1", "TK_CIV_Takistani03_EP1", "TK_CIV_Takistani04_EP1", "TK_CIV_Takistani05_EP1", "TK_CIV_Takistani06_EP1", "TK_CIV_Worker01_EP1", "TK_CIV_Worker02_EP1"] call BIS_fnc_selectRandom;
		_civil = _group createUnit [_type, position _unit, [], 5, "FORM"];
		_civil setVehicleInit "this addAction ['<t color=''#ff4500''>Follow me</t>', 'warcontext\WC_fnc_followme.sqf',[],-1,false, true];";
		dostop _civil;
		processInitCommands;
		sleep 0.5;
	};
	_civils = units _group;
	_group allowFleeing 0;

	_counter = 0;
	while {!_missioncomplete} do {
		_count = 0;
		{
			if(_x distance getmarkerpos "mash" < 100) then {
				_x domove getmarkerpos "mash";
				_count = _count + 1;
			};
			if!(alive _x) then {
				_civils = _civils - [_x];
			};
		}foreach _civils;

		if(_count == count _civils) then {
			wcmessageW = ["Mission completed", localize "STR_WC_MESSAGELEAVEZONE"];
			if!(isDedicated) then { wcmessageW spawn WC_fnc_infotext; } else { ["wcmessageW", "client"] call WC_fnc_publicvariable;};
			wcmissionsuccess = true;
			wcobjectiveindex = wcobjectiveindex + 1;
			_missioncomplete = true;
			wcleveltoadd = 1;
			wcfame = wcfame + wcbonusfame;
			wcenemyglobalelectrical = wcenemyglobalelectrical + wcbonuselectrical;
			wcenemyglobalfuel = wcenemyglobalfuel + wcbonusfuel;
		};

		if(count _civils < floor(0.80 * _number)) then {
			wcmessageW = ["Mission Failed", localize "STR_WC_MESSAGELEAVEZONE"];
			if!(isDedicated) then { wcmessageW spawn WC_fnc_infotext; } else { ["wcmessageW", "client"] call WC_fnc_publicvariable;};
			wcmissionsuccess = true;
			wcobjectiveindex = wcobjectiveindex + 1;
			_missioncomplete = true;
			wcleveltoadd = 0;
		};

		if(_counter > 20) then {
			"SmokeShellRed" createVehicle position _unit;
			_counter = 0;
		};
		sleep 5;
	};