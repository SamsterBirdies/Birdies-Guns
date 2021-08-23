-- fort wars weapon file

Scale = 1
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }


WeaponMass = 100.0
HitPoints = 30.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 200
DeviceSplashDamageDelay = 0.2
StructureSplashDamage = 100
StructureSplashDamageMaxRadius = 120
IgnitePlatformOnDestruct = true

FireEffect = path .. "/effects/fire_periscope.lua"
ShellEffect = ""
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
FireEndEffect = path .. "/effects/end_periscope.lua"
ReloadEffect = path .. "/effects/reload_periscope2.lua"
ReloadEffectOffset = -1.25
Projectile = "sbbigminigun"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
RetriggerFireEffect = true
ReloadTime = 35
ReloadTimeIncludesBurst = false
MinFireSpeed = 7600.0
MaxFireSpeed = 7600.1
MinFireRadius = 500.0
MaxFireRadius = 1000.0
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -35
MaxFireAngle = 55
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
--FireStdDev = 0.031
FireStdDev = 0.02
FireStdDevAuto = 0.005
Recoil = 20000
EnergyFireCost = 2500.0
MetalFireCost = 60
ShowFireAngle = true
RoundsEachBurst = 12
--RoundsEachBurst = 2
RoundPeriod = 0.65
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
AutofireCloseDoorTicks = 4*25

CanOverheat = false
HeatPeriod = 10
CoolPeriod = 999
CoolPeriodOverheated = 30

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
		Name = "sbperiscope1-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbperiscope/base.tga" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbperiscope/base.tga", duration = 100},
					mipmap = true,
					duration = 0.2,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbperiscope/base-0.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-2.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-4.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-6.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-8.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-10.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-12.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-14.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-16.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-18.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-20.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base-22.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/base.tga", duration = 0.65 },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbperiscope1-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbperiscope/head1.tga" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbperiscope/head1.tga", duration = 0.2 },
					{ texture = path .. "/weapons/sbperiscope/head1-26.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/head1-24.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/head1-22.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/head1-28.tga", duration = 0.05 },
					{ texture = path .. "/weapons/sbperiscope/head1-0.tga", duration = 200 },
					mipmap = true,
					duration = 0.2,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbperiscope/head1-2.tga",  },
					{ texture = path .. "/weapons/sbperiscope/head1-4.tga",  },
					{ texture = path .. "/weapons/sbperiscope/head1-6.tga",  },
					{ texture = path .. "/weapons/sbperiscope/head1-8.tga",  },
					{ texture = path .. "/weapons/sbperiscope/head1-10.tga", },
					{ texture = path .. "/weapons/sbperiscope/head1-12.tga", },
					{ texture = path .. "/weapons/sbperiscope/head1-14.tga", },
					{ texture = path .. "/weapons/sbperiscope/head1-16.tga", },
					{ texture = path .. "/weapons/sbperiscope/head1-18.tga", },
					{ texture = path .. "/weapons/sbperiscope/head1-20.tga", },
					{ texture = path .. "/weapons/sbperiscope/head1-22.tga", },
					{ texture = path .. "/weapons/sbperiscope/head1-24.tga", },
					{ texture = path .. "/weapons/sbperiscope/head1-26.tga", },
					mipmap = true,
					duration = 0.05,
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
	Name = "Machinegun",
	Angle = 0,
	Pivot = { 0, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = "sbperiscope1-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0016, -0.4633},
			PivotOffset = { 0.0167, -0.2667 },
			Sprite = "sbperiscope1-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { 0.45, -0.02},
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
	},
}
