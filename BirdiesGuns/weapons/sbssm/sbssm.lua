-- fort wars weapon file

Scale = 1
SelectionWidth = 80.0
SelectionHeight = 50.0
SelectionOffset = { -18, -60.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false

WeaponMass = 120.0
HitPoints = 300.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 120
IncendiaryRadiusHeated = 150
StructureSplashDamage = 200
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/sbfirerocket_launch.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
ShellEffect = ""
ReloadEffect = path .. "/effects/reload_rocketbattery.lua"
RetriggerFireEffect = true
ReloadEffectOffset = -1.6
Projectile = "sbssm"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 40
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
MinFireRadius = 600.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = 55
MaxFireAngle = 83
KickbackMean = 40
KickbackStdDev = 5
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.005
FireStdDevAuto = 0.000
Recoil = 30000
EnergyFireCost = 2700.0
MetalFireCost = 60.0
RoundsEachBurst = 10
RoundPeriod = 0.45

CanOverheat = false
HeatPeriod = 7.0
CoolPeriod = 999999
CoolPeriodOverheated = 44.4

ShowFireAngle = true
ShowFireSpeed = false

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

BarrelRecoilLimit = -0.0
BarrelRecoilSpeed = -0.0
BarrelReturnForce = 0.0

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbssm-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbssm/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbssm-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbssm/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbssm-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbssm/barrel.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbssm-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbssm/Cannon-Reload01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbssm/Cannon-Reload03.png", duration = 0.4 },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0, -0.56 },
	PivotOffset = { 0, 0 },
	Sprite = "sbssm-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, -0.0 },
			PivotOffset = { 0.1 , 0.1 },
			Sprite = "sbssm-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.5, -0.15},
					PivotOffset = { 0.5, 0 },
					Sprite = "sbssm-barrel",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0, 0.05 },
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
		},
	},
}
