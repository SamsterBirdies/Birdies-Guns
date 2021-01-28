dofile("scripts/core.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 6.0
SoundEvent = "mods/sbBGsoundbank/effects/eject_periscope"
Effects =
{
	{
		Type = "sparks",
		TimeToTrigger = 0.4,
		TimeToStop = 0.5,
		SparkCount = 15,
		BurstPeriod = 0.2,
		SparksPerBurst = 15,
		LocalPosition = { x = 0, y = -70, z = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Sprite = path .. "/effects/media/periscopecasing.png",

		Gravity = 400,						-- gravity applied to particle (981 is earth equivalent)

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,					-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 0,		-- maximum distance from effect origin
				ScaleMean = 1.1,			-- mean scale (normal distribution)
				ScaleStdDev = 0.00,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 150,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 20,			-- standard deviation of spark speed at emission
				Drag = 0,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 20,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 45,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 10,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 40,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 2,				-- mean age in seconds (normal distribution)
				AgeStdDev = .1,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0.0, 0.75 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0.0, 0.75 },	-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
				colour = { 255, 255, 255, 255 }, -- Colour used to modulate the sprite
			},
		},
	},
}
