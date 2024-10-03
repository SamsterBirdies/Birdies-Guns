dofile("scripts/interpolate.lua")

FireEnd = 11
AngleTable =
{
	{ 0,		0,	 },
	{ 0.3,		2, },
	{ 0.5,		0, },
	{ 1,		-3, },
	{ 1.1,		-1, },
	{ 1.5,		-5, },
	{ 1.7, 2},
	{ 1.8, 1.3},
	{ 2.0, -1},
	{ 2.2, 4},
	{ 2.3, 3},
	{ 2.8, 0},
	{ 3.2,	-0.3,   },
	{ 4.0, 5},
	{4.2, -1.5},
	{4.4, 0},
	{4.8, 0.5},
	{5.3, 4},
	{5.5, 0},
	{6, 2},
	{6.3, 0},
	{6.7, 4},
	{8, 0},
	{8.1, 0.7},
	{8.3, 2.5},
	{8.6, 6},
	{9, 2.2},
	{10, 0},
	{10.7, -4.6},
	{FireEnd, 0},
	
}

Angle = 0
FireTimer = 0
function Update(delta)
		
		FireTimer = FireTimer + delta
		
		Angle = InterpolateTable(AngleTable, FireTimer, 2)
		SetNodeAngle("Anim", Angle)
		if FireTimer > FireEnd then
			FireTimer = 0
		end
end
function OnWeaponFired()
	FireTimer = 0
end
