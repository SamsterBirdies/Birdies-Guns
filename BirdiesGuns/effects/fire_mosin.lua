--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects

LifeSpan = 1.8

Sprites =
{
}

Effects =
{
--[[
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/fire_sniper_light_01_1001108_SOUNDDOGS__sp.mp3",
		Volume = 0.8,
	},
]]	
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 10, y = 130, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sniper_flash",
		Additive = true,
		TimeToLive = 2,
		Angle = -90,
		InitialSize = 3,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 128, 128, 128, 255 },
		Colour2 = { 128, 128, 128, 255 },
	},
--[[	{
		Type = "bullettime",
		TimeToTrigger = 0,
		TimeToContinue = 1.5,
		Speed = 0.25,
	},
]]
	--[[{
		Type = "sound",
		TimeToTrigger = 0.0,
		TimeToTriggerStdDev = 0,
		FadeInPeriod = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/caliber50.ogg",
		Volume = 0.28,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]

}
SoundEvent = "mods/sbBGsoundbank/effects/fire_mosin"
--SoundEvent = "effects/missile_ground_hit"
