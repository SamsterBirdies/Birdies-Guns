dofile("mods/weapon_pack/weapons/20mmcannon.lua")
SelectionWidth = 70
SelectionHeight = 60
SelectionOffset = { -10, -60.5 }

BarrelLength = 75

MinFireAngle = -15
MaxFireAngle = 80
DefaultFireAngle = 45
MinFireSpeed = 1500.0
MaxFireSpeed = 1500.1
RoundsEachBurst = 6
RoundPeriod = 0.36
Projectile = "sblightball"

Sprites = {}
Root =
{
	Name = "Lightball",
	Angle = 0,
	Pivot = { -0.06, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = path .. "/weapons/sblightball/base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = {-0.26171875, -0.0703125},
			PivotOffset = {0.20703125, 0.00390625},
			Sprite = path .. "/weapons/sblightball/head",
			UserData = 50,
			ChildrenBehind =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = {-0.0234375, -0.00390625},
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = {-0.0234375, -0.00390625},
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}