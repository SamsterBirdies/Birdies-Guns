-- fort wars weapon file

Scale = 1
SelectionWidth = 95.0
SelectionHeight = 50.0
SelectionOffset = { -18, -60.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false

WeaponMass = 120.0
HitPoints = 250.0
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
FireEffect = path .. "/effects/sbimploderfire.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
ShellEffect = ""
ReloadEffect = path .. "/effects/sbimploderreload.lua"
ReloadEffectOffset = -2.3
Projectile = "sbimploder"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 32.0
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
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
FireStdDev = 0.001
FireStdDevAuto = 0.001
Recoil = 0
EnergyFireCost = 5000.0
MetalFireCost = 10.0
FireDelay = 0.65

ShowFireAngle = true

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

BarrelRecoilLimit = 0
BarrelRecoilSpeed = 0
BarrelReturnForce = 0.25

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbimploder-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbimploder/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbimploder-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbimploder/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbimploder-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbimploder/barrel.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbimploder-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbimploder/Cannon-Reload01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload03.png", duration = (ReloadTime - 1.8) },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload04.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload05.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload06.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload07.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload08.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload09.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload10.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload11.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload12.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload13.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload14.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload15.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbimploder/Cannon-Reload01.png", duration = 0.9 },
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
	Name = "sbimploder",
	Angle = 0,
	Pivot = { 0, -0.56 },
	PivotOffset = { 0, 0 },
	Sprite = "sbimploder-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, -0.05 },
			PivotOffset = { 0.1, 0 },
			Sprite = "sbimploder-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.5, -0.15},
					PivotOffset = { 0.5, 0 },
					Sprite = "sbimploder-barrel",
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
					Sprite = "sbimploder-reload",
					UserData = 100,
				},
			},
		},
	},
}
