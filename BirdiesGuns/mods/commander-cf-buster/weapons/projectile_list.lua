local sbUraniumCannoncheck = FindProjectile("uraniumcannon")
if sbUraniumCannoncheck then
	function sbUraniumSupport(savename, maxage)
		sburaniumcannon = DeepCopy(sbUraniumCannoncheck)
		sburaniumcannon.SaveName = ("uranium"..savename)
		sburaniumcannon.MaxAge = (maxage/DU_speed)
		table.insert(Projectiles, sburaniumcannon)
		table.insert(ProjectilesToUranium, savename)
		ProjectileEffects[savename] = 
		{
			Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
			Impact =
			{
				["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
			},
		}
	end
	
	sbUraniumSupport("sbrmemp", 720)
	sbUraniumSupport("sbrmfire", 720)
	sbUraniumSupport("sbrmhe", 720)
	sbUraniumSupport("sbsuremp", 480)
	sbUraniumSupport("sbsurfire", 480)
	sbUraniumSupport("sbsurhe", 480)
	sbUraniumSupport("sbdowncannon", 720)
	sbUraniumSupport("sbsawarmour", 720)
	sbUraniumSupport("sbtriplemortar1", 480)
	sbUraniumSupport("sbdowntriplemortar1", 480)
	sbUraniumSupport("sbquadcannon", 580)
	sbUraniumSupport("sbdrone", 720)
	sbUraniumSupport("sbdownmortar2", 480)

	if active then
		local sbsawcheck = FindProjectile("sbsaw")
		if sbsawcheck then
			sbsawcheck.TrailEffect = "mods/commander-cf-buster/effects/uranium_fly.lua"
		end
		local sbsawcheck2 = FindProjectile("sbsawwood")
		if sbsawcheck2 then
			sbsawcheck2.TrailEffect = "mods/commander-cf-buster/effects/uranium_fly.lua"
		end
		
	end
end
--[[
function modDUsupport(savename, maxage)
    local DU_check = FindProjectile("uraniumcannon")
    if DU_check then
        modDUprojectile = DeepCopy(DU_check)
        modDUprojectile.SaveName = ("uranium"..savename)
        modDUprojectile.MaxAge = ((maxage or 720)/DU_speed)
        table.insert(Projectiles, modDUprojectile)
        table.insert(ProjectilesToUranium, savename)
        ProjectileEffects[savename] = 
        {
            Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
            Impact =
            {
                ["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
            },
        }
    end
end
for k, v in pairs(Projectiles) do
  modDUsupport(v.SaveName, 720)
end]]