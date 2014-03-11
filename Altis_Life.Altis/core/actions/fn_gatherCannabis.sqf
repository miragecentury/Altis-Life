/*
	File: fn_gatherCannabis.sqf
	
	Description:
	Gathers cannabis?
*/
private["_sum"];
_sum = ["cannabis",(random 2)+1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering Cannabis...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"cannabis",_sum] call life_fnc_handleInv)) then
	{
		titleText["You have collected some Cannabis.","PLAIN"];
	};
};

life_action_inUse = false;