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
--support buster shrapnel
local function sbeat(saveName, saveName2)
	--returns true for other versions of the projectile aswell like flaming versions.
	if saveName == saveName2 or saveName == "flaming" .. saveName2 or saveName == "armoured" .. saveName2 or saveName == "vacuum" .. saveName2 or saveName == "drunk" .. saveName2 or saveName == "damaged" .. saveName2 then 
		return true
	else
		return false
	end
end
local mortarshrapnel = FindProjectile("mortar2").Effects.Impact.antiair
local add_shrapnel = 
{
	"sbdownmortar2", "sbdowntriplemortar1", "sbtriplemortar1",
	"sbrmemp", "sbrmfire", "sbrmhe",
	"sbsuremp", "sbsurefire", "sbsurehe",
	"sbdrone",
}
for k, v in pairs(Projectiles) do
	for kk, vv in pairs(add_shrapnel) do
		if sbeat(v.SaveName, vv) then
			local effectname = ""
			if type(v.Effects.Impact.antiair) == "string" then
				effectname = v.Effects.Impact.antiair
			elseif type(v.Effects.Impact.default) == "string" then
				effectname = v.Effects.Impact.default
			end
			v.Effects.Impact.antiair = DeepCopy(mortarshrapnel)
			if effectname ~= "" then
				v.Effects.Impact.antiair.Effect = effectname
			end
		end
	end
end