dofile("effects/device_explode_util.lua")

LifeSpan = 15

Sprites =
{
	{
		Name = "sbimpact_shield_emp",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "mods/weapon_pack/effects/media/impact_shield_04.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_05.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_06.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_07.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_08.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_09.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_10.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_11.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_12.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_13.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_14.tga", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/impact_shield_14.tga", colour = { 1, 1, 1, 0.0 }, duration = 15 },

					duration = 0.03,
					blendColour = false,
					blendCoordinates = false,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbimpact_emp",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "mods/weapon_pack/effects/media/RocketEMP04.png", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP05.png", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP06.png", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = path .. "/effects/media/RocketEMP07.png", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = path .. "/effects/media/RocketEMP08.png", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = path .. "/effects/media/RocketEMP09.png", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = path .. "/effects/media/RocketEMP10.png", colour = { 0.65, 1, 0.5, 1.0 } },
					{ texture = path .. "/effects/media/RocketEMP10.png", colour = { 0.65, 1, 0.5, 0.5 } },
					{ texture = path .. "/effects/media/RocketEMP10.png", colour = { 0.65, 1, 0.5, 0.25 } },
					{ texture = path .. "/effects/media/RocketEMP10.png", colour = { 0.65, 1, 0.5, 0.12 } },
					{ texture = path .. "/effects/media/blank.png", colour = { 1, 1, 1, 0.0 }, duration = 15 }, -- just makes a blank frame long enough to last the rest of the effect

					duration = 0.01,
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
		TimeToTrigger = 0.15,
		SparkCount = 5,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture =  "mods/weapon_pack/effects/media/cloud",

		Gravity = 400,						-- gravity applied to particle (981 is earth equivalent)
		
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
				RadialOffsetMax = 20,
				ScaleMean = 4,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 500,	
				SpeedStdDev = 50,
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
	--SPARKS
		Type = "sparks",
		TimeToTrigger = 0.1,
		SparkCount = 14,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture =  "mods/weapon_pack/effects/media/flame",

		Gravity = 0981,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -35,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 35,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.25,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.5,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.25,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.5,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--DEBRIS
		Type = "sparks",
		TimeToTrigger = 0.1,
		SparkCount = 12,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "mods/weapon_pack/effects/media/debris",

		Gravity = 0981,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -35,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 35,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.5,
				ScaleStdDev = 0.25,
				SpeedStretch = 0,
				SpeedMean = 500,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.1, 0.8 },
				ScaleKeys = { 0.1, 1 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.5,
				ScaleStdDev = 0.25,
				SpeedStretch = 0,
				SpeedMean = 500,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.1, 0.8 },
				ScaleKeys = { 0.1, 1 },
			},
		},
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 100, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sbimpact_shield_emp",
		Additive = false,
		TimeToLive = 2,
		InitialSize = 1.4,
		Angle = 0,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = -50, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sbimpact_emp",
		Additive = true,
		TimeToLive = 2,
		InitialSize = 1.5,
		Angle = 90,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 5000,
		TimeToTrigger = 0,
		TimeToLive = 1,
		Magnitude = 20,
	},

}
SoundEvent = "mods/sbBGsoundbank/effects/impact_imploder"
