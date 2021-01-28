local sbshotgunsniperpoop = FindWeapon("sniper")
if sbshotgunsniperpoop then
table.insert(sbshotgunsniperpoop.Upgrades,

    {
        Enabled = true,
        SaveName = "sbshotgunsniperpoop",
        MetalCost = 75,
        EnergyCost = 300,
		Button = "hud-sbbg-upgrade",
    })
end

local sbshotgunsniper = FindWeapon("sniper2")
if sbshotgunsniper then
table.insert(sbshotgunsniper.Upgrades,
    {
        Enabled = true,
        SaveName = "sbshotgunsniper",
        MetalCost = 150,
        EnergyCost = 1500,
		Button = "hud-sbbg-upgrade",
    })
end
local sbshotcopter = FindWeapon("sbshotcopter")
if sbshotcopter then
	sbshotcopter.Enabled = true
end

local sboildrum = FindWeapon("sboilgunemp")
if sboildrum  then
	sboildrum.Enabled = true
end

