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

FireEffect = "effects/sniper-ap_flash.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/sniper-ap_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
ShellEffect = "effects/shell_eject_sniper_ap.lua"
ReloadEffect = "effects/sniper_ap_reload.lua"
ReloadEffectOffset = -.5
Projectile = "sniper2"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 1
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
FireStdDev = 0.005
FireStdDevAuto = 0.01
Recoil = 50000
EnergyFireCost = 200.0
MetalFireCost = 3
AutofireCloseDoorTicks = 1*25

CanOverheat = true
HeatPeriod = 0.18
CoolPeriod = 30
CoolPeriodOverheated = 20.0

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

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Sprites =
{
	{
		Name = "sbsniper-ap-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbtriplesniper/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbsniper-ap-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbtriplesniper/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbsniper-ap-arm",
		States =
		{
			Normal = { Frames = { { texture = "weapons/snipertower/Sniper-ReloadAnim01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					
					{ texture = "weapons/snipertower/Sniper-ReloadAnim03.png", duration = ReloadTime * 0.1 },
				
					{ texture = "weapons/snipertower/Sniper-ReloadAnim05.png", duration = ReloadTime * 0.1},
				
					{ texture = "weapons/snipertower/Sniper-ReloadAnim07.png", duration = ReloadTime * 0.1 },
				
					{ texture = "weapons/snipertower/Sniper-ReloadAnim09.png", duration = ReloadTime * 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim10.png", duration = ReloadTime * 0.1 },
					{ texture = "weapons/snipertower/Sniper-ReloadAnim11.png", duration = ReloadTime * 0.1 },
					
					{ texture = "weapons/snipertower/Sniper-ReloadAnim13.png", duration = ReloadTime * 0.1 },
				
					{ texture = "weapons/snipertower/Sniper-ReloadAnim15.png", duration = ReloadTime * 0.1 },
				
					{ texture = "weapons/snipertower/Sniper-ReloadAnim17.png", duration = ReloadTime * 0.1 },
		
					{ texture = "weapons/snipertower/Sniper-ReloadAnim19.png", duration = ReloadTime * 0.1 },
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
	Sprite = "sbsniper-ap-base",
	UserData = 0,

	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.25, -0.1 },
			PivotOffset = { 0.25, 0.05 },
			Sprite = "sbsniper-ap-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Arm",
					Angle = 0,
					Pivot = { -0.185, -0.08 },
					Sprite = "sbsniper-ap-arm",
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
				{
					Name = "xmashat",
					Scale = 0.5,
					Pivot = {-0.3171, -0.2792},
					Sprite = "sbHat",
					UserData = 100,
				}
			},
		},
	},
}