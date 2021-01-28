--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 10.0

Sprites =
{
}

Effects =
{
	--[[{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToTriggerStdDev = 0,
		FadeInPeriod = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/helibeep2.ogg",
		Volume = 0.6,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
	--[[{
		Type = "sound",
		TimeToTrigger = 1.6,
		TimeToTriggerStdDev = 0,
		FadeInPeriod = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/rotorstart.ogg",
		Volume = 0.3,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]

--[[
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/start_sim.wav",
		Volume = 0.5,
		Priority = 192,
	},
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/laser_loop_409977_SOUNDDOGS__ba.mp3",
		Volume = 1,
		Priority = 192,
	},
]]
--[[	{
		Type = "bullettime",
		TimeToTrigger = 0,
		TimeToContinue = 1.5,
		Speed = 0.5,
	},
]]
}
SoundEvent = "mods/sbBGsoundbank/effects/fire_sbhelicopter"
