dofile("scripts/forts.lua")

Scale = 1.0
SelectionWidth = 75.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -50.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -230, -50 },
}
CanFlip = false

WeaponMass = 90.0
HitPoints = 50.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/fire_sbshieldbeam.lua"
FireEndEffect = path .. "/effects/sbshieldbeamend.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/beam_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path .. "/effects/reload_sbshieldbeam.lua"
ReloadEffectOffset = -1.72
Projectile = "sbshieldbeam"
BarrelLength = 58.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
RoundsEachBurst = 1
RoundPeriod = 1
ReloadTime = 22.0
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.0
MinFireRadius = 250.0
MaxFireRadius = 900.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -35
MaxFireAngle = 35
KickbackMean = 0
KickbackStdDev = 0
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.0
FireStdDevAuto = 0.015
Recoil = 0
BeamDuration = 3
EnergyFireCost = 2000/BeamDuration
MetalFireCost = 0.0
BeamEndEffectTime = 2.9
BeamThicknessMultiplier = 1.0
BeamDamageMultiplier = 1.0
BeamPenetrationRotationThreshold = 999
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
		Name = "sbshieldbeam-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbshieldbeam/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbshieldbeam-beacon",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbshieldbeam/beacon.tga" }, mipmap = true, }, },
			Idle = Normal,
			Reload = { Frames = { { texture = path .. "/weapons/sbshieldbeam/beaconlow.tga", duration = (ReloadTime) }, mipmap = true, }, NextState = "Normal", },
		},
	},
	{
		Name = "sbshieldbeam-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbshieldbeam/barrel2.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
		{
		Name = "sbshieldbeam-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbshieldbeam/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbshieldbeam-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbshieldbeam/barrel.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbshieldbeam/barrel_2", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_3", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_4", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_5", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_6", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_7", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_8", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_9", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_10", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_11", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_12", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_13", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_14", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_15", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_16", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_17", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_18", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_19", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_20", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_21", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_22", duration = 200 },
					mipmap = true,
					duration = 0.05,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbshieldbeam/barrel_21", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_20", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_19", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_18", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_17", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_16", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_15", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_14", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_13", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_12", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_11", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_10", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_9", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_8", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_7", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_6", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_5", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_4", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_3", duration = 0.05 },
					{ texture = path .. "/weapons/sbshieldbeam/barrel_2", duration = 0.05 },
					
					mipmap = true,
					duration = 0.05,
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
	Sprite = "sbshieldbeam-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		{
			Name = "beacon",
			Angle = 0,
			Pivot = { 3.835, 0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "sbshieldbeam-beacon",
			UserData = 100,
							
		},
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.15, 0 },
--			Pivot = { 0, 0 },
			PivotOffset = { 0.15, 0 },
			Sprite = "sbshieldbeam-head",
			UserData = 30,

			ChildrenInFront =
			{
				{
					Name = "Reload",
					Angle = 0,
					Pivot = { 0.24, 0 },
					Sprite = "sbshieldbeam-reload",
					PivotOffset = { 0, 0 },
					UserData = 80,
				
					ChildrenBehind =
					{
						{
							Name = "Muzzle",
							Angle = 0,
							Pivot = { 0.0, -0 },
							PivotOffset = { 0, 0 },
							Sprite = "sbshieldbeam-barrel",
							UserData = 100,
							
						},
					},
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
--					Pivot = { 0.47, -0.16 },
					Pivot = { 0.10, -0.09 },
					PivotOffset = { 0, 0 },
				},
				
				{
					Name = "Chamber",
					Angle = 90,
					Pivot = { 0, -0.16 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}
function sbApplyXmas()
	table.insert(Root.ChildrenInFront[2].ChildrenInFront,
	{
		Name = "xmashat",
		Scale = 0.35,
		Pivot = {-0.2375, -0.31071},
		Sprite = path .. "/seasonal/xmas/santahat.png",
		UserData = 100,
	})
end
function sbApplyHalloween()
	table.insert(Root.ChildrenInFront[2].ChildrenInFront,
	{
		Name = "pumpkin",
		Scale = 0.35,
		Pivot = {-0.22, -0.31071},
		Sprite = path .. "/seasonal/halloween/pumpkin_hat.png",
		UserData = 100,
	})
end