dofile("scripts/core.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 6.0
SoundEvent = "mods/sbBGsoundbank/effects/reload_mosin"
Effects =
{
--[[	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 40, y = 300, z = 0 },
		Acceleration = { x = 0, y = 400, z = 0 },
		Drag = 0.0,
		Sprite = path .. "/effects/media/casingSniper",
		Additive = false,
		TimeToLive = 2,
		Angle = 90,
		InitialSize = 4,
		ExpansionRate = 0,
		AngularVelocity = -720,
		RandomAngularVelocityMagnitude = 180,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 0},
	},]]
}
function InitEffect()
	casing = GetSpriteKey("effects/media/casing.dds");
	particleParams =
	{
		accel = Vec3(0, 200),
		size = 2,
		growthRate = 0,
		angle = 90,
		angularVel = -720,
		ttl = 2,
		drag = 0,
		initialColour = Colour(255, 255, 255, 255),
		finalColour = Colour(255, 255, 255, 0),
		additive = false,
	}
end

function UpdateEffect(self, effectTime, pos, normal, mirror)
	if self == nil then
		-- create new state for the effect
		self = {}
		self.openTime = 0.32
		self.closeTime = self.openTime + 1.2
	end

	local speed = 200
	local deviation = 10
	local baseAngle = -45
	if mirror then
		baseAngle = -baseAngle
	end
	local angle = ToRad(baseAngle + 2*deviation*math.random() - deviation)
	local velocity = Vec3(speed*normal.x, speed*normal.y)
	velocity = Rotate(velocity, angle)
	
	if self.openTime and effectTime > self.openTime then
		-- TriggerSound(OpenSounds[math.random(#OpenSounds)], 0.5, 64, false, true, pos)
		SpawnParticle(casing, pos, velocity, particleParams);
		self.openTime = nil
	elseif self.closeTime and effectTime > self.closeTime then
		-- TriggerSound(CloseSounds[math.random(#CloseSounds)], 0.5, 64, false, true, pos)
		self.closeTime = nil
	end
	
	return self
end
