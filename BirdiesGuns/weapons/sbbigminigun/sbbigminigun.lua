-- fort wars weapon file
sbBGpath = path
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

WeaponMass = 120.0
HitPoints = 370.0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 400
StructureSplashDamage = 160
StructureSplashDamageMaxRadius = 150
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/fire_sbbigminigun.lua"
ShellEffect = path .. "/effects/shell_eject_bigminigun.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/minigun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ReloadEffect = path .. "/effects/reload_sbbigminigun.lua"
ReloadEffectOffset = -3
Projectile = "sbbigminigun"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 28.5
MinFireSpeed = 9000.0
MaxFireSpeed = 9000.1
MinFireRadius = 600.0
MaxFireRadius = 1200.0
MinVisibility = 0.6
MaxVisibilityHeight = 600
MinFireAngle = -30
MaxFireAngle = 35
KickbackMean = 5
KickbackStdDev = 2
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 1.15
FireStdDev = 0.023
FireStdDevAuto = 0.02
Recoil = 240000
EnergyFireCost = 3000.0
MetalFireCost = 50
RoundsEachBurst = 24
RoundPeriod = 0.07999
ShowFireAngle = true
CutOffEffects = true
--[[
-- sinusoid sweep
function ProjectileAngle(index)
	local angle = index*(2*3.1415/RoundsEachBurst)
	return 3*math.sin(angle)
end
]]

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
		Name = "sbbigminigun-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbbigminigun/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbbigminigun-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbbigminigun/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Minigun",
	Angle = 0,
	Pivot = { 0, -0.37 },
	PivotOffset = { 0, 0 },
	Sprite = "sbbigminigun-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, -0.01 },
			PivotOffset = { 0.07, 0.05 },
			Sprite = "sbbigminigun-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, -0.01 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { -0.1, -0.05 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Scale = 1.664,
					Pivot = { 0.34, 0.02 },
					PivotOffset = { 0, 0 },
					Sprite = "minigun-spinning-barrel",
					Visible = false,
				},
				--[[{
					Name = "Reload",
					Angle = 0,
					Pivot = { 0.34, 0.02 },
					PivotOffset = { 0, 0 },
					Sprite = "sbbigminigun-reload",
					Visible = true,
				},]]
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.9, -0.01 },
					PivotOffset = { 0, 0 },
					Scale = 1.664,
					Sprite = "minigun-flash",
					Visible = false,
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { -0.03, -0.158 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
		{
			Name = "hat",
			Scale = 0.5,
			Sprite = "sbHat",
			Pivot = {-0.162, 0.058},
			UserData = 100,
		}
	}
}