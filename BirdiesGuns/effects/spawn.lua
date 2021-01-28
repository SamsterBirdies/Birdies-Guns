dofile("effects/transaction_util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 8.0
SoundEvent = "mods/sbBGsoundbank/effects/spawn"
Effects =
{
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 4,
		LocalPosition = { x = 0, y = 0, z = 3 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/cloud",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -20,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 20,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 50,
				ScaleMean = 4,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 100,
				SpeedStdDev = 10,
				Drag = 0.05,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 5,
				RotationalSpeedStdDev = 25,
				AgeMean = 0.75,
				AgeStdDev = 0.02,
				AlphaKeys = { 0.1, 0.25 },
				ScaleKeys = { 0.1, 1 },
			},
		},
	},
	{
	--DEBRIS
		Type = "sparks",
		PlayForEnemy = false,
		TimeToTrigger = 0.0,
		SparkCount = 7,
		LocalPosition = { x = 0, y = 0, z = 2 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/debris",

		Gravity = 200,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -35,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 35,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 2,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 40,
				ScaleMean = 0.25,
				ScaleStdDev = 0.02,
				SpeedStretch = 0,
				SpeedMean = 150,
				SpeedStdDev = 2,
				Drag = 0.01,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 35,
				AgeMean = 0.5,
				AgeStdDev = 0.1,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 1 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 40,
				ScaleMean = 0.25,
				ScaleStdDev = 0.02,
				SpeedStretch = 0,
				SpeedMean = 150,
				SpeedStdDev = 2,
				Drag = 0.01,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 35,
				AgeMean = 0.5,
				AgeStdDev = 0.1,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 1 },
			},
		},
	},
	{
		Type = "sprite",
		PlayForEnemy = false,
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 30, z = -1 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "shockwave",
		Additive = true,
		TimeToLive = 0.45,
		InitialSize = 2,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 100, 80, 255, 255 },
		Colour2 = { 100, 80, 255, 255 },
	},
	--[[{
		Type = "sound",
		TimeToTrigger = 0.0,
		TimeToTriggerStdDev = 0.0,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/twang3.ogg",
		Volume = 0.10,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
}

--[[
Sounds =
{
	path .. "/effects/media/hand_tools_385613_SOUNDDOGS__to.mp3",
	path .. "/effects/media/hand_tools_385614_SOUNDDOGS__to.mp3",
	path .. "/effects/media/hand_tools_385615_SOUNDDOGS__to.mp3",
	path .. "/effects/media/hand_tools_385616_SOUNDDOGS__to.mp3",
}

Repeat = false

function UpdateEffect(self, effectTime, pos)
	if self == nil then self = {} end

	if self.channel == nil or (Repeat and not IsSoundPlaying(self.channel)) then
		self.channel = TriggerSound(Sounds[math.random(#Sounds)], 1.0, 192, false, true, pos)
	end
	
	return self
end
]]