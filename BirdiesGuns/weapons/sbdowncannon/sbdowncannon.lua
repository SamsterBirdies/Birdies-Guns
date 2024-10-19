-- fort wars weapon file
dofile(path .. "/scripts/sb/lua")
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
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 120
IncendiaryRadiusHeated = 150
StructureSplashDamage = 200
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_downcannon.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = ""
ReloadEffectOffset = -2
Projectile = "sbdowncannon"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 1.7
MinFireSpeed = 6000.0
MaxFireSpeed = 6000.1
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
EnergyFireCost = 1200.0
MetalFireCost = 33.0

CanOverheat = true
HeatPeriod = 0.18
CoolPeriod = 35
CoolPeriodOverheated = 25.0

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

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
		Name = "sbdowncannon-base",
		States =
		{
			Normal = { Frames = { { texture = path .."/weapons/sbdowncannon/base.tga" }, mipmap = true, }, },
			Idle = Normal,
			Normal_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_base.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalAsia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_base.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalBPO_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_base.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalRussia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_base.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalCF_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_base.tga" }, mipmap = true, }, EventTag = "_halloween"},
		},
	},
	{
		Name = "sbdowncannon-head",
		States =
		{
			Normal = { Frames = { { texture = path .."/weapons/sbdowncannon/head.tga" }, mipmap = true, }, },
			Idle = Normal,
			Normal_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_head.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalAsia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_head.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalBPO_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_head.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalRussia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_head.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalCF_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_head.tga" }, mipmap = true, }, EventTag = "_halloween"},
		},
	},
	{
		Name = "sbdowncannon-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .."/weapons/sbdowncannon/barrel.tga" }, mipmap = true, }, },
			Idle = Normal,
			Normal_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_barrel.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalAsia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_barrel.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalBPO_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_barrel.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalRussia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_barrel.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalCF_halloween = { Frames = { { texture = path .. "/seasonal/halloween/downcannon_barrel.tga" }, mipmap = true, }, EventTag = "_halloween"},
		},
	},
	{
		Name = "sbdowncannon-reload",
		States =
		{
			Normal = { Frames = { { texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload03.png", duration = 0.5 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload04.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload05.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload06.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload07.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload08.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload09.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload10.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload11.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload12.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload13.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload14.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload15.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.05 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.1 },
					{ texture = path .."/weapons/sbdowncannon/Cannon-Reload01.png", duration = 0.1 },
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
	Pivot = { 0, 0.56 },
	PivotOffset = { 0, 0 },
	Sprite = "sbdowncannon-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, 0.05 },
			PivotOffset = { 0.1, 0.13 },
			Sprite = "sbdowncannon-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.5, 0.15},
					PivotOffset = { 0.5, -0.575 },
					Sprite = "sbdowncannon-barrel",
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
							Angle = 180,
							Pivot = { -0.17, -0.15 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LaserSight",
							Angle = 90,
							Pivot = { 0.27, -0.35 },
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
					Pivot = { -0.41, -0.158 },
					PivotOffset = { 0, 0 },
					Sprite = "sbdowncannon-reload",
					UserData = 100,
				},
			},
		},
	},
	ChildrenInFront =
	{
		{
			Name = "santahat",
			Scale = 0.4,
			Sprite = "sbSantaHat",
			Pivot = {-0.098, -0.2265},
			UserData = 100,
		},
		{
			Name = "pumpkin",
			Scale = 0.5,
			Sprite = "sbPumpkinHat",
			Pivot = {-0.098, -0.2265},
			UserData = 100,
		}
	}
}