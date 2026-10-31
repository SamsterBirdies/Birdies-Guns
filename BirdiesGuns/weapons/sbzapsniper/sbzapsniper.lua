-- Lightning Sniper.
-- It retains the stock sniper behaviour, but uses the local base and head art.

dofile("weapons/snipertower.lua")

-- Define this before the arm's animation frames below use it.
ReloadTime = 0.04

Sprites =
{
	{
		Name = "sbzapsniperfire",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbzapsniper/zapsniperfire.png", colour = { 1, 1, 1, 1 }} ,
					{ texture = path .. "/weapons/sbzapsniper/zapsniperfire.png", colour = { 1, 1, 1, 0.5 }} ,
					{ texture = path .. "/weapons/sbzapsniper/zapsniperfire.png", colour = { 1, 1, 1, 1 }} ,
					{ texture = path .. "/weapons/sbzapsniper/zapsniperfire.png", colour = { 1, 1, 1, 0.5 }} ,
					duration = 0.04,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 5,
				LoopExitState = "Null",
			},
		},
	},
}

Projectile = "sbzapsniper"
FireEffect = path .. "/effects/sbzapsniper_fire.lua"
ReloadEffect = path .. "/effects/sbzapsniper_reload.lua"
ShellEffect = nil

-- Basic firing and economy tuning.
Recoil = 1
EnergyFireCost = 200
MetalFireCost = 0
BeamDuration = 5
HoldToFire = true
CanUpdateAimWhileFiring = true
HitPoints = 50
CanOverheat = true
HeatPeriod = 4.2
CoolPeriod = 11
CoolPeriodOverheated = 14
KickbackMean = 0
KickbackStdDev = 0
NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		--EffectPath = "effects/weapon_overheated.lua",
		EffectPath = path .. "/effects/sbzapsniper_overheated.lua",
		Automatic = false,
	},
}
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
	Sprite = path .. "/weapons/sbzapsniper/base.png",
	UserData = 0,

	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = {-0.13671875, -0.05859375},
			PivotOffset = {0.224609375, 0.1171875},
			Sprite = path .. "/weapons/sbzapsniper/head.png",
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
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = {0.125, -0.125},
					PivotOffset = { 0, 0 },
					Sprite = "sbzapsniperfire",
					Visible = false,
					Additive = true,
				},
			},
		},
	},
}
