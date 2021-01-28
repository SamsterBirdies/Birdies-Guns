
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 10.0
SoundEvent = "mods/sbBGsoundbank/effects/rm_trail"
Effects =
{

	{
		Type = "trail",
		Texture = "objects/projectiles/missile/trail.tga",
		LocalPosition = { x = 4, y = 4, z = 9.0 },
		Width = 5,
		Length = 0.75,
		Keyframes = 50,
		KeyframePeriod = 0.025,
		RepeatRate = 0.002,
		ScrollRate = 0,
		FattenRate = 0,
	},
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
	{
		Type = "trail",
		Texture = "objects/projectiles/missile/trail.tga",
		LocalPosition = { x = -4, y = -4, z = 9.0 },
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
		TimeToTrigger = 0.1,
		TimeToTriggerStdDev = 0.03,
		FadeInPeriod = 0.5,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/missile.ogg",
		Volume = 0.75,
		Priority = 192,
		Repeat = true,
		RandomiseStart = false,
	},]]
--[[
	{
		Type = "sound",
		TimeToTrigger = 0,
		FadeInPeriod = 0.5,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = "swarm_230418_SOUNDDOGS__we",
		Volume = 0.5,
		Priority = 128,
		Repeat = true,
		RandomiseStart = true,
	},
]]	
}
