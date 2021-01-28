dofile("effects/device_explode_util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3.5
SoundEvent = "mods/sbBGsoundbank/effects/swarmshield_explode2"
Effects =
{	
	--[[{
		Type = "sound",
		TimeToTrigger = 0.0,
		TimeToTriggerStdDev = 0.0,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/split2.ogg",
		Volume = 0.7,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
--[[
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = "fire_cannon",
		Volume = 0.7,
		Priority = 192,
	},
]]
}

--[[
function InitEffect()
	SFXVariants("/audio/sfx/explosions/explosion_small_", 4)
end
]]