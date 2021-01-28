dofile("scripts/device_utility.lua")
RoundsEachBurst = RoundsEachBurst + 2
if not active then
	FireSpreadMultiplier = FireStdDev + 0.02
end
MinFireSpread = MinFireSpread + 10

sprite = FindSpriteComponent(Root, "Head")
if sprite then
	sprite.Sprite = path .. "/weapons/sbheshotgun.png"
end