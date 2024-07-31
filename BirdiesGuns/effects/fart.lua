LifeSpan = 6
SoundEvent = "mods/sbBGsoundbank/effects/fart"
Effects =
{
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 8,
		LocalPosition = { x = 0, y = 0, z = -30 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/steam",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -360,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 360,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 40,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.6,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 90,	
				SpeedStdDev = 50,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 40,
				AgeMean = 4.0,
				AgeStdDev = 1.0,
				AlphaKeys = { 0.5, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
				colour = { 120, 90, 60, 200 },
			},
		},
	}
}