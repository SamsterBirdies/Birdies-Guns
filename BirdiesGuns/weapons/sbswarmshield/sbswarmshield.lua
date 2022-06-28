-- fort wars weapon file

Scale = 1
SelectionWidth = 40.0
SelectionHeight = 56.0
SelectionOffset = { 0.0, -62 }
RecessionBox =
{
	Size = { 80, 25 },
	Offset = { -80, -60 },
}

WeaponMass = 80.0
HitPoints = 90.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
StructureSplashDamage = 50
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/swarmshield_fire.lua"
ShellEffect = ""
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path .. "/effects/shieldcharge.lua"
FireEndEffect = path .. ""
ReloadEffectOffset = -1.0
RetriggerFireEffect = true
Projectile = "sbswarmshield"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 28
MinFireSpeed = 4000.0
MaxFireSpeed = 4000.1
MaxFireClamp = 0.85
MinFireRadius = 350.0
MaxFireRadius = 1200.0
MinFireSpread = 8
MinVisibility = 1
MaxVisibilityHeight = 500
MinFireAngle = -50
MaxFireAngle = 50
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.6
PanDuration = 0
FireStdDev = 0.005
FireStdDevAuto = 0.005
Recoil = 20000
EnergyFireCost = 800.0
MetalFireCost = 40
ShowFireAngle = true
RoundsEachBurst = 1
RoundPeriod = 0.25
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

TriggerProjectileAgeAction = true
MinAgeTrigger = 0.3
MaxAgeTrigger = 2.5

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
		Name = "sbswarmshield-base",
		States =
		{
			Normal = { Frames = { { texture = "mods/weapon_pack/weapons/shotgun/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbswarmshield-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbswarmshield/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "flak",
	Angle = 0,
	Pivot = { 0, -0.37 },
	PivotOffset = { 0, 0 },
	Sprite = "sbswarmshield-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.1, -0.15 },
			PivotOffset = { 0.1, -0.05 },
			Sprite = "sbswarmshield-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
--[[			{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.6, -0.02 },
					PivotOffset = { 0, 0 },
					Sprite = "flak-flash",
					Visible = false,
				},
				]]
			},
		},
	},
}
