dofile("effects/device_explode_util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3

Sprites =
{
	{
		Name = "sbimpact_bounce_saw",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/sawbounce0.png" },
					{ texture = path .. "/effects/media/sawbounce1.png", duration = 0.05 },
					{ texture = path .. "/effects/media/sawbounce2.png" },
					{ texture = path .. "/effects/media/sawbounce0.png", colour = { 1, 1, 1, 0.0 }, duration = 15 }, -- just makes a blank frame long enough to last the rest of the effect

					duration = 0.08,
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
		LocalPosition = { x = 0, y = 50, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sbimpact_bounce_saw",
		Additive = false,
		TimeToLive = 1,
		InitialSize = 0.5,
		Angle = 0,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
}
SoundEvent = "mods/sbBGsoundbank/effects/sawbounce"
