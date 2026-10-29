-- Brief electric muzzle flash for the Lightning Sniper.
LifeSpan = 0.35
SoundEvent = "mods/sbBGsoundbank/effects/fire_zapsniper"

Effects =
{
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
			Min = 0,
			Max = 0,
			StdDev = 0,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = 0.7,
				ScaleStdDev = 0.2,
				SpeedStretch = 0,
				SpeedMean = 200,
				SpeedStdDev = 100,
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
				ScaleMean = 0.7,
				ScaleStdDev = 0.2,
				SpeedStretch = 0,
				SpeedMean = 200,
				SpeedStdDev = 100,
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
	{
	--SPARKS (REGULAR)
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 6,
		BurstPeriod = 0.1,
		-- BurstAfterDistance = 25,
		-- SparksPerBurst = 4,
		Additive = true,
		LocalPosition = { x = 0, y = -30, z = -1 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/zap0",

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
				ScaleMean = 0.6,
				ScaleStdDev = 0.2,
				SpeedStretch = 0,
				SpeedMean = 100,
				SpeedStdDev = 50,
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
				ScaleMean = 0.6,
				ScaleStdDev = 0.2,
				SpeedStretch = 0,
				SpeedMean = 100,
				SpeedStdDev = 50,
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
