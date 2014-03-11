/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText["You didn't choose the clothes you wanted to buy.","PLAIN"];};

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if(_price > life_cash) exitWith {titleText["Sorry sir, you don't have enough money to buy those clothes.","PLAIN"];};
life_cash = life_cash - _price;

[] call life_fnc_sessionUpdate;
[] call life_fnc_saveGear;

life_clothesPurchased = true;
closeDialog 0;