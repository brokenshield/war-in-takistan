	// Read the caution sign at base

	if(isnil "wcmotd") then {
		wcmotd = [];
	};
	
	if(count wcmotd == 0) then {
		"Information of the day" hintC ["No information"];
	} else {
		"Information of the day" hintC wcmotd;
	};