-- Brief electric muzzle flash for the Lightning Sniper.
LifeSpan = 0.35
SoundEvent = "mods/sbBGsoundbank/effects/fire_minilaser"

Effects =
{
	{
		Type = "sparks", TimeToTrigger = 0, SparkCount = 12,
		LocalPosition = { x = 78, y = 0, z = 0 },
		Sprite = path .. "/effects/media/sparks.dds", Gravity = 0, Additive = true,
		EvenDistribution = { Min = -24, Max = 24, StdDev = 4 },
		Keyframes =
		{
			{ Angle = 0, RadialOffsetMin = 0, RadialOffsetMax = 6,
				ScaleMean = 0.45, ScaleStdDev = 0.12, SpeedStretch = 0.25,
				SpeedMean = 900, SpeedStdDev = 160, Drag = 0.15,
				RotationMean = 0, RotationStdDev = 180, RotationalSpeedMean = 0, RotationalSpeedStdDev = 0,
				AgeMean = 0.18, AgeStdDev = 0.05, AlphaKeys = { 1, 0 }, ScaleKeys = { 1, 0.15 },
				colour = { 105, 190, 255, 255 }, },
		},
	},
}
