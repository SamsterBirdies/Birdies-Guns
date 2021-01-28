dofile("scripts/core.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3.0
SoundEvent = "mods/sbBGsoundbank/effects/reload_rocketbattery"
Effects =
{
	--[[{
		Type = "sound",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/pullbeamreload.ogg",
		PlayForEnemy = true,
		Volume = 0.68,
		Falloff = true,
	},]]
}
--[[
Sounds =
{
	path .. "/effects/media/reload_cannon_01_1107549_SOUNDDOGS__fo.mp3",
	path .. "/effects/media/reload_cannon_02_1107549_SOUNDDOGS__fo.mp3",
}

function UpdateEffect(self, effectTime, pos)
	if effectTime == 0 then
		TriggerSound(Sounds[math.random(#Sounds)], 0.3, 192, true, true, pos)
	end
	
	return self
end
]]
