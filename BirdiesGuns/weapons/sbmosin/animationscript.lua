dofile("scripts/interpolate.lua")

FireEnd = 7.5
AngleTable =
{
	{ 0, 0},
	{ 0.02,	-2},
	{ 0.4, 0},
	{ 1, 0},
	{ 1.02, -2},
	{ 1.4, 0},
	{ 2, 0},
	{ 2.02, -2},
	{ 2.4, 0},
	{ 3, 0},
	{ 3.02, -2},
	{ 3.4, 0},
	{ 4, 0},
	{ 4.02, -2},
	{ 4.4, 0},
	{ 5.2, 0},
	{ 5.4, 8},
	{ 6.2, 7},
	{ 6.4, 5},
	{ 6.6, 0}
}

Angle = 0
FireTimer = -1
function Update(delta)
		if FireTimer >= 0 then
			FireTimer = FireTimer + delta
		
			Angle = InterpolateTable(AngleTable, FireTimer, 2)
			SetNodeAngle("Barrel", Angle)
			if FireTimer > FireEnd then
				FireTimer = -1
			end
		end
		
end
function OnWeaponFired()
	FireTimer = 0
end
