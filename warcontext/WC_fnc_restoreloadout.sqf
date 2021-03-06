﻿	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - restore loadout
	// -----------------------------------------------

	#include "common.hpp"

	if (isDedicated) exitWith {};

	private [
		"_magazines", 
		"_weapons", 
		"_hasruck", 
		"_hasruckace", 
		"_ruckmags", 
		"_ruckweapons", 
		"_rucktype", 
		"_enemy", 
		"_sacados_avant_mort", 
		"_backpack", 
		"_weapononback"
	];
	
	// Retrait de l'équipement
	removeAllWeapons player;
	removeAllItems player;
	if!(wchasruck) then { removebackpack player; };
		
	// Restauration des armes d'avant le décès
	{player addMagazine _x;} forEach wcmagazines;
	{player addWeapon _x;} forEach wcweapons;

	#ifdef _ACE_
	if (wchasruckace) then {
		[player, "ALL"] call ACE_fnc_RemoveGear;
		if (!isNil "wcruckmags") then {
			player setvariable ["ACE_RuckMagContents", wcruckmags];
		};
		if (!isNil "wcruckweapons") then {
			player setvariable ["ACE_RuckWepContents", wcruckweapons];
		};
	};
	if (!isNil "wcweapononback") then {
		[player, "WOB"] call ACE_fnc_RemoveGear;
		player setvariable ["ACE_weapononback", wcweapononback];
	};
	#endif
	if (wchasruck) then {
		[player, [wcrucktype, wcruckweapons, wcruckmags]] call R3F_REV_FNCT_assigner_sacados;
	};

	#ifdef _ACE_
	player addweapon "ACE_Earplugs";
	#endif

	player selectWeapon (primaryWeapon player);