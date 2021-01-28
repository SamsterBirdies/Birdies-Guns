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
HitPoints = 550.0
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

FireEffect = path .. "/effects/fire_sbsaw.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
ReloadEffect = path .. "/effects/reload_saw.lua"
ReloadEffectOffset = -2
Projectile = "sbsaw"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 20.0
MinFireSpeed = 500.0
MaxFireSpeed = 500.1
FireDelay = 0.8
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
EnergyFireCost = 3330.0
MetalFireCost = 75.0

ShowFireAngle = true

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
		Name = "sbsawcannon-base",
		States =
		{
			Normal = { Frames = { { texture = "mods/weapon_pack/weapons/cannon/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbsawcannon-head",
		States =
		{
			Normal = { Frames = { { texture = path .."/weapons/sbsaw/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbsawcannon-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbsaw/reload1-8.tga" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbsaw/reload1-0-4.png", duration = ReloadTime - 2.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-0-3", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-0-2", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-0-1", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-0", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-1", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-2", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-3", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-4", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-5", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-6", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-7", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload1-8", duration = 1.1 },
					
					
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbsawcannon-reload2",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbsaw/reload2-12" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = ReloadTime - 1.2 },
					{ texture = path .. "/weapons/sbsaw/reload2-0", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-1", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-2", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-3", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-4", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-5", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-6", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-7", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-8", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-9", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-10", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-11", duration = 0.1 },
					{ texture = path .. "/weapons/sbsaw/reload2-12", duration = 5.0 },
					
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
	Pivot = { 0, -0.56 },
	PivotOffset = { 0, 0 },
	Sprite = "sbsawcannon-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, -0.05 },
			PivotOffset = { 0.1, 0 },
			Sprite = "sbsawcannon-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0, 0},
					PivotOffset = { 0, 0 },
					Sprite = "sbsawcannon-reload",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0, -0.15 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "Chamber",
							Angle = 0,
							Pivot = { -0.17, -0.15 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LoaderBottom",
							Angle = 0,
							Pivot = { 0, 0 },
							PivotOffset = { 0, 0 },
							Sprite = "sbsawcannon-reload2",
							UserData = 100,
						},
					},
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { -0.35, -0.075},
					PivotOffset = { 0, 0 },
				},
			},
			
		},
	},
}
