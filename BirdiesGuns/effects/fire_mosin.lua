--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects

LifeSpan = 1.8

Sprites =
{
}

Effects =
{
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
}
SoundEvent = "mods/sbBGsoundbank/effects/fire_mosin"
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.04,
		LocalPosition = { x = 0, y = 70, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.08,
		InitialSize = 4,
		ExpansionRate = 100,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 90, 150 },
		Colour2 = { 255, 190, 50, 68 },
	}
)
table.insert(Effects,
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 500,
		FalloffEnd = 2000,
		TimeToTrigger = 0,
		TimeToLive = 0.12,
		Magnitude = 4,
	}
)