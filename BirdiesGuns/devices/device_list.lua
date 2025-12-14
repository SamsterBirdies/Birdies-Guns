table.insert(Devices,
{
		Enabled = false,
		SaveName = "sboildrumdevice",
		FileName = path .. "/devices/sboildrumdevice.lua",
		Icon = "hud-battery-icon",
		Detail = "hud-detail-battery",
		BuildTimeIntermediate = 0.1,
		BuildTimeComplete = 0.1,
		ScrapPeriod = 30,
		MetalCost = 0,
		EnergyCost = 0,
		MetalRepairCost = 20,
		EnergyRepairCost = 350,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = 90,
		--MaxUpAngle = 90,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Devices,
{
		Enabled = false,
		SaveName = "sboildrumempdevice",
		FileName = path .. "/devices/sboildrumempdevice.lua",
		Icon = "hud-battery-icon",
		Detail = "hud-detail-battery",
		BuildTimeIntermediate = 0.1,
		BuildTimeComplete = 0.1,
		ScrapPeriod = 30,
		MetalCost = 0,
		EnergyCost = 0,
		MetalRepairCost = 20,
		EnergyRepairCost = 350,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = 90,
		--MaxUpAngle = 90,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})
function sbAddOilUpg()
	for k, v in pairs(Devices) do
		if not v.Upgrades then v.Upgrades = {} end
		if not v.BuildOnOreOnly and not v.BuildOnGroundOnly then
			local i, j = string.find(v.SaveName, "dynamicbarrel")--ignore fortship controllers
			if i == nil then
				table.insert(v.Upgrades, 
				{
					Enabled = false,
					SaveName = "sboildrumempdevice",
					MetalCost = 0,
					EnergyCost = 0,
				})
				table.insert(v.Upgrades, 
				{
					Enabled = false,
					SaveName = "sboildrumdevice",
					MetalCost = 0,
					EnergyCost = 0,
				})
			end
		end
	end
end
RegisterApplyMod(sbAddOilUpg)