dofile("scripts/forts.lua")

Scale = 1.0
SelectionWidth = 50.0
SelectionHeight = 50.0
SelectionOffset = { 0.0, -50.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -230, -50 },
}
CanFlip = false

WeaponMass = 90.0
HitPoints = 300.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/fire_sbpullbeam.lua"
--FireEndEffect = path .. "/effects/sbpullbeam_end.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/beam_explode.lua"
ReloadEffect = path .. "/effects/reload_sbpullbeam.lua"
ReloadEffectOffset = -0.58
Projectile = "sbpullbeam"
BarrelLength = 58.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
RoundsEachBurst = 1
RoundPeriod = 1
ReloadTime = 14.0
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.0
MinFireRadius = 250.0
MaxFireRadius = 900.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -50
MaxFireAngle = 75
KickbackMean = 0
KickbackStdDev = 0
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 0
FireStdDev = 0.0
FireStdDevAuto = 0.015
Recoil = 190000
BeamDuration = 4.5
EnergyFireCost = 2000/BeamDuration
MetalFireCost = 0.0
BeamEndEffectTime = 4.4
BeamThicknessMultiplier = 1.0
BeamDamageMultiplier = 1.0
BeamPenetrationRotationThreshold = 99999
BeamPenetrationDistanceThreshold = 99999
IncendiaryRadius = 150
IncendiaryRadiusHeated = 180
DoorCloseDelay = 2
AutofireCloseDoorTicks = DoorCloseDelay*25

ShowFireAngle = true

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}
NodeEffects =
{
	{
		NodeName = "Laser",
		EffectPath = path .. "/effects/imploderidle.lua",
	},
}
-- first column is time keypoint
-- second coloumn is thickness at that keypoint
-- third column is damage at that keypoint
--[[
BeamTable =
{
	{ 0,	1,	0, },
	{ 0.25, 3,  0, },
	{ 0.5,	30, 1000, },
	{ 1,	30, 1000, }, -- 1000
	{ 1.5,	0,	0, },
}
]]

function GenerateBeamTable(duration, interval, scale)
	BeamTable = {}
	local count = math.floor(duration/interval)
	for i = 1,count do
		local odd = (i - 1)%2
		local w = scale*(10 + odd*20)
		local t = (i - 1)*interval
		BeamTable[i] = { t, w, }
	end

	BeamTable[1][2] = 0
	BeamTable[2][2] = scale*45
	BeamTable[3][2] = scale*52
	BeamTable[4][2] = scale*55
	BeamTable[5][2] = scale*52
	BeamTable[6][2] = scale*45
	BeamTable[7][2] = scale*40
	BeamTable[8][2] = scale*35
end

GenerateBeamTable(BeamDuration, 0.05, 1)

function BeamThickness(t)
	return InterpolateTable(BeamTable, t, 2)
end

--function BeamDamage(t)
--	return 0
--	return InterpolateTable(BeamTable, t, 3)
--end


dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbfirebeam-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbpullbeam/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbfirebeam-static-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbpullbeam/firebeam-barrel01.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
		{
		Name = "sbfirebeam-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbpullbeam/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbfirebeam-spinning-barrel",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbpullbeam/FirebeamBarrel01.png" },
					{ texture = path .. "/weapons/sbpullbeam/FirebeamBarrel02.png" },
					{ texture = path .. "/weapons/sbpullbeam/FirebeamBarrel03.png" },
					{ texture = path .. "/weapons/sbpullbeam/FirebeamBarrel04.png" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 4.5,
				LoopExitState = "Null",
			},
		},
	},
	{
		Name = "sbfirebeam-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbpullbeam/FirebeamReload01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbpullbeam/FirebeamReload01.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbpullbeam/FirebeamReload02.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbpullbeam/FirebeamReload03.png", duration = 13.6 },
					{ texture = path .. "/weapons/sbpullbeam/FirebeamReload02.png", duration = 0.1 },
					{ texture = path .. "/weapons/sbpullbeam/FirebeamReload01.png", duration = 0.1 },
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
	Name = "Laser",
	Angle = 0,
	Pivot = { 0, -0.43 },
	PivotOffset = { 0, 0 },
--	PivotOffset = { -0.15, 0 },
	Sprite = "sbfirebeam-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.15, 0 },
--			Pivot = { 0, 0 },
			PivotOffset = { 0.15, 0 },
			Sprite = "sbfirebeam-head",
			UserData = 30,

			ChildrenInFront =
			{
				{
					Name = "Reload",
					Angle = 0,
					Pivot = { -0.22, -0.15 },
					Sprite = "sbfirebeam-reload",
					PivotOffset = { 0, 0 },
					UserData = 80,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
--					Pivot = { 0.47, -0.16 },
					Pivot = { -0.07, -0.27 },
					PivotOffset = { 0, 0 },
				},
				
				{
					Name = "Chamber",
					Angle = 90,
					Pivot = { 0, -0.16 },
					PivotOffset = { 0, 0 },
				},
			},
			ChildrenBehind =
			{
				{
					Name = "Muzzle",
					Angle = 0,
					Pivot = { 0.22, -0.15 },
					PivotOffset = { 0, 0 },
					UserData = 60,
					Sprite = "sbfirebeam-static-barrel",
					Visible = true,
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.40, -0.2 },
					PivotOffset = { 0, 0 },
					Sprite = "sbfirebeam-spinning-barrel",
					Visible = false,
				},
			},
		},
	},
}
