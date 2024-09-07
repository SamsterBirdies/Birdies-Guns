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

WeaponMass = 100.0
HitPoints = 120.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 300
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = true
IncendiaryRadius = 200
IncendiaryRadiusHeated = 220
StructureSplashDamage = 160
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/flamethrowerstart.lua"

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "mods/weapon_pack/effects/20mmcannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = path .. "/effects/shell_eject_20mmcannon.lua"
ReloadEffect =  path .. "/effects/reload_flamethrower.lua"
FireEndEffect = path .. "/effects/cooldown_20mmcannon.lua"
RetriggerFireEffect = false
ReloadEffectOffset = -1
FireDelay = 0.5
Projectile = "sbflames"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 30.0
MinFireSpeed = 6000.0
MaxFireSpeed = 6000.1
MinFireRadius = 600.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -40
MaxFireAngle = 40
KickbackMean = 40
KickbackStdDev = 5
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.055
FireStdDevAuto = 0.025
Recoil = 0
EnergyFireCost = 2000
MetalFireCost = 50
RoundsEachBurst = 60
RoundPeriod = 0.03
DoorCloseDelay = 1.25
AutofireCloseDoorTicks = DoorCloseDelay*25
CutOffEffects = true
ShowFireAngle = true

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

BarrelRecoilLimit = -0
BarrelRecoilSpeed = -0
BarrelReturnForce = 0.2

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbflamethrower-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbflamethrower/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbflamethrower-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbflamethrower/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbflamethrower-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbflamethrower/barrel.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0, -0.56 },
	PivotOffset = { 0, 0 },
	Sprite = "sbflamethrower-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, -0.0 },
			PivotOffset = { 0.1, -0.2 },
			Sprite = "sbflamethrower-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.515, 0.05},
					PivotOffset = { 0.5, 0 },
					Sprite = "sbflamethrower-barrel",
					UserData = 100,
					
					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0, 0.015625},
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
		},
	},
	ChildrenInFront =
	{
		{
			Name = "santahat",
			Scale = 0.5,
			Sprite = "sbHat",
			Pivot = {-0.1328125, 0.03125},
			UserData = 100,
		},
	}
}