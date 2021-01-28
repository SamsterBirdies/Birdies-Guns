--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 7.0

Effects =
{
	--[[{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToTriggerStdDev = 0.03,
		FadeInPeriod = 0.5,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/bigminigunfire.ogg",
		Volume = 0.36,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 1.15,
		SparkCount = 9,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/smoke",

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
				ScaleMean = 4,
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
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 1.80,
		SparkCount = 9,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/smoke",

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
				ScaleMean = 4,
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
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 2.20,
		SparkCount = 9,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/smoke",

		Gravity = -200,						-- gravity applied to particle (981 is earth equivalent)
		
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
				ScaleMean = 4,
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
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 4000,
		FalloffEnd = 6000,
		TimeToTrigger = 1.15,
		TimeToLive = 5.0,
		Magnitude = 16,
	},
--[[
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/minigun_fire_01_694683_SOUNDDOGS__wa.mp3",
		Volume = 0.5,
	},
]]

--[[
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/minigun_up.wav",
		Volume = 0.3,
		Priority = 192,
	},
	{
		Type = "sound",
		TimeToTrigger = 0.449, -- play after up sound
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/fire_minigun_01.mp3",
		Volume = 0.3,
		Priority = 192,
	},
	{
		Type = "sound",
		TimeToTrigger = 1.75, -- play after fire sound
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/minigun_down.wav",
		Volume = 0.3,
		Priority = 192,
	},
]]
}
SoundEvent = "mods/sbBGsoundbank/effects/fire_sbbigminigun"
