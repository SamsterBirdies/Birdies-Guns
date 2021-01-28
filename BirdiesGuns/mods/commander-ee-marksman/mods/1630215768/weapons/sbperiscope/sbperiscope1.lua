dofile("scripts/device_utility.lua")

HasLaserSight = true

head = FindSpriteComponent(Root, "Head")
if head then
	head.Sprite = path .. "/weapons/sbperiscope1.png"
end