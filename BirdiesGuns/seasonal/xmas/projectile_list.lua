--just for convienience.
local snowball = path .. "/seasonal/xmas/snowball.png"
local impacts = "effects/impact_light_snow.lua"
local impactm = "effects/impact_medium_snow.lua"
local impactl = "effects/impact_heavy_snow.lua"
local trails = "effects/snow_trail.lua"
local traill = "effects/snow_trail_large.lua"
--redundant christmas theming test. Just to help turn off christmas theming automatically after christmas is over and before i can update the mod. To avoid errors.
if FindProjectile("machinegun").ProjectileSprite == "weapons/media/bullet_snowball_sml" or FindProjectile("machinegun").Effects.ImpactDevice == "effects/impact_light_snow.lua" then
	--asset swap
	local sbrg = FindProjectile("sbroofgunner")
	if sbrg then
		sbrg.ProjectileSprite = nil
		sbrg.Projectile = {Root={Name="Root", Sprite = snowball, Scale = 1.3}}
		sbrg.DrawBlurredProjectile = false
		sbrg.ProjectileType = "mortar"
		sbrg.Effects.Impact = {["default"] = impacts}
		sbrg.TrailEffect = trails
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
	--reapply flaming versions
	sbMakeFlamingVersion("sbbigminigun", 1.15, 0.1, "flaming_trail", 40, nil, nil)
	sbMakeFlamingVersion("sbroofgunner", 1.5, 0.2, "flaming_sniper_trail", nil, smallArmsFlare)
	sbMakeFlamingVersion("sbroofminigun", 1.5, 0.2,"flaming_sniper_trail", nil, smallArmsFlare)
	sbMakeFlamingVersion("sbdowngunner", 1.5, 0.2, "flaming_sniper_trail", nil, smallArmsFlare)
	sbMakeFlamingVersion("sbdownminigun", 1.5, 0.2, "flaming_sniper_trail", nil, smallArmsFlare)
	sbMakeFlamingVersion("sbpebble", 1.25, 0.2, "flaming_sniper_trail", nil, smallArmsFlare)
	sbMakeFlamingVersion("sbdowncannon", 1.25, 0.4, "flaming_trail", 80, nil, nil)
	sbMakeFlamingVersion("sb50cal", 1.25, 0.2, "flaming_sniper_trail", nil, smallArmsFlare)
end