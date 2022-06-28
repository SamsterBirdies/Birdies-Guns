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
HitPoints = 225.0
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

FireEffect = "mods/weapon_pack/effects/fire_20mmcannon.lua"
--FireEffect =  path .. "/effects/fire_sbartillery.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = path .. "/effects/shell_eject_sbquadcannon.lua"
ReloadEffect = "effects/reload_cannon.lua"
ReloadEffectOffset = -2
Projectile = "sbquadcannon"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 1.2
MinFireSpeed = 1600/1.3
MaxFireSpeed = 3600/1.3
MinFireRadius = 350.0
MaxFireRadius = 1000.0
MaxFireClamp = 0.85
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = 35
MaxFireAngle = 65
KickbackMean = 40
KickbackStdDev = 5
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.01
FireStdDevAuto = 0.012
Recoil = 300000
EnergyFireCost = 500.0
MetalFireCost = 20.0

CanOverheat = true
HeatPeriod = 0.18
CoolPeriod = 28
CoolPeriodOverheated = 18

ShowFireAngle = true
ShowFireSpeed = true

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

BarrelRecoilLimit = -0.1
BarrelRecoilSpeed = -1.5
BarrelReturnForce = 0.8

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbquadcannon-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbquadcannon/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbquadcannon-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbquadcannon/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbquadcannon-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbquadcannon/barrel.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbquadcannon-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload03.png", duration = 0.4 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload05.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload07.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload09.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload11.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload13.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload14.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload15.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbquadcannon/Cannon-Reload01.png", duration = 0.1 },
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
	Sprite = "sbquadcannon-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, -0.05 },
			PivotOffset = { 0.1, 0 },
			Sprite = "sbquadcannon-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.5, -0.15},
					PivotOffset = { 0.5, 0 },
					Sprite = "sbquadcannon-barrel",
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
			
			ChildrenInFront =
			{
				{
					Name = "LoaderBottom",
					Angle = 0,
					Pivot = { -0.41, -0.085 },
					PivotOffset = { 0, 0 },
					Sprite = "sbquadcannon-reload",
					UserData = 100,
				},
			},
		},
	},
}
