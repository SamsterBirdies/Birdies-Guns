-- fort wars weapon file

Scale = 1
SelectionWidth = 70.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -48.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -230, -50 },
}

WeaponMass = 40.0
HitPoints = 50.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/fire_caliber50.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/sniper-ap_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
ShellEffect = "effects/shell_eject_small.lua"
ReloadEffect = "effects/minigun_reload.lua"
--FireEndEffect = "mods/weapon_pack/effects/cooldown_20mmcannon.lua"
ReloadEffectOffset = -.5
Projectile = "sb50cal"
BarrelLength = 100.0
RetriggerFireEffect = true
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 9.5
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
MinFireRadius = 500.0
MaxFireRadius = 1250.0
MinVisibility = 0.3
MaxVisibilityHeight = 1000
MinFireAngle = -30
MaxFireAngle = 20
MouseSensitivityFactor = 0.6
KickbackMean = 50
KickbackStdDev = 7
PanDuration = 0
FireStdDev = 0.015
FireStdDevAuto = 0.01
Recoil = 99000
EnergyFireCost = 450.0
MetalFireCost = 25
AutofireCloseDoorTicks = 1*25
RoundsEachBurst = 10
RoundPeriod = 0.30

ShowFireAngle = true

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter


BarrelRecoilLimit = -0.10
BarrelRecoilSpeed = -3
BarrelReturnForce = 2

Sprites =
{
	{
		Name = "sb50cal-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sb50cal/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sb50cal-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sb50cal/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sb50cal-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sb50cal/barrel.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Sniper",
	Angle = 0,
	Pivot = { 0, -0.35},
	PivotOffset = { 0, 0 },
	Sprite = "sb50cal-base",
	UserData = 0,

	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.1 , -0.01 },
			PivotOffset = { 0.2, -0.2 },
			Sprite = "sb50cal-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0 },
					PivotOffset = { 0.0, 0 },
					Sprite = "sb50cal-barrel",
					UserData = 100,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { -0.17, 0.1 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { -0.3, -0.15 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { -0.17, -0.20},
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}
