Scale = 1
SelectionWidth = 95.0
SelectionHeight = 45.0
SelectionOffset = { 0, -60.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}

WeaponMass = 80.0
HitPoints = 150.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
IncendiaryRadius = 50
IncendiaryRadiusHeated = 60
StructureSplashDamage = 70
StructureSplashDamageMaxRadius = 170

FireEffect = nil
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/missile_explode.lua"
ReloadEffect =  path .. "/effects/reload_helicopter.lua"
ReloadEffectOffset = -0.5
Projectile = "sbspookcopter"
BarrelLength = 0.0
MinFireClearance = 1000
FireClearanceOffsetInner = 40
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 12
ReloadTime = 30.0
MinFireSpeed = 5.0
MaxFireSpeed = 110.0
MinFireRadius = 200.0
MaxFireRadius = 20000.0
ShowAimingGizmo = false
ForceFireAngle = 0
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = -10
MaxFireAngle = 10
KickbackMean = 0
KickbackStdDev = 0
PanDuration = 0
FireDelay = 2.95
FireStdDev = 0
FireStdDevAuto = 0
MissileDisruptionMin = 0.5
MissileDisruptionStdDevMin = 400
MissileDisruptionStdDevMax = 600
Recoil = 200000
EnergyFireCost = 2000.0
MetalFireCost = 50.0
DoorCloseDelay = 1.0

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
		Name = "sbspookcopter-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbhelicopter/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbspookcopter-heli",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbhelicopter/heli.png", colour = { 0.7, 0.8, 1.0, 0.3 } }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = 15  },
					{ texture = path .. "/weapons/sbhelicopter/heli.png", colour = { 0.7, 0.8, 1.0, 0.3 }, duration = 16  },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbspookcopter-rotor",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbhelicopter/rotor.png", colour = { 0.7, 0.8, 1.0, 0.3 } }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = 20  },
					{ texture = path .. "/weapons/sbhelicopter/rotor.png", colour = { 0.7, 0.8, 1.0, 0.3 }, duration = 11  },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbspookcopter-wing",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbhelicopter/wing.png", colour = { 0.7, 0.8, 1.0, 0.3 } }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = 25  },
					{ texture = path .. "/weapons/sbhelicopter/wing.png", colour = { 0.7, 0.8, 1.0, 0.3 }, duration = 6  },
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
	Name = "base",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "sbspookcopter-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "heli",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0},
			Sprite = "sbspookcopter-heli",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "rotor",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
					Sprite = "sbspookcopter-rotor",
					UserData = 100,
				},
				{
					Name = "wing",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
					Sprite = "sbspookcopter-wing",
					UserData = 75,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0, 0.0 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
	},
}
