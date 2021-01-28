
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 4.0

Effects =
{

	{
		Type = "trail",
		Texture = "objects/projectiles/missile/trail.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Width = 5,
		Length = 0.75,
		Keyframes = 50,
		KeyframePeriod = 0.025,
		RepeatRate = 0.002,
		ScrollRate = 0,
		FattenRate = 0,
	},
--[[{
		Type = "sound",
		TimeToTrigger = 0.0,
		TimeToTriggerStdDev = 0.00,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/rocketsmall2.ogg",
		Volume = 0.32,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
}
SoundEvent = "mods/sbBGsoundbank/effects/rocketsmall_trail"