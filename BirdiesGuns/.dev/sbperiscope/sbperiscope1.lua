-- fort wars weapon file

Scale = 1
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }


WeaponMass = 60.0
HitPoints = 20.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = "effects/fire_minigun.lua"
ShellEffect = "effects/shell_eject_small.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/minigun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
ReloadEffect = "effects/minigun_reload.lua"
ReloadEffectOffset = -.5
Projectile = "minigun"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 10
MinFireSpeed = 7500.0
MaxFireSpeed = 7500.1
MinFireRadius = 300.0
MaxFireRadius = 600.0
MinVisibility = 0.6
MaxVisibilityHeight = 600
MinFireAngle = -15
MaxFireAngle = 20
KickbackMean = 5
KickbackStdDev = 2
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 0.45
FireStdDev = 0.02
FireStdDevAuto = 0.01
Recoil = 20000
EnergyFireCost = 400.0
MetalFireCost = 20
RoundsEachBurst = 13
RoundPeriod = 0.08
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
		Name = "sbperiscope2-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbperiscope/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbperiscope2-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbperiscope/head2.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbperiscope2-spinning-barrel",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = "weapons/minigun/minigun-barrel01.tga" },
					{ texture = "weapons/minigun/minigun-barrel02.tga" },
					{ texture = "weapons/minigun/minigun-barrel03.tga" },
					{ texture = "weapons/minigun/minigun-barrel04.tga" },
					{ texture = "weapons/minigun/minigun-barrel05.tga" },
					{ texture = "weapons/minigun/minigun-barrel06.tga" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 2.8,
				LoopExitState = "Null",
			},
		},
	},
	{
		Name = "sbperiscope2-flash",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = "weapons/minigun/minigun_flash01.tga" },
					{ texture = "weapons/minigun/minigun_flash02.tga" },
					{ texture = "weapons/minigun/minigun_flash03.tga" },
					{ texture = "weapons/minigun/minigun_flash04.tga" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 1.2,
				LoopExitState = "Null",
			},
		},
	},
}

Root =
{
	Name = "Minigun",
	Angle = 0,
	Pivot = { 0, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = "sbperiscope2-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0016, -0.4633},
			PivotOffset = {0.0767, -0.29},
			Sprite = "sbperiscope2-head",
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
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.34, 0.02 },
					PivotOffset = { 0, 0 },
					Sprite = "sbperiscope2-spinning-barrel",
					Visible = false,
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.9, -0.01 },
					PivotOffset = { 0, 0 },
					Sprite = "sbperiscope2-flash",
					Visible = false,
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { 0.1, -0.125},
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
		{
			Name = "santahat",
			Scale = 0.5,
			Sprite = "sbSantaHat",
			Pivot = {-0.2752, 0.03333},
			UserData = 100,
		},
		{
			Name = "pumpkin",
			Scale = 0.5,
			Sprite = "sbPumpkinHat",
			Pivot = {-0.2252, 0.06333},
			UserData = 100,
		}
	},
}