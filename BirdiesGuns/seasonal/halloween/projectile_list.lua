--sbrm
local sbrmemp = FindProjectile("sbrmemp")
if sbrmemp then
	sbrmemp.Projectile.Root.Sprite = path .. "/seasonal/halloween/projectileemp.png"
	sbrmemp.TrailEffect = path .. "/effects/rm_trail_halloween.lua"
end
local sbrmfire = FindProjectile("sbrmfire")
if sbrmfire then
	sbrmfire.Projectile.Root.Sprite = path .. "/seasonal/halloween/projectilefire.png"
	sbrmfire.TrailEffect = path .. "/effects/rm_trail_halloween.lua"
end
local sbrmhe = FindProjectile("sbrmhe")
if sbrmhe then
	sbrmhe.Projectile.Root.Sprite = path .. "/seasonal/halloween/projectilehe.png"
	sbrmhe.TrailEffect = path .. "/effects/rm_trail_halloween.lua"
end
for k, v in pairs(Projectiles) do
	if v.TrailEffect then
		if v.TrailEffect == path .. "/effects/rm_trail.lua" then
			v.TrailEffect = path .. "/effects/rm_trail_halloween.lua"
		elseif v.TrailEffect == path .. "/effects/sbdrone_trail.lua" then
			v.TrailEffect = path .. "/effects/sbdrone_trail_halloween.lua"
		end
	end
end