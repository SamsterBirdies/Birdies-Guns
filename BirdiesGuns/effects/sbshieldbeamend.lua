--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3


SoundEvent = "mods/sbBGsoundbank/effects/sbshieldbeamend"
Effects =
{	
	
	--[[{
		Type = "sound",
		TimeToTrigger = 0.1,
		FadeInPeriod = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/hydraulic.ogg",
		Volume = 0.03,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
	--[[{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToTriggerStdDev = 0,
		FadeInPeriod = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/laser2end.ogg",
		Volume = 0.9,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]

--[[	{
		Type = "bullettime",
		TimeToTrigger = 0,
		TimeToContinue = 1.5,
		Speed = 0.5,
	},
]]
}
