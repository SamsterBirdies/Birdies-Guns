LifeSpan = 6.0

LaunchDelay = 0.0
EffectVerticalOffset = 1
EffectDepth = 90

Effects =
{
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		TimeToStop = LaunchDelay,
		SparkCount = 8,
		BurstPeriod = 0.5,
		SparksPerBurst = 2,
		LocalPosition = { x = 0, y = EffectVerticalOffset, z = EffectDepth },
		Sprite = "effects/media/Steam.tga",

		Gravity = 0,	

		NormalDistribution =	
		{
			Mean = 0,
			StdDev = 5,					
		},

		Keyframes =							
		{
			{
				Angle = 0,					
				RadialOffsetMin = 0,		
				RadialOffsetMax = 5,		
				ScaleMean = 0.35,			
				ScaleStdDev = 0.01,			
				SpeedStretch = 0,			
				SpeedMean = 50,				
				SpeedStdDev = 1,			
				Drag = 0,					
				RotationMean = 0,			
				RotationStdDev = 45,		
				RotationalSpeedMean = 5,	
				RotationalSpeedStdDev = 0,	
				AgeMean = 3,				
				AgeStdDev = .1,				
				AlphaKeys = { 0.5, 0.75 },	
				ScaleKeys = { 0.25, 0.75 },	
				colour = { 255, 255, 255, 255 }, 
			},
		},
	},
	{
		Type = "sparks",
		TimeToTrigger = 0,
		TimeToStop = 0.8,
		SparkCount = 6,
		BurstPeriod = 0.2,
		SparksPerBurst = 3,
		LocalPosition = { x = 0, y = EffectVerticalOffset, z = EffectDepth },	
		Sprite = "effects/media/Steam",

		Gravity = -50,					
		NormalDistribution =
		{
			Mean = 180,
			StdDev = 8,
		},

		Keyframes =
		{
			{
				Angle = -180,			
				RadialOffsetMin = 0,	
				RadialOffsetMax = 50,	
				ScaleMean = 0.5,		
				ScaleStdDev = 0.02,		
				SpeedStretch = 0,		
				SpeedMean = 350,		
				SpeedStdDev = 10,		
				Drag = 0.1,				
				RotationMean = 0,		
				RotationStdDev = 45,	
				RotationalSpeedMean = 5,
				RotationalSpeedStdDev = 0,
				AgeMean = 1.5,			
				AgeStdDev = .2,			
				AlphaKeys = { 0.1, 0.75 },
				ScaleKeys = { 0.1, 0.75 },
				colour = { 255, 255, 255, 255 },
			},
			{
				Angle = -165,				
				RadialOffsetMin = 0,		
				RadialOffsetMax = 20,		
				ScaleMean = 0.5,			
				ScaleStdDev = 0.02,			
				SpeedStretch = 0,			
				SpeedMean = 30,				
				SpeedStdDev = 1,			
				Drag = 0.2,					
				RotationMean = 0,			
				RotationStdDev = 45,		
				RotationalSpeedMean = -180,	
				RotationalSpeedStdDev = 0,	
				AgeMean = 1,				
				AgeStdDev = .1,				
				AlphaKeys = { 0.1, 0.75 },	
				ScaleKeys = { 0.1, 0.75 },	
				colour = { 255, 255, 255, 255 },
			},
			{
				Angle = 165,			
				RadialOffsetMin = 0,	
				RadialOffsetMax = 20,	
				ScaleMean = 0.5,		
				ScaleStdDev = 0.02,		
				SpeedStretch = 0,		
				SpeedMean = 30,			
				SpeedStdDev = 1,		
				Drag = 0.2,				
				RotationMean = 0,		
				RotationStdDev = 45,	
				RotationalSpeedMean = 180,
				RotationalSpeedStdDev = 0,
				AgeMean = 1,			
				AgeStdDev = .1,			
				AlphaKeys = { 0.1, 0.75 },
				ScaleKeys = { 0.1, 0.75 },
				colour = { 255, 255, 255, 255 },
			},
			{
				Angle = 180,					
				RadialOffsetMin = 0,		
				RadialOffsetMax = 50,		
				ScaleMean = 0.5,			
				ScaleStdDev = 0.02,			
				SpeedStretch = 0,			
				SpeedMean = 350,			
				SpeedStdDev = 10,			
				Drag = 0.1,					
				RotationMean = 0,			
				RotationStdDev = 45,		
				RotationalSpeedMean = 5,	
				RotationalSpeedStdDev = 0,	
				AgeMean = 1.5,				
				AgeStdDev = .2,				
				AlphaKeys = { 0.1, 0.75 },	
				ScaleKeys = { 0.1, 0.75 },	
				colour = { 255, 255, 255, 255 }, 
			},
		},
	},
}
SoundEvent = "mods/sbBGsoundbank/effects/launchsmall"