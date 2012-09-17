	// write the motd

	if(isnil "wcmotd") then {
		wcmotd = [];
	};

	if(name player in wcinteam) then {
		_presetdlg = createDialog "RscDisplaypaperboard";
	} else {
		wcgarbage = ["Information of the day", "Only members of team can write information of the day", "Wait to be recruited as a team member",  10] spawn WC_fnc_playerhint;
	};