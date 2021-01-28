
if active then
	local moonfog = FindProjectile("sbfog")
	if moonfog then
	moonfog.Effects.Impact.default = "effects/energy_shield_ricochet.lua"
	moonfog.EMPDuration = 0.2
	moonfog.EMPRadius = 50
	moonfog.Projectile.Root.Sprite = "sbfog_blue"
	end
	local flamingmoonfog = FindProjectile("flamingsbfog")
	if flamingmoonfog then
	flamingmoonfog.Effects.Impact.default = "effects/energy_shield_ricochet.lua"
	flamingmoonfog.EMPDuration = 0.2
	flamingmoonfog.EMPRadius = 50
	flamingmoonfog.Projectile.Root.Sprite = "sbfog_yellow"
	end
	local flamingmoonfog = FindProjectile("vacuumsbfog")
	if flamingmoonfog then
	flamingmoonfog.Effects.Impact.default = "effects/energy_shield_ricochet.lua"
	flamingmoonfog.EMPDuration = 0.2
	flamingmoonfog.EMPRadius = 50
	flamingmoonfog.Projectile.Root.Sprite = "sbfog_green"
	end
end