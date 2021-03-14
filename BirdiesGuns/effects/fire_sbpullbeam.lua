--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 4.5

Sprites =
{
	{
		Name = "sbpullbeam_fire",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					{ texture = path .. "/effects/media/FirebeamFX04.png" },
					{ texture = path .. "/effects/media/FirebeamFX01.png" },
					{ texture = path .. "/effects/media/FirebeamFX02.png" },
					{ texture = path .. "/effects/media/FirebeamFX03.png" },
					

					duration = 0.066,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}

Effects =
{
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 12, y = 34, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sbpullbeam_fire",
		Additive = true,
		TimeToLive = 4.5,
		Angle = -90,
		InitialSize = 1,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		KillParticleOnEffectCancel = true,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
	--[[{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToTriggerStdDev = 0.,
		FadeInPeriod = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/pullbeam.ogg",
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
SoundEvent = "mods/sbBGsoundbank/effects/fire_sbpullbeam"