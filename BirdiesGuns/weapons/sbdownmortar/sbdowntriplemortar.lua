-- fort wars weapon file

Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 30.0
SelectionOffset = { 0.0, 30.5 }
--[[
RecessionBox =
{
	Size = { 200, 10 },
	Offset = { -230, -5 },
}
]]

WeaponMass = 60.0
HitPoints = 70.0
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
IgnitePlatformOnDestruct = true
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 150

CanFireUnderwater = true
FireEffect = "effects/fire_mortar_heavy.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/mortar_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = "effects/mortar_heavy_reload.lua"
ReloadEffectOffset = -1.5
Projectile = "sbdowntriplemortar1"
BarrelLength = 50.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 13
MinFireSpeed = 1600.0
MaxFireSpeed = 3600.0
MaxFireClamp = 0.8
MinFireRadius = 200.0
MaxFireRadius = 650.0
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = -85
MaxFireAngle = -45
IgnorePlatformSlope = true
DefaultFireAngle = (MinFireAngle + MaxFireAngle)/2
KickbackMean = 12
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0 -- 0.03
FireStdDevAuto = 0.012
Recoil = 100000
EnergyFireCost = 650.0
MetalFireCost = 30


ShowFireAngle = true
ShowFireSpeed = true

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
		Name = "sbdowntriplemortar-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbdownmortar/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbdowntriplemortar-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbtriplemortar/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Mortar",
	Angle = 0,
	Pivot = { 0, 0.38 },
	PivotOffset = { 0, 0 },
	Sprite = "sbdowntriplemortar-base",
	UserData = 0,
--	AllowMirror = false,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.2, -0.1 },
			PivotOffset = { 0.3, 0 },
--			Pivot = { 0, -1 },
--			PivotOffset = { 0, 1 },
			Sprite = "sbdowntriplemortar-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
--					Pivot = { 0.5, 0 },
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}
