
if active then
	local moonfog = FindProjectile("sbfog")
	if moonfog then
		moonfog.Effects.Impact.default = "effects/energy_shield_ricochet.lua"
		moonfog.EMPDuration = 0.2
		moonfog.EMPRadius = 50
		moonfog.Projectile.Root.Sprite = "sbfog_blue"
		if sb_EXPLOSIONS_path then
			moonfog.Projectile.Root.ChildrenInFront =
			{{
				Name = "Bloom",
				Angle = 0,
				Offset = { 0, 0 },
				Pivot = { 0, 0 },
				PivotOffset = { 0, 0 },
				Sprite = "sbfogemp_bloom",
				Additive = true,
				Scale = 11,
			}}
		end
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
	local bigminigun = FindProjectile("sbbigminigun")
	if bigminigun then
		bigminigun.Effects.Impact.default = "mods/weapon_pack/effects/impact_emp_medium.lua"
	end
end