/*
	File: fn_gatherHeroin.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers heroin?
*/
private["_sum"];
_sum = ["heroinu",(random 2)+1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering Heroin...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"heroinu",_sum] call life_fnc_handleInv)) then
	{
		titleText["You have collected some heroin.","PLAIN"];
	};
};

life_action_inUse = false;