--just for convienience.
local snowball = path .. "/seasonal/xmas/snowball.png"
local impacts = "effects/impact_light_snow.lua"
local impactm = "effects/impact_medium_snow.lua"
local impactl = "effects/impact_heavy_snow.lua"
local trails = "effects/bullet_trail.lua"
local trailm = "mods/weapon_pack/effects/20mmcannon_trail.lua"
local traill = "effects/cannon_trail.lua"
--asset swap
local sbrg = FindProjectile("sbroofgunner")
if sbrg then
	sbrg.ProjectileSprite = nil
	sbrg.Projectile = {Root={Name="Root", Sprite = snowball, Scale = 1.3}}
	sbrg.DrawBlurredProjectile = false
	sbrg.ProjectileType = "mortar"
	sbrg.Effects.Impact = {["default"] = impacts}
end
local sbpebble = FindProjectile("sbpebble")
if sbpebble then
	sbpebble.Projectile.Root.Sprite = snowball
	sbpebble.Projectile.Root.Scale = 1.3
	sbpebble.TrailEffect = trails
	sbpebble.Effects.Impact.default = impacts
end
local sb50 = FindProjectile("sb50cal")
if sb50 then
	sb50.ProjectileSprite = nil
	sb50.Projectile = {Root={Name="Root", Sprite = snowball, Scale = 1.9}}
	sb50.DrawBlurredProjectile = false
	sb50.TrailEffect = trails
	sb50.Effects.Impact = {["default"] = impacts}
end
local sbbmg = FindProjectile("sbbigminigun")
if sbbmg then
	sbbmg.ProjectileSprite = nil
	sbbmg.Projectile = {Root={Name="Root", Sprite = snowball, Scale = 2.3}}
	sbbmg.DrawBlurredProjectile = false
	sbbmg.TrailEffect = traill
	sbbmg.Effects.Impact = {["default"] = impactm}
end
local sbdowncannon = FindProjectile("sbdowncannon")
if sbdowncannon then
	sbdowncannon.ProjectileSprite = nil
	sbdowncannon.Projectile = {Root={Name="Root", Sprite = snowball, Scale = 2.8}}
	sbdowncannon.DrawBlurredProjectile = false
	sbdowncannon.TrailEffect = traill
	sbdowncannon.Effects.Impact = {["default"] = impactl}
end
--sbrm
local sbrmemp = FindProjectile("sbrmemp")
if sbrmemp then
	table.insert(sbrmemp.Projectile.Root.ChildrenInFront,
	{
		Name = "xmas_box",
		Sprite = path .. "/seasonal/xmas/gift_blue.png",
		Pivot = {0, -0.285},
		Scale = 2,
	})
end
local sbrmfire = FindProjectile("sbrmfire")
if sbrmfire then
	table.insert(sbrmfire.Projectile.Root.ChildrenInFront,
	{
		Name = "xmas_box",
		Sprite = path .. "/seasonal/xmas/gift_orange.png",
		Pivot = {0, -0.285},
		Scale = 2,
	})
end
local sbrmhe = FindProjectile("sbrmhe")
if sbrmhe then
	table.insert(sbrmhe.Projectile.Root.ChildrenInFront,
	{
		Name = "xmas_box",
		Sprite = path .. "/seasonal/xmas/gift_red.png",
		Pivot = {0, -0.285},
		Scale = 2,
	})
end
--sbsur
local sbsuremp = FindProjectile("sbsuremp")
if sbsuremp then
	table.insert(sbsuremp.Projectile.Root.ChildrenInFront,
	{
		Name = "xmas_box",
		Sprite = path .. "/seasonal/xmas/gift_blue.png",
		Pivot = {0, -0.285},
		Scale = 2,
	})
end
local sbsurfire = FindProjectile("sbsurfire")
if sbsurfire then
	table.insert(sbsurfire.Projectile.Root.ChildrenInFront,
	{
		Name = "xmas_box",
		Sprite = path .. "/seasonal/xmas/gift_orange.png",
		Pivot = {0, -0.285},
		Scale = 2,
	})
end
local sbsurhe = FindProjectile("sbsurhe")
if sbsurhe then
	table.insert(sbsurhe.Projectile.Root.ChildrenInFront,
	{
		Name = "xmas_box",
		Sprite = path .. "/seasonal/xmas/gift_red.png",
		Pivot = {0, -0.285},
		Scale = 2,
	})
end
