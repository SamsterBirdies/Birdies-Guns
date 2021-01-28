-- fort wars weapon file

Scale = 1
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -230, -40 },
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

FireEffect = "effects/fire_minigun.lua"
ShellEffect = "effects/shell_eject_small.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/minigun_explode.lua"
ReloadEffect = "effects/minigun_reload.lua"
ReloadEffectOffset = -.5
Projectile = "minigun"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 10
MinFireSpeed = 2000.0
MaxFireSpeed = 4000.0
MinFireRadius = 500.0
MaxFireRadius = 900.0
MaxFireClamp = 0.85
MinVisibility = 0.6
MaxVisibilityHeight = 600
MinFireAngle = 45
MaxFireAngle = 80
KickbackMean = 5
KickbackStdDev = 2
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 0.45
FireStdDev = 0.02
FireStdDevAuto = 0.01
Recoil = 20000
EnergyFireCost = 450.0
MetalFireCost = 30
RoundsEachBurst = 13
RoundPeriod = 0.08
ShowFireAngle = true
ShowFireSpeed = true

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

Root =
{
	Name = "Minigun",
	Angle = 0,
	Pivot = { 0, -0.37 },
	PivotOffset = { 0, 0 },
	Sprite = "sbroofgunner-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, 0},
			PivotOffset = { 0.1, 0 },
			Sprite = "minigun-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Arm",
					Angle = 0,
					Pivot = { -0.011, 0.08 },
					Sprite = "minigun-arm",
					PivotOffset = { 0, 0 },
					UserData = 50,
				},
				{
					Name = "Belt",
					Angle = 0,
					Pivot = { -0.09, 0.03 },
					Sprite = "weapons/minigun/minigun-belt.png",
					PivotOffset = { 0, 0 },
					UserData = 50,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, -0.01 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.34, 0.02 },
					PivotOffset = { 0, 0 },
					Sprite = "minigun-spinning-barrel",
					Visible = false,
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.9, -0.01 },
					PivotOffset = { 0, 0 },
					Sprite = "minigun-flash",
					Visible = false,
				},
			},
		},
	},
--[[
	ChildrenInFront =
	{
		{
			Name = "Scaffold",
			Sprite = "under_construction",
			Visible = false,
		},
		{
			Name = "ScaffoldProgress",
			Sprite = "under_construction_progress",
			Visible = false,
		},
	},
]]
}
