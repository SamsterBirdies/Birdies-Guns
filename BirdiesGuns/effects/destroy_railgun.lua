dofile("effects/device_explode_util.lua")
dofile(path .. "/effects/util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 9.0
SoundEvent = "mods/sbBGsoundbank/effects/destroy_railgun"
Effects =
{
	Debris("gunner"),
	Debris(path .. "/weapons/sbrailgun/debris_rail"),
	Debris(path .. "/weapons/sbrailgun/debris_rail"),
	Debris(path .. "/weapons/sbrailgun/debris_cyl"),

	DeviceExplodeSprite(),
	Smoke(9, 9, 6, 200),
	Smoke(9, 4, 6, 350),
	Dirt(0.3, 1000),
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1500,
		FalloffEnd = 6000,
		TimeToTrigger = 0,
		TimeToLive = 0.2,
		Magnitude = 120,
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1500,
		FalloffEnd = 6000,
		TimeToTrigger = 0.12,
		TimeToLive = 0.3,
		Magnitude = 100,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.24,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.4,
		InitialSize = 18,
		ExpansionRate = 1000,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 100,
		Colour1 = { 255, 190, 120, 128 },
		Colour2 = { 255, 128, 64, 0 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.16,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.7,
		InitialSize = 25,
		ExpansionRate = 500,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 160, 140, 255, 158 },
		Colour2 = { 40, 90, 255, 0 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.24,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.8,
		InitialSize = 20,
		ExpansionRate = 500,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 160, 160, 255, 192 },
		Colour2 = { 32, 32, 255, 0 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.08,
		InitialSize = 12,
		ExpansionRate = -20,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
		{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -2 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 1.0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.2,
		InitialSize = 10,
		ExpansionRate = -300,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 80,
		Colour1 = { 140, 180, 255, 255 },
		Colour2 = { 90, 140, 255, 180 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.12,
		LocalPosition = { x = 0, y = 0, z = -2 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 1.0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.24,
		InitialSize = 8,
		ExpansionRate = 300,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 80,
		Colour1 = { 140, 180, 255, 200 },
		Colour2 = { 90, 140, 255, 30 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -2 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 1.0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.36,
		InitialSize = 20,
		ExpansionRate = -300,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 80,
		Colour1 = { 140, 180, 255, 128 },
		Colour2 = { 90, 140, 255, 0 },
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 10000,
		TimeToTrigger = 0.16,
		TimeToLive = 2,
		Magnitude = 35,
	},
	{
	--SPARKS
		Type = "sparks",
		TimeToTrigger = 0.24,
		SparkCount = 64,
		LocalPosition = { x = 0, y = 0, z = -1 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/HowitzerParticles11",
		Additive = false,
		Gravity = 600,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -180,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 180,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 2500,
				SpeedStdDev = 1000,
				Drag = 3,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1.5,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.5,
				ScaleStdDev = 0.3,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 3,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1.5,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--SPARKS
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 16,
		LocalPosition = { x = 0, y = 0, z = -1 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/RocketEMP08",
		Additive = false,
		Gravity = 600,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -180,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 180,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 4,
				ScaleStdDev = 1,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 500,
				Drag = 3,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1.3,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 3,
				ScaleStdDev = 1,
				SpeedStretch = 0,
				SpeedMean = 500,
				SpeedStdDev = 200,
				Drag = 3,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.8,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 1,
		LocalPosition = { x = 0, y = 0, z = -1 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/weapons/sbrailgun/debris_rail",
		TrailEffect = "effects/debris_trails.lua",

		Gravity = 981,						-- gravity applied to particle (981 is earth equivalent)
		
		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 30,					-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 2,
				ScaleStdDev = 0,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 0,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 280,
				RotationalSpeedStdDev = 100,
				AgeMean = 3,
				AgeStdDev = 0,
				AlphaKeys = { 0.01, 0.5 },
				ScaleKeys = { 0.01, 0.5 },
			},
		},
	},
	{
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 8,
		LocalPosition = { x = 0, y = 0, z = -1 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/weapons/sbrailgun/debris_cyl",
		TrailEffect = "effects/debris_trails.lua",

		Gravity = 981,						-- gravity applied to particle (981 is earth equivalent)
		
		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 30,					-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 0,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 500,
				RotationalSpeedStdDev = 300,
				AgeMean = 3,
				AgeStdDev = 0,
				AlphaKeys = { 0.01, 0.5 },
				ScaleKeys = { 0.01, 0.5 },
			},
		},
	}
	
}
