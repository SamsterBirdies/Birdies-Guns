-- fort wars weapon file

Scale = 1
SelectionWidth = 70.0
SelectionHeight = 42.0
SelectionOffset = { -40.0, -48.5 }
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

FireEffect = "effects/sniper_flash.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/sniper_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
ShellEffect = "effects/shell_eject_sniper.lua"
ReloadEffect = "effects/sniper_reload.lua"
ReloadEffectOffset = -.5
Projectile = "sniper"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 9
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
MinFireRadius = 500.0
MaxFireRadius = 1300.0
MinVisibility = 0.3
MaxVisibilityHeight = 1000
MinFireSpread = 8
MinFireAngle = -50
MaxFireAngle = 60
KickbackMean = 35
KickbackStdDev = 7
MouseSensitivityFactor = 0.6
PanDuration = 0
FireStdDev = 0.015
FireStdDevAuto = 0.05
Recoil = 50000
EnergyFireCost = 800.0
MetalFireCost = 12
AutofireCloseDoorTicks = 2*25
RoundsEachBurst = 3
RoundPeriod = 0
UniformSpray = true

ShowFireAngle = true

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

LaserScale = 1.2
LaserSightSolid = "laser_sight"
LaserSightDashed = "laser_sight_dashed"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbshotgunpoopsnipertower-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbtriplesniper/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbshotgunpoopsnipertower-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbshotgunsniper/barrel.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbshotgunpoopsnipertower-arm",
		States =
		{
			Normal = { Frames = { { texture = "weapons/snipertower/Sniper-ReloadAnim01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = "weapons/snipertower/Sniper-ReloadAnim01.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim02.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim03.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim04.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim05.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim06.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim07.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim08.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim09.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim10.png", duration = 100 },
					mipmap = true,
					duration = 0.2,
				},

			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = "weapons/snipertower/Sniper-ReloadAnim11.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim12.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim13.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim14.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim15.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim16.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim17.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim18.png", duration = 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim19.png", duration = 0.1 },
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
	Name = "Sniper",
	Angle = 0,
	Pivot = { 0.25, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "sbshotgunpoopsnipertower-base",
	UserData = 0,

	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.25, -0.1 },
			PivotOffset = { 0.25, 0.05 },
			Sprite = "sbshotgunpoopsnipertower-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Arm",
					Angle = 0,
					Pivot = { -0.185, -0.08 },
					Sprite = "sbshotgunpoopsnipertower-arm",
					PivotOffset = { 0, 0 },
					UserData = 100,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { -0.17, -0.15 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { -0.04, -0.2 },
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
}
