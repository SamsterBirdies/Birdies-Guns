dofile("effects/device_explode_util.lua")
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 8.1

Effects =
{
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 1,
		BurstPeriod = 0.1,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = 0, z = -2 },
		Sprite = "effects/media/steam.png",

		Gravity = 0,
		Additive = false,

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
				ScaleMean = 2,
				ScaleStdDev = 0.1,
				SpeedStretch = 0.2,
				SpeedMean = 10,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 60,
				RotationStdDev = 10,
				RotationalSpeedMean = 60,
				RotationalSpeedStdDev = 10,	
				AgeMean = 8,
				AgeStdDev = 0,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = {60, 60, 60, 255},
			},
		},
	},
}

function InitEffect()
	SFXVariants( path .. "../audio/Assets/sfx/explosions/explosion_medium_", 4)
end
