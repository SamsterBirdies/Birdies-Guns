--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0

SoundEvent = "mods/sbBGsoundbank/effects/swarmshield_fire"
Effects =
{
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 9,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/steam.tga",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -10,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 10,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 500,	
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 5,
				RotationalSpeedStdDev = 0,
				AgeMean = 1.5,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.5, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	--[[{
		Type = "sound",
		TimeToTrigger = 0.0,
		TimeToTriggerStdDev = 0.00,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/launch2.ogg",
		Volume = 0.70,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]

--[[	{
	--SFX-BOOM!!!
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 1,
		LocalPosition = { x = 0, y = -100 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/SFX-Cannon-BOOM!!!.tga",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = 0,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 0,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 0,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
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
			DeviceExplodeSFX	RotationMean = 180,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 1,
				AgeStdDev = 0,
				AlphaKeys = { 0, 0.5 },
				ScaleKeys = { 1, 1 },
			},
		},
	},
]]	
	
--[[	{
		Type = "bullettime",
		TimeToTrigger = 0,
		TimeToContinue = 1.5,
		Speed = 0.5,
	},
]]
}
