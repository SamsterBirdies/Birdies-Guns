-- Small electrical recharge pulse.
LifeSpan = 0.45
SoundEvent = "mods/sbBGsoundbank/effects/reload_railgun"

Effects =
{
	{
		Type = "sparks", TimeToTrigger = 0, SparkCount = 7,
		LocalPosition = { x = 28, y = 0, z = 0 },
		Sprite = path .. "/effects/media/sparks.dds", Gravity = 0, Additive = true,
		EvenDistribution = { Min = -180, Max = 180, StdDev = 12 },
		Keyframes =
		{
			{ Angle = 0, RadialOffsetMin = 0, RadialOffsetMax = 8,
				ScaleMean = 0.25, ScaleStdDev = 0.08, SpeedStretch = 0,
				SpeedMean = 180, SpeedStdDev = 40, Drag = 0.5,
				RotationMean = 0, RotationStdDev = 180, RotationalSpeedMean = 0, RotationalSpeedStdDev = 0,
				AgeMean = 0.3, AgeStdDev = 0.08, AlphaKeys = { 0.8, 0 }, ScaleKeys = { 0.7, 0.1 },
				colour = { 120, 205, 255, 220 }, },
		},
	},
}
