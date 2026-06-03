dofile("weapons/cannon.lua")
Sprites = {}
HitPoints = 270
BarrelRecoilLimit = 0
BarrelRecoilSpeed = 0
BarrelReturnForce = 0
MinFireSpeed = 20000.0 
MaxFireSpeed = 20000.1
MinFireAngle = -5
MaxFireAngle = 8
BarrelLength = 217.5
SelectionWidth = 185.0
SelectionHeight = 65.0
SelectionOffset = { -12, -65.5 }
FireDelay = 4.9
CutOffEffects = true
Projectile = "sbrailgun"
EnergyFireCost = 10000
MetalFireCost = 75
WeaponMass = 200
RoundsEachBurst = 1
RoundPeriod = 1.5
FireStdDev = 0.0015
FireStdDevAuto = 0.004
ReloadTime = 40
Recoil = 1800000
DeviceSplashDamage = 120
DeviceSplashDamageMaxRadius = 300
DeviceSplashDamageDelay = 0.2
StructureSplashDamage = 150
StructureSplashDamageMaxRadius = 300
IncendiaryRadius = 200
IncendiaryRadiusHeated = 240
IgnitePlatformOnDestruct = true
EagleEyeReloadBank =
{
	ReloadTime = 5,
}


FireEffect = path .. "/effects/fire_railgun.lua"
ShellEffect = nil
DestroyEffect = path .. "/effects/destroy_railgun.lua"
ReloadEffect = path .. "/effects/reload_railgun.lua"
ReloadEffectOffset = -4.5

Root =
{
	Name = "Railgun",
	Angle = 0,
	Pivot = { 0, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = path .. "/weapons/sbrailgun/base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = {-0.08854166666666667, 0.0546875},
			PivotOffset = {0.0927734375, -0.24609375},
			Sprite = path .. "/weapons/sbrailgun/head",
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