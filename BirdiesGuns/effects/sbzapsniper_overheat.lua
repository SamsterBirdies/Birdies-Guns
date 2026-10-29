-- Repeating warning sparks while the Lightning Sniper is overheated.
LifeSpan = 2.5
SoundEvent = "mods/sbBGsoundbank/effects/imploderidle"

Effects =
{
	{
		Type = "sparks", TimeToTrigger = 0, SparkCount = 24, BurstPeriod = 0.2, SparksPerBurst = 4,
		LocalPosition = { x = 25, y = 0, z = 0 },
		Sprite = path .. "/effects/media/sparks.dds", Gravity = 0, Additive = true,
		EvenDistribution = { Min = -150, Max = 150, StdDev = 20 },
		Keyframes =
		{
			{ Angle = 0, RadialOffsetMin = 0, RadialOffsetMax = 10,
				ScaleMean = 0.32, ScaleStdDev = 0.1, SpeedStretch = 0.1,
				SpeedMean = 240, SpeedStdDev = 80, Drag = 0.35,
				RotationMean = 0, RotationStdDev = 180, RotationalSpeedMean = 0, RotationalSpeedStdDev = 0,
				AgeMean = 0.35, AgeStdDev = 0.1, AlphaKeys = { 1, 0 }, ScaleKeys = { 0.8, 0.1 },
				colour = { 150, 220, 255, 255 }, },
		},
	},
}
