LifeSpan = 5
SoundEvent = "mods/sbBGsoundbank/effects/fire_coilmortar"

Effects = {}
--sparks
table.insert(Effects,
{
	Type = "sprite",
	TimeToTrigger = LaunchDelay,
	LocalPosition = { x = 0, y = 80, z = -100 },
	LocalVelocity = { x = 0, y = 0, z = 0 },
	Acceleration = { x = 0, y = 0, z = 0 },
	Drag = 0,
	Sprite = path .. "/effects/media/bloom1.png",
	Additive = true,
	TimeToLive = 0.12,
	InitialSize = 7,
	ExpansionRate = -20,
	Angle = -90,
	AngularVelocity = 0,
	RandomAngularVelocityMagnitude = 700,
	Colour1 = { 192, 192, 255, 255 },
	Colour2 = { 64, 64, 255, 0 },
})
table.insert(Effects,
{
	Type = "sparks",
	TimeToTrigger = 0,
	SparkCount = 6,
	LocalPosition = { x = 0, y = 80 },	-- how to place the origin relative to effect position and direction (0, 0) 
	Texture = path .. "/effects/media/sparks",
	Additive = true,
	Gravity = 400,						-- gravity applied to particle (981 is earth equivalent)
	
	NormalDistribution =				
	{
		Min = -2,						-- minimum angle in degrees (e.g. -180, 45, 0)
		Max = 6,						-- maximum angle in degrees (e.g. -180, 45, 0)
		StdDev = 1,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
	},

	Keyframes =							
	{
		{
			Angle = -35,
			RadialOffsetMin = 0,
			RadialOffsetMax = 20,
			ScaleMean = 1,
			ScaleStdDev = 1,
			SpeedStretch = 0,
			SpeedMean = 400,
			SpeedStdDev = 300,
			Drag = 5,
			RotationMean = 45,
			RotationStdDev = 180,
			RotationalSpeedMean = 10,
			RotationalSpeedStdDev = 5,
			AgeMean = 0.6,
			AgeStdDev = 0.14,
			AlphaKeys = { 0.1, 0.5 },
			ScaleKeys = { 0.1, 0.5 },
			Colour = {255,128,0,128},
		},
	},
})