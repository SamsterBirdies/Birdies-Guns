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
RoundsEachBurst = 20
RoundPeriod = 0.07999
ShowFireAngle = true

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
	{
		Name = "sbbigminigun-spinning-barrel",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel01.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel02.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel03.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel04.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel05.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel06.tga" },

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
--[[	{
		Name = "sbbigminigun-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/effects/media/blank.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/blank.png", duration = 27.0 },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel01.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel02.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel03.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel04.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel05.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel06.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel01.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel02.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel03.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel04.tga" },
					{ texture = path .. "/effects/media/blank.png", duration = 0.3 },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel01.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel02.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel03.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel04.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel05.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel06.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel01.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel02.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel03.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel04.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel05.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel06.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel01.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel02.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel03.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel04.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun-barrel05.tga" },
					{ texture = path .. "/effects/media/blank.png", duration = 0.5 },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},]]
	{
		Name = "sbbigminigun-arm",
		States =
		{
			Normal = { Frames = { { texture = "weapons/machinegun/MachineGun-ReloadAnim01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim01.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim02.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim03.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim04.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim05.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim06.png", duration = 5 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim08.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim09.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim10.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim11.png", duration = 0.1 },
					{ texture = "weapons/machinegun/MachineGun-ReloadAnim12.png", duration = 0.1 },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbbigminigun-flash",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbbigminigun/minigun_flash01.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun_flash02.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun_flash03.tga" },
					{ texture = path .. "/weapons/sbbigminigun/minigun_flash04.tga" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 2.20,
				LoopExitState = "Null",
			},
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
					Name = "Arm",
					Angle = 0,
					Pivot = { -0.011, 0.08 },
					Sprite = "sbbigminigun-arm",
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
					Pivot = { -0.1, -0.05 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.34, 0.02 },
					PivotOffset = { 0, 0 },
					Sprite = "sbbigminigun-spinning-barrel",
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
					Sprite = "sbbigminigun-flash",
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
