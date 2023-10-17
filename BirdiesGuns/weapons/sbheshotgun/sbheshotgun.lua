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
HitPoints = 150.0
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

FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = "mods/weapon_pack/effects/reload_shotgun.lua"
ReloadEffectOffset = -0.5
Projectile = "sbheshotgun"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 13
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
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
FireStdDev = 0.015
FireStdDevAuto = 0.05
Recoil = 20000
EnergyFireCost = 1500.0
MetalFireCost = 50
ShowFireAngle = true
RoundsEachBurst = 12
RoundPeriod = 0
UniformSpray = true
BeamDuration = 0.05
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
		Name = "sbheshotgun-base",
		States =
		{
			Normal = { Frames = { { texture = "mods/weapon_pack/weapons/shotgun/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbheshotgun-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbheshotgun/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbheshotgun-reload",
		States =
		{
			Normal = { Frames = { { texture = "mods/weapon_pack/weapons/shotgun/barrel01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = "mods/weapon_pack/weapons/shotgun/barrel01.png", duration = 0.5 },
					{ texture = "mods/weapon_pack/weapons/shotgun/barrel02.png", duration = 0.1 },
					{ texture = "mods/weapon_pack/weapons/shotgun/barrel03.png", duration = 0.1 },
					{ texture = "mods/weapon_pack/weapons/shotgun/barrel04.png", duration = 0.1 },
					{ texture = "mods/weapon_pack/weapons/shotgun/barrel05.png", duration = 0.1 },
					{ texture = "mods/weapon_pack/weapons/shotgun/barrel04.png", duration = 100 },
					mipmap = true,
					duration = ReloadFramePeriod,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = "mods/weapon_pack/weapons/shotgun/barrel03.png", duration = 0.1 },
					{ texture = "mods/weapon_pack/weapons/shotgun/barrel02.png", duration = 0.1 },
					mipmap = true,
					duration = ReloadFramePeriod,
				},
				NextState = "Normal",
			},
		},
	},
}

Root =
{
	Name = "Shotgun",
	Angle = 0,
	Pivot = { 0, -0.37 },
	PivotOffset = { 0, 0 },
	Sprite = "sbheshotgun-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.14, -0.1 },
			PivotOffset = { -0.05, -0.13 },
			Sprite = "sbheshotgun-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Reload",
					Angle = 0,
					Pivot = { 0.09, -0.05 },
					Sprite = "sbheshotgun-reload",
					PivotOffset = { 0, 0 },
					UserData = 50,
				},
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
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { 0.26, -0.3 },
					PivotOffset = { 0, 0 },
				},
--[[				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.6, 0 },
					PivotOffset = { 0, 0 },
					Sprite = "shotgun-flash",
					Visible = false,
				},
]]
			},
		},
	},
	ChildrenInFront =
	{
	},
}
function sbApplyXmas()
	table.insert(Root.ChildrenBehind[1].ChildrenInFront,
	{
		Name = "xmashat",
		Scale = 0.5,
		Pivot = {-0.22, -0.4},
		Sprite = path .. "/seasonal/xmas/santahat.png",
		UserData = 100,
	})
end
function sbApplyHalloween()
	table.insert(Root.ChildrenBehind[1].ChildrenInFront,
	{
		Name = "pumpkin",
		Scale = 0.5,
		Pivot = {-0.17, -0.35},
		Sprite = path .. "/seasonal/halloween/pumpkin_hat.png",
		UserData = 100,
	})
end