dofile("effects/device_explode_util.lua")
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 1.2

Effects =
{
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 0, y = 50, z = 0 },
		Acceleration = { x = 0, y = -10, z = 0 },
		Drag = 0.0,
		Sprite = "effects/media/smoke.png",
		Additive = false,
		TimeToLive = 1,
		Angle = 0,
		InitialSize = 16,
		ExpansionRate = -600,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 360,
		Colour1 = { 255, 255, 255, 200 },
		Colour2 = { 255, 255, 255, 100 },
	},
}
