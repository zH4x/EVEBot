/*
	Misc class
	
	Object to contain miscellaneous helper methods and members that don't properly belong elsewhere.
	
	-- CyberTech
	
*/

objectdef obj_Misc
{
	method Initialize()
	{
		call UpdateHudStatus "obj_Misc: Initialized"
	}
	
	member:string MetersToKM_Str(float64 Meters)
	{
		if ${Meters(exists)} && ${Meters} > 0
		{
			return "${Math.Calc[${Meters} / 1000].Centi} km"
		}
		else
		{
			return "0"
		}
	}
}
