LifeSpan = 10

LaunchDelay = 2.4

CYL_POS = { x = 0, y = -232, z = -10 }

RAIL_POS = { x = -35, y = -182.9, z = -10 }
RAIL_SPACING = 23.7
RAIL_START = 1.44
RAIL_PERIOD = 0.12
RAIL_OPACITY = 96

FIRE_SPACING = 200 / 3

--blue shock effect scale = 1.146875

Effects =
{
	--cylindar effects (i cant spell cylander
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1500,
		FalloffEnd = 5000,
		TimeToTrigger = LaunchDelay,
		TimeToLive = 0.3,
		Magnitude = 120,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = CYL_POS,
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/weapons/sbrailgun/cyl_glow.png",
		Additive = true,
		TimeToLive = LaunchDelay - 0.7,
		InitialSize = 1.0,
		ExpansionRate = 0,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 180, 180, 64 },
		Colour2 = { 255, 255, 255, 255 },
		KillParticleOnEffectCancel = true,
	},
	{
		Type = "sprite",
		TimeToTrigger = LaunchDelay - 0.7,
		LocalPosition = CYL_POS,
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/weapons/sbrailgun/cyl_glow.png",
		Additive = true,
		TimeToLive = 0.7,
		InitialSize = 1.0,
		ExpansionRate = 0,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
		KillParticleOnEffectCancel = true,
	},
	--firing effects
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 10000,
		TimeToTrigger = LaunchDelay,
		TimeToLive = 2,
		Magnitude = 13,
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 5000,
		TimeToTrigger = LaunchDelay,
		TimeToLive = 0.35,
		Magnitude = 50,
	},
	--bloom

}

for i = 1, 8 do
	local triggertime = RAIL_START + RAIL_PERIOD * math.floor((i - 1) / 2)
	table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = triggertime,
		LocalPosition = {x = RAIL_POS.x, y = RAIL_POS.y + RAIL_SPACING * (i-1)},
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/weapons/sbrailgun/rail_glow.png",
		Additive = true,
		TimeToLive = LaunchDelay - triggertime,
		InitialSize = 1.0,
		ExpansionRate = 0,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, RAIL_OPACITY },
		Colour2 = { 255, 255, 255, RAIL_OPACITY },
		KillParticleOnEffectCancel = true,
	})
end
for i = 1, 6 do
	local triggertime = RAIL_START + RAIL_PERIOD * math.floor((i + 1) / 2)
	table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = triggertime,
		LocalPosition = {x = -RAIL_POS.x, y = RAIL_POS.y + RAIL_SPACING * (i + 1) + 0.5},
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/weapons/sbrailgun/rail_glow.png",
		Additive = true,
		TimeToLive = LaunchDelay - triggertime,
		InitialSize = 1.0,
		ExpansionRate = 0,
		Angle = 90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, RAIL_OPACITY },
		Colour2 = { 255, 255, 255, RAIL_OPACITY },
		KillParticleOnEffectCancel = true,
	})
end
--firing effect
for i = 1, 3 do
	table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = LaunchDelay + 0.04,
		LocalPosition = { x = 0, y = -FIRE_SPACING * (i - 1), z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.4,
		InitialSize = 12,
		ExpansionRate = 100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 96, 64 },
		Colour2 = { 255, 96, 32, 0 },
	})
	table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = -FIRE_SPACING * (i - 1), z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.08,
		InitialSize = 20,
		ExpansionRate = -20,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 192, 192, 255, 255 },
		Colour2 = { 64, 64, 255, 0 },
	})
end
--sparks
table.insert(Effects,
{
	Type = "sparks",
	TimeToTrigger = LaunchDelay,
	SparkCount = 80,
	LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
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
			ScaleMean = 2,
			ScaleStdDev = 1,
			SpeedStretch = 0,
			SpeedMean = 5000,
			SpeedStdDev = 4000,
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

SoundEvent = "mods/sbBGsoundbank/effects/railgun_fire_weak"