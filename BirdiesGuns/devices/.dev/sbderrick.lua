-- fort wars device file

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 0.75
SelectionWidth = 160.0
SelectionHeight = 130.0
SelectionOffset = { 0.0, -140.0 }
Mass = 40.0
HitPoints = 400.0
EnergyProductionRate = 70.0
MetalProductionRate = 15
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
NeutralColour = 1

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter
Sprites =
{
	{
		Name = "sbderrick_anim",
		InitialState = "Normal",

		States =
		{
			Normal =
			{
				RandomStartFrame = true,
				Frames =
				{
					{ texture = "devices/derrick/DerrickArm01.png" },
					{ texture = "devices/derrick/DerrickArm02.png" },
					{ texture = "devices/derrick/DerrickArm03.png" },
					{ texture = "devices/derrick/DerrickArm04.png" },
					{ texture = "devices/derrick/DerrickArm05.png" },
					{ texture = "devices/derrick/DerrickArm06.png" },
					{ texture = "devices/derrick/DerrickArm07.png" },
					{ texture = "devices/derrick/DerrickArm08.png" },
					{ texture = "devices/derrick/DerrickArm09.png" },
					{ texture = "devices/derrick/DerrickArm08.png" },
					{ texture = "devices/derrick/DerrickArm07.png" },
					{ texture = "devices/derrick/DerrickArm06.png" },
					{ texture = "devices/derrick/DerrickArm05.png" },
					{ texture = "devices/derrick/DerrickArm04.png" },
					{ texture = "devices/derrick/DerrickArm03.png" },
					{ texture = "devices/derrick/DerrickArm02.png" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
			Idle = Normal,
		},
	},
	{
		Name = "sbflag_team1",
		InitialState = "Normal",

		States =
		{
			Normal =
			{
				RandomStartFrame = true,
				Frames =
				{
					{ texture = "devices/derrick/FlagBlue01.png" },
					{ texture = "devices/derrick/FlagBlue02.png" },
					{ texture = "devices/derrick/FlagBlue03.png" },
					{ texture = "devices/derrick/FlagBlue04.png" },
					{ texture = "devices/derrick/FlagBlue05.png" },
					{ texture = "devices/derrick/FlagBlue06.png" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
			Idle = Normal,
		},
	},
	{
		Name = "sbflag_team2",
		InitialState = "Normal",

		States =
		{
			Normal =
			{
				RandomStartFrame = true,
				Frames =
				{
					{ texture = "devices/derrick/FlagRed01.png" },
					{ texture = "devices/derrick/FlagRed02.png" },
					{ texture = "devices/derrick/FlagRed03.png" },
					{ texture = "devices/derrick/FlagRed04.png" },
					{ texture = "devices/derrick/FlagRed05.png" },
					{ texture = "devices/derrick/FlagRed06.png" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
			Idle = Normal,
		},
	},
	{
		Name = "sbderrick-base",
		States =
		{
			Normal = { Frames = { { texture = "devices/derrick/base.tga" }, mipmap = true, }, },
		},
	},
}
Root =
{
	Name = "Derrick",
	Angle = 0,
	Pivot = { 0, -0.32 },
	PivotOffset = { 0, 0 },
	Sprite = "sbderrick-base",
	
	ChildrenBehind =
	{
		{
			Name = "Arm",
			Angle = 0,
			Pivot = { -0.2, 0.15 },
			PivotOffset = { 0, 0 },
			Sprite = "sbderrick_anim",
		},
		{
			Name = "FlagTeam1",
			Angle = 0,
			Pivot = { 0.25, -0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "sbflag_team1",
		},
		{
			Name = "FlagTeam2",
			Angle = 0,
			Pivot = { 0.25, -0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "sbflag_team2",
		},
	},
}
