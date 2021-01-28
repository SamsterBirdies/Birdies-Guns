dofile("scripts/device_utility.lua")

HasLaserSight = true

reload = FindSpriteComponent(Root, "Reload")
if reload then
	reload.Sprite = "shotgun-reload-marksman"
end
