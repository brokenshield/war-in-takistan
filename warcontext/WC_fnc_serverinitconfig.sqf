	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// WARCONTEXT - Description: init configuration file
	// -----------------------------------------------
	#include "common.hpp"

	if (!isServer) exitWith{};

	if(wcautoload == 1) then {
		[] spawn {
			wccfgpatches = [] call WC_fnc_enumcfgpatches;
			publicvariable "wccfgpatches";
		};
		wceastside = [east] call WC_fnc_enumfaction;
		wcresistanceside = [resistance] call WC_fnc_enumfaction;
		wcvehicleslistE = [east] call WC_fnc_enumvehicle;
		wcvehicleslistC = [civilian] call WC_fnc_enumvehicle;
		wcvehicleslistW = [west] call WC_fnc_enumvehicle;
		publicvariable "wcvehicleslistW";
		wccompositions = [east] call WC_fnc_enumcompositions;
		wcwestside = [west] call WC_fnc_enumfaction;
		publicvariable "wcwestside";
	} else {
		wccfgpatches = [];
		wceastside = [["BIS_TK_INS","BIS_TK"],[["BIS_TK_INS","TK_INS_Soldier_EP1"],["BIS_TK_INS","TK_INS_Soldier_AAT_EP1"],["BIS_TK_INS","TK_INS_Soldier_2_EP1"],["BIS_TK_INS","TK_INS_Soldier_3_EP1"],["BIS_TK_INS","TK_INS_Soldier_4_EP1"],["BIS_TK_INS","TK_INS_Soldier_AA_EP1"],["BIS_TK_INS","TK_INS_Soldier_AT_EP1"],["BIS_TK_INS","TK_INS_Soldier_TL_EP1"],["BIS_TK_INS","TK_INS_Soldier_Sniper_EP1"],["BIS_TK_INS","TK_INS_Soldier_AR_EP1"],["BIS_TK_INS","TK_INS_Soldier_MG_EP1"],["BIS_TK_INS","TK_INS_Bonesetter_EP1"],["BIS_TK_INS","TK_INS_Warlord_EP1"],["BIS_TK","TK_Soldier_EP1"],["BIS_TK","TK_Soldier_GL_EP1"],["BIS_TK","TK_Soldier_B_EP1"],["BIS_TK","TK_Soldier_AAT_EP1"],["BIS_TK","TK_Soldier_AMG_EP1"],["BIS_TK","TK_Soldier_LAT_EP1"],["BIS_TK","TK_Soldier_AT_EP1"],["BIS_TK","TK_Soldier_HAT_EP1"],["BIS_TK","TK_Soldier_AA_EP1"],["BIS_TK","TK_Soldier_Engineer_EP1"],["BIS_TK","TK_Soldier_MG_EP1"],["BIS_TK","TK_Soldier_AR_EP1"],["BIS_TK","TK_Soldier_Medic_EP1"],["BIS_TK","TK_Soldier_SL_EP1"],["BIS_TK","TK_Soldier_Officer_EP1"],["BIS_TK","TK_Soldier_Spotter_EP1"],["BIS_TK","TK_Soldier_Sniper_EP1"],["BIS_TK","TK_Soldier_SniperH_EP1"],["BIS_TK","TK_Soldier_Sniper_Night_EP1"],["BIS_TK","TK_Soldier_Night_1_EP1"],["BIS_TK","TK_Soldier_Night_2_EP1"],["BIS_TK","TK_Soldier_TWS_EP1"],["BIS_TK","TK_Soldier_Crew_EP1"],["BIS_TK","TK_Soldier_Pilot_EP1"],["BIS_TK","TK_Special_Forces_EP1"],["BIS_TK","TK_Special_Forces_TL_EP1"],["BIS_TK","TK_Special_Forces_MG_EP1"],["BIS_TK","TK_Aziz_EP1"],["BIS_TK","TK_Commander_EP1"]]];
		wcresistanceside = [["BIS_TK_GUE","BIS_UN","PMC_BAF"],[["BIS_TK_GUE","TK_GUE_Soldier_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_AAT_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_2_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_3_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_4_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_5_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_AA_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_AT_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_HAT_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_TL_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_Sniper_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_AR_EP1"],["BIS_TK_GUE","TK_GUE_Soldier_MG_EP1"],["BIS_TK_GUE","TK_GUE_Bonesetter_EP1"],["BIS_TK_GUE","TK_GUE_Warlord_EP1"],["BIS_UN","UN_CDF_Soldier_EP1"],["BIS_UN","UN_CDF_Soldier_B_EP1"],["BIS_UN","UN_CDF_Soldier_AAT_EP1"],["BIS_UN","UN_CDF_Soldier_AMG_EP1"],["BIS_UN","UN_CDF_Soldier_AT_EP1"],["BIS_UN","UN_CDF_Soldier_MG_EP1"],["BIS_UN","UN_CDF_Soldier_SL_EP1"],["BIS_UN","UN_CDF_Soldier_Officer_EP1"],["BIS_UN","UN_CDF_Soldier_Guard_EP1"],["BIS_UN","UN_CDF_Soldier_Pilot_EP1"],["BIS_UN","UN_CDF_Soldier_Crew_EP1"],["BIS_UN","UN_CDF_Soldier_Light_EP1"],["PMC_BAF","CIV_Contractor1_BAF"],["PMC_BAF","CIV_Contractor2_BAF"],["PMC_BAF","Soldier_PMC"],["PMC_BAF","Soldier_M4A3_PMC"],["PMC_BAF","Soldier_Engineer_PMC"],["PMC_BAF","Soldier_Crew_PMC"],["PMC_BAF","Soldier_Medic_PMC"],["PMC_BAF","Soldier_TL_PMC"],["PMC_BAF","Soldier_Pilot_PMC"],["PMC_BAF","Soldier_MG_PMC"],["PMC_BAF","Soldier_MG_PKM_PMC"],["PMC_BAF","Soldier_Sniper_PMC"],["PMC_BAF","Soldier_Sniper_KSVK_PMC"],["PMC_BAF","Soldier_GL_PMC"],["PMC_BAF","Soldier_GL_M16A2_PMC"],["PMC_BAF","Soldier_Bodyguard_M4_PMC"],["PMC_BAF","Soldier_Bodyguard_AA12_PMC"],["PMC_BAF","Soldier_AA_PMC"],["PMC_BAF","Soldier_AT_PMC"],["PMC_BAF","Poet_PMC"],["PMC_BAF","Ry_PMC"],["PMC_BAF","Reynolds_PMC"],["PMC_BAF","Tanny_PMC"],["PMC_BAF","Dixon_PMC"]]];
		wcvehicleslistE = ["UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","UralRepair_TK_EP1","UralReammo_TK_EP1","UralRefuel_TK_EP1","Ural_ZU23_TK_EP1","UralSupply_TK_EP1","UralSalvage_TK_EP1","TT650_TK_EP1","GRAD_TK_EP1","BRDM2_TK_EP1","BRDM2_ATGM_TK_EP1","BTR40_MG_TK_INS_EP1","BTR40_TK_INS_EP1","BTR60_TK_EP1","LandRover_MG_TK_INS_EP1","LandRover_MG_TK_EP1","LandRover_SPG9_TK_INS_EP1","LandRover_SPG9_TK_EP1","Old_bike_TK_INS_EP1","MAZ_543_SCUD_TK_EP1","SUV_TK_EP1","V3S_TK_EP1","V3S_Open_TK_EP1","BMP2_TK_EP1","BMP2_HQ_TK_EP1","T34_TK_EP1","ZSU_TK_EP1","T72_TK_EP1","M113Ambul_TK_EP1","M113_TK_EP1","T55_TK_EP1"];
		wcvehicleslistC = ["UAZ_Unarmed_TK_CIV_EP1","Ural_TK_CIV_EP1","TT650_TK_CIV_EP1","Lada1_TK_CIV_EP1","Lada2_TK_CIV_EP1","Ikarus_TK_CIV_EP1","hilux1_civil_3_open_EP1","LandRover_TK_CIV_EP1","Old_bike_TK_CIV_EP1","Old_moto_TK_Civ_EP1","S1203_TK_CIV_EP1","S1203_ambulance_EP1","SUV_TK_CIV_EP1","Volha_1_TK_CIV_EP1","Volha_2_TK_CIV_EP1","VolhaLimo_TK_CIV_EP1","V3S_Open_TK_CIV_EP1"];
		wcvehicleslistW = ["HMMWV_DES_EP1","HMMWV_MK19_DES_EP1","HMMWV_Ambulance_DES_EP1","HMMWV_Ambulance_CZ_DES_EP1","HMMWV_Avenger_DES_EP1","M1030_US_DES_EP1","MTVR_DES_EP1","MtvrReammo_DES_EP1","MtvrRefuel_DES_EP1","MtvrRepair_DES_EP1","MtvrSupply_DES_EP1","MtvrSalvage_DES_EP1","ATV_US_EP1","ATV_CZ_EP1","HMMWV_M1035_DES_EP1","HMMWV_M1151_M2_CZ_DES_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M998_crows_M2_DES_EP1","HMMWV_M998_crows_MK19_DES_EP1","HMMWV_M998A2_SOV_DES_EP1","HMMWV_TOW_DES_EP1","HMMWV_Terminal_EP1","LandRover_CZ_EP1","LandRover_Special_CZ_EP1","M1126_ICV_M2_EP1","M1126_ICV_mk19_EP1","M1130_CV_EP1","M1129_MC_EP1","M1135_ATGMV_EP1","M1128_MGS_EP1","M1133_MEV_EP1","M1A1_US_DES_EP1","M1A2_US_TUSK_MG_EP1","MLRS_DES_EP1","M2A2_EP1","M2A3_EP1","M6_EP1","BAF_ATV_D","BAF_Offroad_D","BAF_Jackal2_L2A1_D","BAF_Jackal2_GMG_D","BAF_ATV_W","BAF_Offroad_W","BAF_Jackal2_L2A1_W","BAF_Jackal2_GMG_W","BAF_FV510_D","BAF_FV510_W"];
		wccompositions = ["MediumTentCamp_TK_EP1","MediumTentCamp2_TK_EP1","MediumTentCamp3_TK_EP1","AntiAir1_TK_EP1","Firebase1_TK_EP1","FuelDump1_TK_EP1","RadarSite1_TK_EP1","VehicleParking1_TK_EP1","HeliParking1_TK_EP1","AirplaneParking1_TK_EP1","WeaponsStore1_TK_EP1","Camp1_TK_EP1","Camp2_TK_EP1","Camp1_TKM_EP1","Camp2_TKM_EP1","FiringRange_Wreck4","FiringRange_Wreck5"];
		wcwestside = [["BIS_TK_GUE","BIS_CZ","BIS_US","BIS_GER","BIS_BAF"],[["BIS_TK_GUE","US_Delta_Force_Undercover_Takistani06_EP1"],["BIS_CZ","CZ_Soldier_SL_DES_EP1"],["BIS_CZ","CZ_Soldier_DES_EP1"],["BIS_CZ","CZ_Soldier_B_DES_EP1"],["BIS_CZ","CZ_Soldier_AMG_DES_EP1"],["BIS_CZ","CZ_Soldier_AT_DES_EP1"],["BIS_CZ","CZ_Soldier_MG_DES_EP1"],["BIS_CZ","CZ_Soldier_Office_DES_EP1"],["BIS_CZ","CZ_Soldier_Light_DES_EP1"],["BIS_CZ","CZ_Soldier_Pilot_EP1"],["BIS_CZ","CZ_Soldier_Sniper_EP1"],["BIS_CZ","CZ_Special_Forces_Scout_DES_EP1"],["BIS_CZ","CZ_Special_Forces_MG_DES_EP1"],["BIS_CZ","CZ_Special_Forces_DES_EP1"],["BIS_CZ","CZ_Special_Forces_TL_DES_EP1"],["BIS_CZ","CZ_Special_Forces_GL_DES_EP1"],["BIS_US","US_Soldier_EP1"],["BIS_US","US_Soldier_B_EP1"],["BIS_US","US_Soldier_AMG_EP1"],["BIS_US","US_Soldier_AAR_EP1"],["BIS_US","US_Soldier_AHAT_EP1"],["BIS_US","US_Soldier_AAT_EP1"],["BIS_US","US_Soldier_Light_EP1"],["BIS_US","US_Soldier_GL_EP1"],["BIS_US","US_Soldier_Officer_EP1"],["BIS_US","US_Soldier_SL_EP1"],["BIS_US","US_Soldier_TL_EP1"],["BIS_US","US_Soldier_LAT_EP1"],["BIS_US","US_Soldier_AT_EP1"],["BIS_US","US_Soldier_HAT_EP1"],["BIS_US","US_Soldier_AA_EP1"],["BIS_US","US_Soldier_Medic_EP1"],["BIS_US","US_Soldier_AR_EP1"],["BIS_US","US_Soldier_MG_EP1"],["BIS_US","US_Soldier_Spotter_EP1"],["BIS_US","US_Soldier_Sniper_EP1"],["BIS_US","US_Soldier_Sniper_NV_EP1"],["BIS_US","US_Soldier_SniperH_EP1"],["BIS_US","US_Soldier_Marksman_EP1"],["BIS_US","US_Soldier_Engineer_EP1"],["BIS_US","US_Soldier_Pilot_EP1"],["BIS_US","US_Soldier_Crew_EP1"],["BIS_US","US_Delta_Force_EP1"],["BIS_US","US_Delta_Force_TL_EP1"],["BIS_US","US_Delta_Force_Medic_EP1"],["BIS_US","US_Delta_Force_Assault_EP1"],["BIS_US","US_Delta_Force_SD_EP1"],["BIS_US","US_Delta_Force_MG_EP1"],["BIS_US","US_Delta_Force_AR_EP1"],["BIS_US","US_Delta_Force_Night_EP1"],["BIS_US","US_Delta_Force_Marksman_EP1"],["BIS_US","US_Delta_Force_M14_EP1"],["BIS_US","US_Delta_Force_Air_Controller_EP1"],["BIS_US","US_Pilot_Light_EP1"],["BIS_US","Drake"],["BIS_US","Herrera"],["BIS_US","Pierce"],["BIS_US","Graves"],["BIS_US","Drake_Light"],["BIS_US","Herrera_Light"],["BIS_US","Pierce_Light"],["BIS_US","Graves_Light"],["BIS_GER","GER_Soldier_EP1"],["BIS_GER","GER_Soldier_Medic_EP1"],["BIS_GER","GER_Soldier_TL_EP1"],["BIS_GER","GER_Soldier_Scout_EP1"],["BIS_GER","GER_Soldier_MG_EP1"],["BIS_BAF","BAF_Soldier_MTP"],["BIS_BAF","BAF_Soldier_DDPM"],["BIS_BAF","BAF_Soldier_GL_MTP"],["BIS_BAF","BAF_Soldier_GL_DDPM"],["BIS_BAF","BAF_Soldier_N_MTP"],["BIS_BAF","BAF_Soldier_N_DDPM"],["BIS_BAF","BAF_Soldier_L_MTP"],["BIS_BAF","BAF_Soldier_L_DDPM"],["BIS_BAF","BAF_ASoldier_MTP"],["BIS_BAF","BAF_ASoldier_DDPM"],["BIS_BAF","BAF_Soldier_AAR_MTP"],["BIS_BAF","BAF_Soldier_AAR_DDPM"],["BIS_BAF","BAF_Soldier_AMG_MTP"],["BIS_BAF","BAF_Soldier_AMG_DDPM"],["BIS_BAF","BAF_Soldier_AAT_MTP"],["BIS_BAF","BAF_Soldier_AAT_DDPM"],["BIS_BAF","BAF_Soldier_AHAT_MTP"],["BIS_BAF","BAF_Soldier_AHAT_DDPM"],["BIS_BAF","BAF_Soldier_AAA_MTP"],["BIS_BAF","BAF_Soldier_AAA_DDPM"],["BIS_BAF","BAF_Soldier_Officer_MTP"],["BIS_BAF","BAF_Soldier_Officer_DDPM"],["BIS_BAF","BAF_Soldier_SL_MTP"],["BIS_BAF","BAF_Soldier_SL_DDPM"],["BIS_BAF","BAF_Soldier_TL_MTP"],["BIS_BAF","BAF_Soldier_TL_DDPM"],["BIS_BAF","BAF_Soldier_AR_MTP"],["BIS_BAF","BAF_Soldier_AR_DDPM"],["BIS_BAF","BAF_Soldier_MG_MTP"],["BIS_BAF","BAF_Soldier_MG_DDPM"],["BIS_BAF","BAF_Soldier_AT_MTP"],["BIS_BAF","BAF_Soldier_AT_DDPM"],["BIS_BAF","BAF_Soldier_HAT_MTP"],["BIS_BAF","BAF_Soldier_HAT_DDPM"],["BIS_BAF","BAF_Soldier_AA_MTP"],["BIS_BAF","BAF_Soldier_AA_DDPM"],["BIS_BAF","BAF_Soldier_Marksman_MTP"],["BIS_BAF","BAF_Soldier_Marksman_DDPM"],["BIS_BAF","BAF_Soldier_scout_MTP"],["BIS_BAF","BAF_Soldier_scout_DDPM"],["BIS_BAF","BAF_Soldier_Sniper_MTP"],["BIS_BAF","BAF_Soldier_SniperH_MTP"],["BIS_BAF","BAF_Soldier_SniperN_MTP"],["BIS_BAF","BAF_Soldier_spotter_MTP"],["BIS_BAF","BAF_Soldier_spotterN_MTP"],["BIS_BAF","BAF_Pilot_MTP"],["BIS_BAF","BAF_Pilot_DDPM"],["BIS_BAF","BAF_crewman_MTP"],["BIS_BAF","BAF_crewman_DDPM"],["BIS_BAF","BAF_Soldier_Medic_MTP"],["BIS_BAF","BAF_Soldier_Medic_DDPM"],["BIS_BAF","BAF_Soldier_FAC_MTP"],["BIS_BAF","BAF_Soldier_FAC_DDPM"],["BIS_BAF","BAF_Soldier_EN_MTP"],["BIS_BAF","BAF_Soldier_EN_DDPM"],["BIS_BAF","BAF_Soldier_W"],["BIS_BAF","BAF_Soldier_GL_W"],["BIS_BAF","BAF_Soldier_N_W"],["BIS_BAF","BAF_Soldier_L_W"],["BIS_BAF","BAF_ASoldier_W"],["BIS_BAF","BAF_Soldier_AAR_W"],["BIS_BAF","BAF_Soldier_AMG_W"],["BIS_BAF","BAF_Soldier_AAT_W"],["BIS_BAF","BAF_Soldier_AHAT_W"],["BIS_BAF","BAF_Soldier_AAA_W"],["BIS_BAF","BAF_Soldier_Officer_W"],["BIS_BAF","BAF_Soldier_SL_W"],["BIS_BAF","BAF_Soldier_TL_W"],["BIS_BAF","BAF_Soldier_AR_W"],["BIS_BAF","BAF_Soldier_MG_W"],["BIS_BAF","BAF_Soldier_AT_W"],["BIS_BAF","BAF_Soldier_HAT_W"],["BIS_BAF","BAF_Soldier_AA_W"],["BIS_BAF","BAF_Soldier_Marksman_W"],["BIS_BAF","BAF_Soldier_scout_W"],["BIS_BAF","BAF_Soldier_Sniper_W"],["BIS_BAF","BAF_Soldier_SniperH_W"],["BIS_BAF","BAF_Soldier_SniperN_W"],["BIS_BAF","BAF_Soldier_spotter_W"],["BIS_BAF","BAF_Soldier_spotterN_W"],["BIS_BAF","BAF_Pilot_W"],["BIS_BAF","BAF_creWman_W"],["BIS_BAF","BAF_Soldier_Medic_W"],["BIS_BAF","BAF_Soldier_FAC_W"],["BIS_BAF","BAF_Soldier_EN_W"]]];
	};

	// All vehicles that are respawnables (arcade mode)
	wcrespawnablevehicles = nearestObjects[getmarkerpos "bluefor",["Air", "LandVehicle"], 200];

	// blacklist of faction
	wcblacklistside = [];

	// array of player name intizialited
	wcplayerready = [];

	// Lobby Parameters
	setDate [2011, 7, 1, 12, 0];
	wcdate = date;

	if (wcwithrussian == 0) then {
		wcblacklistside = wcblacklistside + ["RU", "INS", "GUE"];
	};

	if (wcwithtakistan == 0) then {
		wcblacklistside = wcblacklistside + ["BIS_TK_INS", "BIS_TK", "BIS_TK_GUE", "BIS_UN"];
	};


	{
		if(count (configFile >> "CfgVehicles" >> _x >> "Turrets") == 0) then {
			wcvehicleslistE = wcvehicleslistE - [_x];
		};
	}foreach wcvehicleslistE;

	wcallsides = wceastside + wcresistanceside;
	wccivilwithoutweapons = ["TK_CIV_Woman01_EP1", "TK_CIV_Woman02_EP1", "TK_CIV_Woman03_EP1"];

	// if arrowhead
	if(wccombined == 0) then {
		private ["_temp"];
		_temp = [];
		wcfactionblacklist = ["RU", "INS", "GUE"];
		wcfactionlist = (wcallsides select 0) - wcfactionblacklist;
		{
			if!((_x select 0) in wcfactionblacklist) then {
				_temp = _temp + [_x];
			};
		}foreach (wcallsides select 1);	
		wcallsides = [wcfactionlist, _temp];
	};

	wcfactions = (wcallsides select 0) - wcblacklistside;
	wcclasslist = wcallsides select 1;
	wcvehicleslistEmission = wcvehicleslistE;
	wcsupportfaction = "BIS_TK";

	// if arcade game we exclude some kind of mission (sabotage, steal, rob)  
	if(wckindofgame == 1) then {
		wcmissiondone = [32,33,34,35,36,37,38,53];
	} else {
		wcmissiondone = [];
	};

	if(tolower(worldname) != "takistan") then {
		wcmissiondone = wcmissiondone + [56,58,59,60,61,62,71,63,72,65];
	};

	// exclude mission that contains building not present on map
	if(count(nearestObjects [getmarkerpos "respawn_west", ["Land_Mil_Barracks_i_EP1"], 20000]) == 0) then {
		wcmissiondone = wcmissiondone + [56];
	};

	if(count(nearestObjects [getmarkerpos "respawn_west", ["Land_Mil_hangar_EP1"], 20000]) == 0) then {
		wcmissiondone = wcmissiondone + [58,59,60,61,62,71];
	};

	if(count(nearestObjects [getmarkerpos "respawn_west", ["Land_Ind_Oil_Pump_EP1"], 20000]) == 0) then {
		wcmissiondone = wcmissiondone + [63,72];
	};

	if(count(nearestObjects [getmarkerpos "respawn_west", ["Land_Ind_FuelStation_Feed_EP1"], 20000]) == 0) then {
		wcmissiondone = wcmissiondone + [65];
	};
	
	// enemy zone size
	wcdistancegrowth = 10;
	wcdistance = 200 + (wclevel * wcdistancegrowth);

	// time in secondes before to garbage dead body
	wctimetogarbagedeadbody = 360;

	// soldiers fame
	wcfame = 1;

	// begining distance of ambiant life (grow during the game)
	wcambiantdistance = 1500;

	// probability of nuclear attack at begining of a mission - default 25%
	wcnuclearprobability = 0.85;

	civilian setFriend [west, 1];
	civilian setFriend [east, 1];
	civilian setFriend [resistance, 1];

	// contain all the name of player die once time
	wconelife = [];

	// bonus
	wcbonusfame = 0;
	wcenemyglobalfuel = 1;
	wcenemyglobalelectrical = 1;

	// number of player killed
	wcnumberofkilled = 0;
	wcnumberofkilledofmissionW = 0;
	wcnumberofkilledofmissionE = 0;
	wcnumberofkilledofmissionC = 0;
	wcnumberofkilledofmissionV = 0;

	// threshold of dammage to do, for enemy vehicle explose
	#ifdef _ACE_
		wcdammagethreshold = 0.3;
	#else
		wcdammagethreshold = 0.5;
	#endif

	// initialise the index composition
	wccompositionindex = 0;
	wciedindex = 0;
	wcnuclearindex = 0;
	wcpatrolindex = 0;
	wcdefendzoneindex = 0;
	wcteleportindex = 0;

	// initialise index ambiant
	wcambiantindex = 0;

	// Index markeur merlin
	wcmerlinmrk = 0;

	// init ammoboxindex
	wcammoboxindex = 0;
	
	// init E soldiers flare counter
	wcflarecounter = 0;

	// contains all markers
	wcarraymarker = [];
	wcambiantmarker = [];

	// contain scores of all players
	wcscoreboard = [];

	// contain all securised zone
	wcsecurezone = [getmarkerpos "respawn_west"];
	wcsecurezoneindex = 0;

	// contains all town locations
	wcmissionlocations = [];
	wctownlocations = nearestLocations [[7000,7000], ["NameCityCapital", "NameCity","NameVillage", "Name"], 20000];
	wchilllocations = nearestLocations [[7000,7000], ["Hill", "ViewPoint", "Mount", "NameLocal"], 20000];
	sleep 2;

	while { (count wchilllocations) > (count wctownlocations / 1.3) } do {
		wchilllocations = wchilllocations - [(wchilllocations call BIS_fnc_selectRandom)];
	};

	wctownlocations = wctownlocations + wchilllocations;

	{
		if(surfaceIsWater (position _x)) then {
			wctownlocations = wctownlocations - [_x];
		};
	}foreach wctownlocations;
	diag_log format ["WARCONTEXT: COMPUTING %1 ZONES", count wctownlocations];


	wczonelocations = [];

	for "_i" from 1 to 100 do {
		_temp = [wcmaptopright, wcmapbottomleft, "onground"] call WC_fnc_createposition;
		while { _temp distance getmarkerpos "respawn_west" < 1000} do {
			_temp = [wcmaptopright, wcmapbottomleft, "onground"] call WC_fnc_createposition;
		};
		wczonelocations = wczonelocations + [_temp];
	};

	wctownlocationsneartarget = [];
	wctownwithbunker = [];

	// contains all units, and vehicles enemy
	wcunits = [];
	wcsentinelle = [];
	wcvehicles = [];
	wcambiantlife = [];
	wcobjecttodelete = [];
	wcsabotagelist = [];
	wcpropagander = [];

	// Used at the end of mission to add 1 level
	wcleveltoadd = 0;

	// score initialisation
	wcteamscore = 0;

	// ups initialisation
	wcblinde = [];

	// guerilla ammobox
	wcammobox = [];

	// contains all buildin mission
	wclistofmissions = [];

	wcobjectiveindex = 0;

	// civilian are enemy
	//civilian setFriend [west, 0];

	// detection
	wcalert = 0;
	wcindexpropagande = 0;
	

	// number of grave at begining
	wcgrave = 0;

	true;