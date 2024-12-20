sbBGpath = path
Scale = 1
SelectionWidth = 63.75
SelectionHeight = 75.0
SelectionOffset = { 0.0, -80.5 }
RecessionBox =
{
	Size = { 25, 1000 },
	Offset = { 0, -1050 },
	AutoCreateDoor = false,
}
CanFlip = false

WeaponMass = 60.0
HitPoints = 150.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/sbrmempfire.lua"
FireEffect_halloween = path .. "/effects/sbrmempfire_halloween.lua"
FireEffect_christmas = path .. "/effects/sbrmempfire_xmas.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/missile_explode.lua"
ReloadEffect = "effects/silo_reload.lua"
ReloadEffectOffset = -2.5
Projectile = "sbrmemp"
BarrelLength = 50.0
MinFireClearance = 1000
FireClearanceOffsetInner = 40
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 12
ReloadTime = 26.5
MinFireSpeed = 5.0
MaxFireSpeed = 110.0
MinFireRadius = 200.0
MaxFireRadius = 20000.0
ShowAimingGizmo = false
ForceFireAngle = 90
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = 86
MaxFireAngle = 94
KickbackMean = 0
KickbackStdDev = 0
PanDuration = 0
FireDelay = 3.5
FireStdDev = 0
FireStdDevAuto = 0
MissileDisruptionMin = 0.5
MissileDisruptionStdDevMin = 400
MissileDisruptionStdDevMax = 600
Recoil = 200000
EnergyFireCost = 1500.0
MetalFireCost = 20.0
DoorCloseDelay = 1.0
RoundsEachBurst = 2
RoundPeriod = 0.01

Sprites =
{
	{
		Name = "sbrmemp-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbrm/baseemp.tga" }, mipmap = true, }, },
			Normal_halloween = { Frames = { { texture = path .. "/seasonal/halloween/baseemp.png" }, mipmap = true, }, EventTag = "_halloween" },
			NormalAsia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/baseemp.png" }, mipmap = true, }, EventTag = "_halloween" },
			NormalBPO_halloween = { Frames = { { texture = path .. "/seasonal/halloween/baseemp.png" }, mipmap = true, }, EventTag = "_halloween" },
			NormalRussia_halloween = { Frames = { { texture = path .. "/seasonal/halloween/baseemp.png" }, mipmap = true, }, EventTag = "_halloween" },
			NormalCF_halloween = { Frames = { { texture = path .. "/seasonal/halloween/baseemp.png" }, mipmap = true, }, EventTag = "_halloween" },
		},
	},
}

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}
--[[
Trail =
{
	Texture = "objects/projectiles/missile/trail",
	Width = 20,
	Length = 3,
	KeyframePeriod = 0.05,
	RepeatRate = 0.001,
	ScrollRate = 0,
	FattenRate = 25,
}
]]
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Root =
{
	Name = "Missile",
	Angle = 0,
	Pivot = { 0, -0.52 },
	PivotOffset = { 0, 0 },
	Sprite = "sbrmemp-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Hardpoint0",
			Angle = 0,
			Pivot = { 0, 0.0 }, -- modify this to adjust height of spawned projectile
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Chamber",
			Angle = 0,
			Pivot = { 0, -0.2 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Flightpath",
			Pivot = { 0.0, -0.75 },
			Sprite = "missile-flightpath",
			UserData = 100,
			Visible = false,
		},
	},
	ChildrenInFront =
	{
		{
			Name = "Reef",
			Scale = 1.25,
			Pivot = {0,0},
			Sprite = "sbReef",
			UserData = 100,
		}
	}
}