Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 70.0
SelectionOffset = { 0.0, -70.5 }
--[[
RecessionBox =
{
	Size = { 200, 10 },
	Offset = { -230, -5 },
}
]]

WeaponMass = 90.0
HitPoints = 140.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
--DeviceSplashDamage = 125
--DeviceSplashDamageMaxRadius = 250
--DeviceSplashDamageDelay = 0.2
DeviceSplashDamage = 175
DeviceSplashDamageMaxRadius = 370
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = false
StructureSplashDamage = 210
StructureSplashDamageMaxRadius = 170

FireEffect = path .. "/effects/fire_sboilgun.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/barrel_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ReloadEffect = path .. "/effects/reload_sboilgun.lua"
ReloadEffectOffset = -0.4
RetriggerFireEffect = true
Projectile = "sboildrumprojectile"
BarrelLength = 50.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 18
ReloadTimeIncludesBurst = false
MinFireSpeed = 3000.0
MaxFireSpeed = 4500.1
MaxFireClamp = 0.8
MinFireRadius = 200.0
MaxFireRadius = 500.0
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = 60
MaxFireAngle = 89
IgnorePlatformSlope = true
DefaultFireAngle = (MinFireAngle + MaxFireAngle)/2
KickbackMean = 12
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.0 -- 0.03
FireStdDevAuto = 0.012
Recoil = 900000
EnergyFireCost = 1000.0
MetalFireCost = 40


ShowFireAngle = true
ShowFireSpeed = true

ParachuteDelayMean = 200
ParachuteDelayStdDev = 0.15
ParachuteDrag = 10.0

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

Sprites =
{
	{
		Name = "sboilgun-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sboildrum/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sboilgun-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sboildrum/headbase.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sboilgun-led",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sboildrum/headglow1.tga" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = ReloadTime},
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
	Name = "Mortar",
	Angle = 0,
	Pivot = { 0, -0.47 },
	PivotOffset = { 0, 0 },
	Sprite = "sboilgun-base",
	UserData = 0,
--	AllowMirror = false,
	ChildrenInFront = {},
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.0765, 0.166 },
			PivotOffset = { 0.224, 0.0086 },
--			Pivot = { 0, -1 },
--			PivotOffset = { 0, 1 },
			Sprite = "sboilgun-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
--					Pivot = { 0.5, 0 },
					Pivot = { 0.1, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "led",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
					Sprite = "sboilgun-led",
					UserData = 100,
				},
			},
		},
	},
}
function sbApplyXmas()
	table.insert(Root.ChildrenInFront,
	{
		Name = "xmashat",
		Scale = 0.35,
		Pivot = {0.197, -0.12469},
		Sprite = path .. "/seasonal/xmas/santahat.png",
		UserData = 100,
	})
end