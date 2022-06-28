-- fort wars weapon file

Scale = 1
SelectionWidth = 95.0
SelectionHeight = 40.0
SelectionOffset = { -18, 60.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, 70 },
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
DeviceSplashDamageMaxRadius = 350
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 120
IncendiaryRadiusHeated = 150
StructureSplashDamage = 200
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_sbdrone.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = path .. "/effects/reload_sbdrone.lua"
ReloadEffectOffset = -1.1
Projectile = "sbdrone"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 28
MinFireSpeed = 1300.0
MaxFireSpeed = 1300.1
MinFireRadius = 600.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -20
MaxFireAngle = 30
KickbackMean = 40
KickbackStdDev = 5
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.01
FireStdDevAuto = 0.012
Recoil = 600000
EnergyFireCost = 4000.0
MetalFireCost = 80.0
FireDelay = 0.5
--[[
TriggerProjectileAgeAction = true
MinAgeTrigger = 0.5
MaxAgeTrigger = 10.0
]]
ShowFireAngle = true

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

BarrelRecoilLimit = -0.22
BarrelRecoilSpeed = -2.4
BarrelReturnForce = 0.9

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbdowndrone-base",
		States =
		{
			Normal = { Frames = { { texture = path .."/weapons/sbdowndrone/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbdowndrone-head",
		States =
		{
			Normal = { Frames = { { texture = path .."/weapons/sbdowndrone/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbdowndrone-reload",
		States =
		{
			Normal = { Frames = { { texture = path .."/weapons/sbdowndrone/reload-1.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = 200},
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .."/weapons/sbdowndrone/reload-22.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-21.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-20.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-19.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-18.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-17.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-16.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-15.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-14.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-13.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-12.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-11.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-10.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-9.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-8.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-7.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-6.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-5.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-4.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-3.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowndrone/reload-2.png", duration = 0.05 },
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
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0.09, 0.56 },
	PivotOffset = { 0, 0 },
	Sprite = "sbdowndrone-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.02, -0.10 },
			PivotOffset = { 0.035, 0.15 },
			Sprite = "sbdowndrone-head",
			UserData = 50,
			
			ChildrenBehind =
			{
				{
					Name = "LoaderBottom",
					Angle = 0,
					Pivot = { 0,0 },
					PivotOffset = { 0, 0 },
					Sprite = "sbdowndrone-reload",
					UserData = 100,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, -0.01 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 180,
					Pivot = { -0.17, -0.15 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { 0.35, -0.32 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}
