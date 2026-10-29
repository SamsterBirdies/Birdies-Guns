LifeSpan = 0.08
Effects = 
{
	{
		Type = "trail",
		Texture = path .. "/effects/media/zaptrail",
		LocalPosition = { x = 0, y = 0, z = -1 },
		Colour = { 255, 255, 255, 128 },
		Width = 6,
		Length = 1,
		Keyframes = 30,
		KeyframePeriod = 0.01,
		RepeatRate = 0.008,
		ScrollRate = 0.4,
		FattenRate = 0,
		Additive = true,
		Mipmap = true,
		Lightning = { Scale = 2, Speed = 40, StepDistance = 100 },
	},
}