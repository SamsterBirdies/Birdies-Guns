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
		Sound = path .. "/effects/media/lock.ogg",
		Volume = 0.50,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
	{
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 25,
		BurstPeriod = 50,
		SparksPerBurst = 25,
		LocalPosition = { x = 0, y = EffectVerticalOffset, z = EffectDepth },	-- how to place the origin relative to effect position and direction (0, 0) 
		Sprite = "effects/media/Steam",

		Gravity = -50,						-- gravity applied to particle (981 is earth equivalent)
--[[
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -30,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 30,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 1,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
]]
		NormalDistribution =
		{
			Mean = 0,
			StdDev = 60,
		},

		Keyframes =
		{
			{
				Angle = -15,				-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 20,		-- maximum distance from effect origin
				ScaleMean = 0.5,			-- mean scale (normal distribution)
				ScaleStdDev = 0.02,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 30,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 1,			-- standard deviation of spark speed at emission
				Drag = 0.2,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 0,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 45,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = -180,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 0,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 3,				-- mean age in seconds (normal distribution)
				AgeStdDev = .5,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0.1, 0.75 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0.1, 0.75 },	-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
				colour = { 255, 255, 255, 255 }, -- Colour used to modulate the sprite
			},
			{
				Angle = 0,					-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 50,		-- maximum distance from effect origin
				ScaleMean = 0.5,			-- mean scale (normal distribution)
				ScaleStdDev = 0.02,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 350,			-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 10,			-- standard deviation of spark speed at emission
				Drag = 0.1,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 0,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 45,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 5,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 0,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 2.5,				-- mean age in seconds (normal distribution)
				AgeStdDev = .4,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0.1, 0.75 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0.1, 0.75 },	-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
				colour = { 255, 255, 255, 255 }, -- Colour used to modulate the sprite
			},
			{
				Angle = 15,					-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 20,		-- maximum distance from effect origin
				ScaleMean = 0.5,			-- mean scale (normal distribution)
				ScaleStdDev = 0.02,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 30,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 1,			-- standard deviation of spark speed at emission
				Drag = 0.2,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 0,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 45,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 180,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 0,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 3,				-- mean age in seconds (normal distribution)
				AgeStdDev = .2,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0.1, 0.75 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0.1, 0.75 },	-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
				colour = { 255, 255, 255, 255 }, -- Colour used to modulate the sprite
			},
		},
	},
}
SoundEvent = "mods/sbBGsoundbank/effects/sbrmempfire_short"