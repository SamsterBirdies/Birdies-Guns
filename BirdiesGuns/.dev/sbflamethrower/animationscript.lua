dofile("scripts/interpolate.lua")

FireEnd = 8
AngleTable =
{
	{ 0,		0,	 },
	{ 0.5,		8, },
	{ 1.5,		-16, },
	{ 2.5,		16, },
	{ 3.5,		-16, },
	{ 4.5,		16, },
	{ 5.5,		-16, },
	{ 6.5,		16, },
	{ 7.5,		-8, },
	{FireEnd, 0},
	
}

Angle = 0
FireTimer = -1
function Update(delta)
	if FireTimer >= 0 then
		FireTimer = FireTimer + delta
		
		Angle = InterpolateTable(AngleTable, FireTimer, 2, true)
		SetNodeAngle("subhead", Angle)
		if FireTimer > FireEnd then
			SetNodeAngle("subhead", 0)
			FireTimer = -1
		end
	end
end
function OnWeaponFired()
	FireTimer = 0
end
