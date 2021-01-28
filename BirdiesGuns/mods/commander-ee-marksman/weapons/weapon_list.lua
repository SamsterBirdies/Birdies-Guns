sbtriplesniperap_upgradeMetalCost = 100
sbtriplesniperap_upgradeEnergyCost = 1000
local sbtriplesniperap_base = FindWeapon("sniper2")
if sbtriplesniperap_base then
table.insert(sbtriplesniperap_base.Upgrades,
    {
        Enabled = true,
        SaveName = "sbtriplesniperap",
        MetalCost = sbtriplesniperap_upgradeMetalCost,
        EnergyCost = sbtriplesniperap_upgradeEnergyCost,
		Button = "hud-sbbg-upgrade",
    })
end
local sbsnipercopter = FindWeapon("sbsnipercopter")
if sbsnipercopter then
	sbsnipercopter.Enabled = true
end
local sb50cal = FindWeapon("sb50cal")
if sb50cal then
	sb50cal.Enabled = true
end
local sbslingshotfire = FindWeapon("sbslingshotfire")
if sbslingshotfire then
	sbslingshotfire.Enabled = true
	end


