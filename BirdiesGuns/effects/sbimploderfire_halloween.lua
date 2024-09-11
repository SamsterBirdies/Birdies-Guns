--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3.0

Sprites =
{
	{
		Name = "sbimploder_fire_h",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/imploder1.tga", colour = { 1, 0.3, 0.5, 1 } },
					{ texture = path .. "/effects/media/imploder2.tga", colour = { 1, 0.3, 0.5, 1 } },
					{ texture = path .. "/effects/media/imploder3.tga", colour = { 1, 0.3, 0.5, 1 } },
					{ texture = path .. "/effects/media/imploder4.tga", colour = { 1, 0.3, 0.5, 1 } },
					{ texture = path .. "/effects/media/imploder5.tga", colour = { 1, 0.3, 0.5, 1 } },
					{ texture = path .. "/effects/media/imploder6.tga", colour = { 1, 0.3, 0.5, 1 } },
					{ texture = path .. "/effects/media/imploder7.tga", colour = { 1, 0.3, 0.5, 1 } },
					{ texture = path .. "/effects/media/imploder8.tga", colour = { 1, 0.3, 0.5, 1 } },
					{ texture = path .. "/effects/media/imploder8.tga", colour = { 1, 1.0, 1, 0.0 }, duration = 2 }, -- just makes a blank frame long enough to last the rest of the effect

					duration = 0.025,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}

Effects =
{
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0.65,
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
		Type = "sprite",
		TimeToTrigger = 0.65,
		LocalPosition = { x = 0, y = 200, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sbimploder_fire_h",
		Additive = false,
		TimeToLive = 2,
		Angle = -90,
		InitialSize = 3,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1500,
		FalloffEnd = 6000,
		TimeToTrigger = 0.65,
		TimeToLive = 0.7,
		Magnitude = 16,
	},
}
SoundEvent = "mods/sbBGsoundbank/effects/sbimploderfire_halloween"
