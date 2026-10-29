-- Blue electrical burst when the beam damages a target.
SoundEvent = "mods/sbBGsoundbank/effects/impact_zapsniper"

LifeSpan = 1.1

Effects =
{
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 30,
		BurstPeriod = 0.15,
		BurstAfterDistance = 25,
		SparksPerBurst = 3,
		LocalPosition = { x = 0, y = 0, z = -2 },
		Sprite = path .. "/effects/media/HowitzerParticles11",

		Gravity = 0,
		Additive = true,

		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -80,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 80,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -80,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.8,
				ScaleStdDev = 0.1,
				SpeedStretch = 0.2,
				SpeedMean = 500,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 360,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,	
				AgeMean = 0.1,
				AgeStdDev = 0,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 255, 255, 255, 255 },
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1.5,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 10,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 360,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 0.75,
				AgeStdDev = .025,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 255, 255, 255, 255 },
			},
			{
				Angle = 80,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.3,
				ScaleStdDev = 0.8,
				SpeedStretch = 0.2,
				SpeedMean = 500,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 360,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,	
				AgeMean = 0.1,
				AgeStdDev = 0,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 255, 255, 255, 255 },
			},
		},
	},
	{--GLOW LARGE
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 5,
		BurstPeriod = 0.15,
		SparksPerBurst = 2,
		LocalPosition = { x = 0, y = 0, z = -2 },
		Sprite = "effects/media/glow32x32",

		Gravity = 0,
		Additive = true,

		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -80,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 80,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 25,
				ScaleStdDev = 5,
				SpeedStretch = 0,
				SpeedMean = 10,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 0.75,
				AgeStdDev = .025,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 55, 55, 255, 100 },
			},
		},
	},
	{
	--SPARKS (REGULAR)
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 6,
		BurstPeriod = 0.1,
		-- BurstAfterDistance = 25,
		-- SparksPerBurst = 4,
		Additive = true,
		LocalPosition = { x = 0, y = 0, z = -1 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/zap1",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -360,
			Max = 360,
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = 1.3,
				ScaleStdDev = 1,
				SpeedStretch = 0,
				SpeedMean = 400,
				SpeedStdDev = 200,
				Drag = 4,
				RotationMean = 0,
				RotationStdDev = 360,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 0.4,
				AgeStdDev = 0.1,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0, 0 },
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = 1.3,
				ScaleStdDev = 1,
				SpeedStretch = 0,
				SpeedMean = 400,
				SpeedStdDev = 200,
				Drag = 4,
				RotationMean = 0,
				RotationStdDev = 360,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 0.4,
				AgeStdDev = 0.1,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0, 0 },
			},
		},
	},	
}
