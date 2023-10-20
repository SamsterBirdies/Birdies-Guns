Scale = 1
SelectionWidth = 40.0
SelectionHeight = 56.0
SelectionOffset = { 0.0, -62 }
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 80.0
HitPoints = 130.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_sbfog.lua"
ShellEffect = ""
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path .. "/effects/reload_sbfog.lua"
ReloadEffectOffset = -0.5
Projectile = "sbfog"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 25.5
MinFireSpeed = 2600.0
MaxFireSpeed = 2600.1
MinFireRadius = 500.0
MaxFireRadius = 1000.0
MinFireSpread = 8
MinVisibility = 0.25
MaxVisibilityHeight = 500
MinFireAngle = -50
MaxFireAngle = 50
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.04
FireStdDevAuto = 0.05
Recoil = 20000
EnergyFireCost = 700.0
MetalFireCost = 30
ShowFireAngle = true
ShowFireSpeed = true
RoundsEachBurst = 108
RoundPeriod = 0.12
UniformSpray = false
BeamDuration = 0.0499
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
DoorCloseDelay = 1.25
AutofireCloseDoorTicks = DoorCloseDelay*25
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
		Name = "sbfog-base",
		States =
		{
			Normal = { Frames = { { texture = "mods/weapon_pack/weapons/shotgun/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbfog-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbfog/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "flak",
	Angle = 0,
	Pivot = { 0, -0.37 },
	PivotOffset = { 0, 0 },
	Sprite = "sbfog-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.1, -0.15 },
			PivotOffset = { 0.1, -0.05 },
			Sprite = "sbfog-head",
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
			},
		},
	},
}
function sbApplyXmas()
	Root.ChildrenInFront[1].ChildrenInFront =
	{
		{
			Name = "reef",
			Scale = 1,
			Angle = 90,
			Pivot = {0,0},
			Sprite = path .. "/seasonal/xmas/reef.png",
			UserData = 100,
		},
	}
end
function sbApplyHalloween()
	FireEffect = path .. "/effects/fire_sbfog_halloween.lua"
	Root.ChildrenInFront[1].ChildrenInFront =
	{
		{
			Name = "witch_hat",
			Scale = 1.5,
			Angle = 0,
			Pivot = {-0.05,-0.7},
			Sprite = path .. "/seasonal/halloween/witch_hat.png",
			UserData = 100,
		},
	}
end