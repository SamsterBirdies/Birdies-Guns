 dofile("scripts/interpolate.lua")

Scale = 1.0
SelectionWidth = 50.0
SelectionHeight = 50.0
SelectionOffset = { 0.0, -50.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -230, -60 },
}
CanFlip = false

WeaponMass = 90.0
HitPoints = 180.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/fire_sbdrunklaser.lua"
--FireEndEffect = path .. "/effects/fire_firebeam_post.lua"
--FireEndEffect = "effects/weapon_overheated.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "mods/weapon_pack/effects/firebeam_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path .. "/effects/reload_sbdrunklaser.lua"
ReloadEffectOffset = -1
Projectile = "sbdrunklaser"
BarrelLength = 58.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
RoundsEachBurst = 1
RoundPeriod = 1
ReloadTime = 26.0
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.0
MinFireRadius = 600.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -35
MaxFireAngle = 35
KickbackMean = 0
KickbackStdDev = 0
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 0.1
FireStdDev = 0.0
FireStdDevAuto = 0.015
Recoil = 0
BeamDuration = 4.0
EnergyFireCost = 1500/BeamDuration
MetalFireCost = 0.0
BeamEndEffectTime = 2.5
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
		Name = "sbdlfirebeam-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbshieldbeam/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbdlanim",
		States =
		{
			Normal = { Frames = { { texture = path .. "/effects/media/blank.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbdlfirebeam-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbdrunklaser/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbdlfirebeam-spinning-barrel",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbdrunklaser/spinner1.png" },
					{ texture = path .. "/weapons/sbdrunklaser/spinner2.png" },
					{ texture = path .. "/weapons/sbdrunklaser/spinner3.png" },
					{ texture = path .. "/weapons/sbdrunklaser/spinner4.png" },

					duration = 0.08,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = BeamDuration,
				LoopExitState = "Null",
			},
		},
	},
	--[[{
		Name = "sbdlfirebeam-reload",
		States =
		{
			Normal = { Frames = { { texture = "mods/weapon_pack/weapons/firebeam/FirebeamReload01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = "mods/weapon_pack/weapons/firebeam/FirebeamReload01.png", duration = 0.1 },
					{ texture = "mods/weapon_pack/weapons/firebeam/FirebeamReload02.png", duration = 0.1 },
					{ texture = "mods/weapon_pack/weapons/firebeam/FirebeamReload03.png", duration = 14.6 },
					{ texture = "mods/weapon_pack/weapons/firebeam/FirebeamReload02.png", duration = 0.1 },
					{ texture = "mods/weapon_pack/weapons/firebeam/FirebeamReload01.png", duration = 1.1 },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},]]
}

Root =
{
	Name = "Laser",
	Angle = 0,
	Pivot = { 0.00, -0.43 },
	PivotOffset = { 0, 0 },
--	PivotOffset = { -0.15, 0 },
	Sprite = "sbdlfirebeam-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		{
			Name = "Anim",
			Angle = 0,
			Pivot = { -0.15, 0.0 },
			PivotOffset = { 0, 0 },
			--PivotOffset = { -0.15, 0 },
			Sprite = "sbdlanim",
			UserData = 0,
			ChildrenInFront =
			{
				{
					Name = "Head",
					Angle = 0,
					Pivot = { -0.15, 0 },
		--			Pivot = { 0, 0 },
					PivotOffset = { 0.25, 0 },
					Sprite = "sbdlfirebeam-head",
					UserData = 30,

					ChildrenInFront =
					{
						--[[{
							Name = "Reload",
							Angle = 0,
							Pivot = { -0.22, -0.15 },
							Sprite = "sbdlfirebeam-reload",
							PivotOffset = { 0, 0 },
							UserData = 80,
						},]]
						{
							Name = "Hardpoint0",
							Angle = 90,
		--					Pivot = { 0.47, -0.16 },
							Pivot = { -0.05, -0.05 },
							PivotOffset = { 0, 0 },
						},
						
						{
							Name = "Chamber",
							Angle = 90,
							Pivot = { 0, -0.16 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "MuzzleFlash",
							Angle = 0,
							Pivot = { 0, 0 },
							PivotOffset = { 0, 0 },
							Sprite = "sbdlfirebeam-spinning-barrel",
							Visible = false,
						},
					},
				},
			},
		},
	},
}
