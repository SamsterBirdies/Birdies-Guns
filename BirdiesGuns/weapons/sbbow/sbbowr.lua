-- fort wars weapon file

Scale = 1
SelectionWidth = 45.0
SelectionHeight = 42.0
SelectionOffset = { -8.0, -48.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -230, -50 },
}

WeaponMass = 40.0
HitPoints = 60.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/bowshoot.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/sniper_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
ReloadEffect = path .. "/effects/bow_reload.lua"
ReloadEffectOffset = -0.25
Projectile = "sbarrowr"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 7.0
MinFireSpeed = 2000.0
MaxFireSpeed = 2000.1
MinFireRadius = 500.0
MaxFireRadius = 1000.0
MinVisibility = 0.3
MaxVisibilityHeight = 1000
MinFireAngle = -50
MaxFireAngle = 80
KickbackMean = 35
KickbackStdDev = 7
MouseSensitivityFactor = 0.6
PanDuration = 0
FireStdDev = 0.000
FireStdDevAuto = 0.000
Recoil = 50000
EnergyFireCost = 260.0
MetalFireCost = 10
AutofireCloseDoorTicks = 2*25
ShowFireAngle = true

EagleEyeReloadBank = 
{
	Max = 3,
	ReloadTime = 3,
}

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbbowr-base",
		States =
		{
			Normal = { Frames = { { texture = "mods/faction-Asia/weapons/snipertower/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbbowr-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbbow/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbbowr-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbbow/reload0.tga" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbbow/reload1.tga", duration = 200 },
					mipmap = true,
					duration = 0.2,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbbow/reload2.tga", duration = 0.3 },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbbowr-arrow",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbbow/reloadr1-0.tga" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.tga", duration = 200 },
					mipmap = true,
					duration = 0.2,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbbow/reloadr1-2.tga", duration = 0.3 },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
}

Root =
{
	Name = "Sniper",
	Angle = 0,
	Pivot = { 0.25, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "sbbowr-base",
	UserData = 0,

	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.25, -0.1 },
			PivotOffset = { 0.25, 0.05 },
			Sprite = "sbbowr-head",
			UserData = 0,

			ChildrenInFront =
			{
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { -0.0, -0.22},
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Arm",
					Angle = 0,
					Pivot = { 0, 0 },
					Sprite = "sbbowr-reload",
					PivotOffset = { 0, 0 },
					UserData = 0,
					
					ChildrenBehind =
					{
						{ 
							Name = "arrow",
							Angle = 0,
							Pivot = {0,0},
							PivotOffset = {0,0},
							Sprite = "sbbowr-arrow",
							UserData = 100,
						},
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { -0.40, -0.068 },
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
				{
					Name = "xmashat",
					Scale = 0.5,
					Pivot = {-0.3171, -0.2792},
					Sprite = "sbSantaHat",
					UserData = 100,
				},
				{
					Name = "pumpkin",
					Scale = 0.6,
					Pivot = {-0.2971, -0.2792},
					Sprite = "sbPumpkinHat",
					UserData = 100,
				}
			},
		},
	},
}