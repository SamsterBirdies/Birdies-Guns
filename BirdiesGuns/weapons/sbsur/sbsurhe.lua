dofile(path .. "/scripts/sb.lua")
Scale = 1
SelectionWidth = 40.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -45.5 }
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -42.5, -40 },
}

WeaponMass = 80.0
HitPoints = 130.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/sbfirerocket_launch.lua"
ShellEffect = nil
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = ""
ReloadEffectOffset = 0
Projectile = "sbsurhe"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = sbinfinity
MinFireSpeed = 500.0
MaxFireSpeed = 500.1
MinFireRadius = 500.0
MaxFireRadius = 1000.0
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -50
MaxFireAngle = 50
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 0
FireStdDev = 0
FireStdDevAuto = 0
Recoil = 20000
EnergyFireCost = 0.0
MetalFireCost = 0
ShowFireAngle = true
RoundsEachBurst = 1
RoundPeriod = 0.0001
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25
EMPRadius = 140
EMPDuration = 7

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
		Name = "sbsurhe-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbsur/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbsurhe-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbsur/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbsurhe-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbsur/projectilehe.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = sbinfinity, },
					mipmap = true,
					duration = ReloadFramePeriod,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbsurhe-reload-armoured",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbsur/armorprojectilehe.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = sbinfinity, },
					mipmap = true,
					duration = ReloadFramePeriod,
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
	Name = "rocketemp",
	Angle = 0,
	Pivot = { 0, -0.42 },
	PivotOffset = { 0, 0 },
	Sprite = "sbsurhe-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.14, -0.065},
			PivotOffset = { 0.12, 0.08 },
			Sprite = "sbsurhe-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Reload",
					Angle = 90,
					Pivot = { -0.04, -0.21 },
					PivotOffset = { 0, 0 },
					Sprite = "sbsurhe-reload",
					UserData = 100,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, -0.250 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.0, 0.0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { -0.135, -0.21 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
	},
}
