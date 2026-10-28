dofile("weapons/cannon.lua")
Sprites = {}
HitPoints = 270
BarrelRecoilLimit = 0
BarrelRecoilSpeed = 0
BarrelReturnForce = 0
MinFireSpeed = 20000.0 
MaxFireSpeed = 20000.1
MinFireAngle = -8
MaxFireAngle = 8
MaxFireRadius = 2200.0
BarrelLength = 217.5
SelectionWidth = 185.0
SelectionHeight = 65.0
SelectionOffset = { -12, -65.5 }
FireDelay = 4.9
CutOffEffects = true
Projectile = "sbrailgun"
EnergyFireCost = 8000
MetalFireCost = 75
WeaponMass = 200
RoundsEachBurst = 1
RoundPeriod = 1.5
FireStdDev = 0.0015
FireStdDevAuto = 0.004
ReloadTime = 36
Recoil = 1800000
DeviceSplashDamage = 120
DeviceSplashDamageMaxRadius = 300
DeviceSplashDamageDelay = 0.2
StructureSplashDamage = 150
StructureSplashDamageMaxRadius = 300
IncendiaryRadius = 200
IncendiaryRadiusHeated = 240
IgnitePlatformOnDestruct = true
KickbackMean = 0
KickbackStdDev = 0
EagleEyeReloadBank =
{
	ReloadTime = 5,
}


FireEffect = path .. "/effects/fire_railgun.lua"
FireEffect_halloween = path .. "/effects/fire_railgun_halloween.lua"
ShellEffect = nil
DestroyEffect = path .. "/effects/destroy_railgun.lua"
DestroyUnderwaterEffect = DestroyEffect
ReloadEffect = path .. "/effects/reload_railgun.lua"
ReloadEffectOffset = -4.5
--ConstructEffect = "effects/device_upgrade_tier2.lua"

NodeEffects = nil

dlc2_Ammunition =
{
	{
		--Sprite = "",
		MinFireSpeed = MinFireSpeed * 0.65,
		MaxFireSpeed = MaxFireSpeed * 0.65,
		Projectile = "sbrailgunweak",
		Recoil = Recoil / 2,
		FireEffect = path .. "/effects/fire_railgun_weak.lua",
		FireEffect_halloween = path .. "/effects/fire_railgun_weak_halloween.lua",
		FireDelay = 2.4,
		ReloadTime = 21,
		EnergyFireCost = 5000,
	},
	{ 
		Sprite = "hud-context-ammo-canister",
		Devices = { {Name = "volatile_canister", Consume = true}, },
		Projectile = "sbrailgun",
	},
}

Sprites = 
{
	{
		Name = "sbrailgun_head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbrailgun/head" }, mipmap = true, }, },
			Idle = Normal,
			Normal_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunhead.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalAsia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunhead.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalBPO_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunhead.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalRussia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunhead.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalCF_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunhead.tga" }, mipmap = true, }, EventTag = "_halloween"},
			
			--Normal_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
			--NormalAsia_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
			--NormalBPO_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
			--NormalRussia_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
			--NormalCF_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
		},
	},
	{
		Name = "sbrailgun_base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbrailgun/base" }, mipmap = true, }, },
			Idle = Normal,
			Normal_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunbase.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalAsia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunbase.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalBPO_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunbase.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalRussia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunbase.tga" }, mipmap = true, }, EventTag = "_halloween"},
			NormalCF_halloween = { Frames = { { texture = path .. "/seasonal/halloween/railgunbase.tga" }, mipmap = true, }, EventTag = "_halloween"},
			
			--Normal_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
			--NormalAsia_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
			--NormalBPO_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
			--NormalRussia_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
			--NormalCF_christmas = { Frames = { { texture = path .. "/seasonal/xmas/mosin_barrel.tga" }, mipmap = true, }, EventTag = "_christmas"},
		},
	},
}
Root =
{
	Name = "Railgun",
	Angle = 0,
	Pivot = { 0, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = "sbrailgun_base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = {-0.08854166666666667, 0.0546875},
			PivotOffset = {0.0927734375, -0.24609375},
			Sprite = "sbrailgun_head",
			UserData = 50,
			
			ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = {-0.177734375, -0.03125},
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LaserSight",
							Angle = 90,
							Pivot = {0.447265625, 0.15234375},
							PivotOffset = { 0, 0 },
						},
						{
							Name = "Chamber",
							Angle = 0,
							Pivot = {-0.2744140625, -0.03125},
							PivotOffset = { 0, 0 },
						},
					},
		},
	},
}