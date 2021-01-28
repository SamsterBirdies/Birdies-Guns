--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 2

Effects =
{
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 80,
		BurstPeriod = 0.02,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = 0, z = -255 },
		Sprite = "effects/media/smoke.tga",

		Gravity = 0,

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 15,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
		
		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 2.5,
				ScaleStdDev = 0.25,
				SpeedStretch = 0,
				SpeedMean = 50,
				SpeedStdDev = 5,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 1,
				AgeStdDev = .025,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 255, 255, 255, 255 },
			},
		},
	},
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 40,
		BurstPeriod = 0.04,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = 0, z = -265 },
		Sprite = "effects/media/steam",

		Gravity = 0,

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 15,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
		
		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.18,
				ScaleStdDev = 0.05,
				SpeedStretch = 0,
				SpeedMean = 50,
				SpeedStdDev = 5,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 0.5,
				AgeStdDev = .1,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 53, 240, 250, 255 },
			},
		},
	},
--[[
	{
		Type = "sound",
		TimeToTrigger = 3,
		TriggerTimeStdDev = 0.2,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = "mortar_incoming_226588_SOUNDDOGS__we",
		Volume = 0.9,
		Priority = 128,
		Repeat = true,
		FadeInPeriod = 0.5,
		FalloffDistMin = 500,
	},
]]	
}
