-- Lightning Sniper.
-- It retains the stock sniper behaviour, but uses the local base and head art.

dofile("weapons/snipertower.lua")

-- Define this before the arm's animation frames below use it.
ReloadTime = 0

Sprites =
{
	{
		Name = "sbzapsniper-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbzapsniper/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbzapsniper-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbzapsniper/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Projectile = "sbzapsniper"

-- Basic firing and economy tuning.
EnergyFireCost = 100
MetalFireCost = 0
BeamDuration = 4
HoldToFire = true
CanUpdateAimWhileFiring = true

CanOverheat = true
HeatPeriod = 3.96
CoolPeriod = 10
CoolPeriodOverheated = 12
KickbackMean = 0
KickbackStdDev = 0
MinFireAngle = -25
MaxFireAngle = 40
BarrelLength = 76
SelectionWidth = 80.0
SelectionHeight = 45
SelectionOffset = { -5.0, -45.5 }
Root =
{
	Name = "Sniper",
	Angle = 0,
	Pivot = { 0.0, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "sbzapsniper-base",
	UserData = 0,

	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = {-0.13671875, -0.05859375},
			PivotOffset = {0.224609375, 0.1171875},
			Sprite = "sbzapsniper-head",
			UserData = 75,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = {-0.16796875, -0.125},
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { -0.17, -0.15 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}
