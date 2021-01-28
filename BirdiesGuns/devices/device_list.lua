table.insert(Devices, IndexOfDevice("battery") + 1,
{
		Enabled = false,
		SaveName = "sbbigbattery",
		FileName = path .. "/devices/sbbigbattery.lua",
		Icon = "hud-battery-icon",
		Detail = "hud-detail-battery",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 10.0,
		BuildTimeComplete = 10.0,
		ScrapPeriod = 8,
		MetalCost = 350,
		EnergyCost = 1200,
		MetalRepairCost = 20,
		EnergyRepairCost = 350,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})

--[[
local batteryupgrade = FindDevice("battery")
if not batteryupgrade.Upgrades then 
	batteryupgrade.Upgrades = {} end
local batteryupgrade = FindDevice("battery")
if batteryupgrade then
	
table.insert(batteryupgrade.Upgrades,
{
	Enabled = true,
	SaveName = "sbbigbattery",
	MetalCost = 200,
	EnergyCost = 600,
	Button = "hud-sbbg-upgrade",
})
end]]

table.insert(Devices, IndexOfDevice("battery"),
{
		Enabled = false,
		SaveName = "sbbigmetal",
		FileName = path .. "/devices/sbbigmetal.lua",
		Icon = "hud-metalstore-icon",
		Detail = "hud-detail-metalstore",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 10.0,
		BuildTimeComplete = 10.0,
		ScrapPeriod = 8,
		MetalCost = 400,
		EnergyCost = 1000,
		MetalRepairCost = 20,
		EnergyRepairCost = 350,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})
--[[
local storeupgrade = FindDevice("store")
if storeupgrade then
	if not storeupgrade.Upgrades then storeupgrade.Upgrades = {} end
table.insert(storeupgrade.Upgrades,
{
	Enabled = true,
	SaveName = "sbbigmetal",
	MetalCost = 200,
	EnergyCost = 500,
	Button = "hud-sbbg-upgrade",
})
end
]]
table.insert(Devices, IndexOfDevice("mine") + 1,	
{
		Enabled = false,
		SaveName = "sbderrick",
		FileName = path .. "/devices/sbderrick.lua",
		Icon = "hud-derrick-icon",
		Detail = "hud-detail-mine",
		BuildTimeIntermediate = 12.0,
		BuildTimeComplete = 90.0,
		ScrapPeriod = 10,
		MetalCost = 900,
		EnergyCost = 7000,
		MetalRepairCost = 200,
		EnergyRepairCost = 1500,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = 30,
		BuildOnOreOnly = true,
		AlignToCursorNormal = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Devices,
{
		Enabled = false,
		SaveName = "sboildrumdevice",
		FileName = path .. "/devices/sboildrumdevice.lua",
		Icon = "hud-battery-icon",
		Detail = "hud-detail-battery",
		BuildTimeIntermediate = 10.0,
		BuildTimeComplete = 10.0,
		ScrapPeriod = 7,
		MetalCost = 0,
		EnergyCost = 0,
		MetalRepairCost = 20,
		EnergyRepairCost = 350,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = 65,
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
		BuildTimeIntermediate = 10.0,
		BuildTimeComplete = 10.0,
		ScrapPeriod = 7,
		MetalCost = 0,
		EnergyCost = 0,
		MetalRepairCost = 20,
		EnergyRepairCost = 350,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = 65,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})