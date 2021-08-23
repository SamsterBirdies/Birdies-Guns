Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 70.0
SelectionOffset = { 0.0, -70.5 }
--[[
RecessionBox =
{
	Size = { 200, 10 },
	Offset = { -230, -5 },
}
]]

WeaponMass = 90.0
HitPoints = 140.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
--DeviceSplashDamage = 125
--DeviceSplashDamageMaxRadius = 250
--DeviceSplashDamageDelay = 0.2
DeviceSplashDamage = 175
DeviceSplashDamageMaxRadius = 370
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = false
StructureSplashDamage = 210
StructureSplashDamageMaxRadius = 170
EMPRadius = 320
EMPDuration = 10

FireEffect = path .. "/effects/fire_sboilgunemp.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/barrel_explode.lua"
ReloadEffect = path .. "/effects/reload_sboilgun.lua"
ReloadEffectOffset = -0.4
RetriggerFireEffect = true
Projectile = "sboildrumprojectileshock"
BarrelLength = 50.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 18
ReloadTimeIncludesBurst = false
MinFireSpeed = 4500.0
MaxFireSpeed = 4500.1

MinFireRadius = 200.0
MaxFireRadius = 500.0
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = 60
MaxFireAngle = 89
IgnorePlatformSlope = true
DefaultFireAngle = (MinFireAngle + MaxFireAngle)/2
KickbackMean = 12
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.0 -- 0.03
FireStdDevAuto = 0.012
Recoil = 600000
EnergyFireCost = 500.0
MetalFireCost = 30


ShowFireAngle = true
ShowFireSpeed = false

ParachuteDelayMean = 200
ParachuteDelayStdDev = 0.15
ParachuteDrag = 10.0

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

Sprites =
{
	{
		Name = "sboilgunemp-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sboildrum/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sboilgunemp-base2",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sboildrum/base2.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sboilgunemp-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sboildrum/headempbase.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sboilgunemp-led",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sboildrum/headglow2.tga" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = ReloadTime},
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
	Name = "Mortar",
	Angle = 0,
	Pivot = { 0, -0.47 },
	PivotOffset = { 0, 0 },
	Sprite = "sboilgunemp-base",
	UserData = 0,
--	AllowMirror = false,
	ChildrenInFront =
	{
		{
			Name = "base2",
			Angle = 0,
--			Pivot = { 0.5, 0 },
			Pivot = { 0.0, 0 },
			PivotOffset = { 0, 0 },
			UserData = 0,
			Sprite = "sboilgunemp-base2",
		},
	},
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.0765, 0.166 },
			PivotOffset = { 0.224, 0.0086 },
--			Pivot = { 0, -1 },
--			PivotOffset = { 0, 1 },
			Sprite = "sboilgunemp-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
--					Pivot = { 0.5, 0 },
					Pivot = { 0.1, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "led",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
					UserData = 100,
					Sprite = "sboilgunemp-led",
				},
			},
		},
	},
}
