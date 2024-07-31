sbBGpath = path
dofile("scripts/type.lua")
for k,v in pairs(Weapons) do
    if not v.Upgrades then v.Upgrades = {} end
end
table.insert(Sprites, ButtonSprite("hud-sbbg-upgrade", "context/sbbgupgrade", nil, nil, nil, nil, path))
--test for tog
sbToG = false
if FindWeapon("flak") or FindWeapon("shotgun") or FindWeapon("rocketemp") or FindWeapon("rocket") or FindWeapon("cannon20mm") or FindWeapon("firebeam") then
	sbToG = true
end

--if tog is disabled then add tog sprites 
if not sbToG then
	table.insert(Sprites, ButtonSprite("hud-group-rocket", "groups/Group-Rocket", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, "mods/weapon_pack"))
	table.insert(Sprites, ButtonSprite("hud-group-flak", "groups/Group-Flak", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, "mods/weapon_pack"))
	table.insert(Sprites, ButtonSprite("hud-group-shotgun", "groups/Group-Shotgun", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, "mods/weapon_pack"))
end

--//START WEAPON INSERTION//--

--fire rocket
if FindWeapon("rocket") and FindWeapon("rocketemp") then
	table.insert(Sprites, DetailSprite("hud-detail-sbfirerocket", "sbfirerocket", path))
	table.insert(Sprites, ButtonSprite("hud-sbfirerocket-icon", "HUD/HUD-sbfirerocket", nil, ButtonSpriteBottom, nil, nil, path))
	table.insert(Weapons, IndexOfWeapon("rocketemp") + 1,
	{
		Enabled = true,
		SaveName = "sbfirerocket",
		FileName = path .. "/weapons/sbfirerocket/sbfirerocket.lua",
		Prerequisite = "armoury",
		Icon = "hud-sbfirerocket-icon",
		GroupButton = "hud-group-rocket",
		Detail = "hud-detail-sbfirerocket",
		BuildTimeIntermediate = 3.0,
		BuildTimeComplete = 40.0,
		ScrapPeriod = 5,
		MetalCost = 200,
		EnergyCost = 2000,
		MetalRepairCost = 132,
		EnergyRepairCost = 1320,
		MetalReclaimMin = 0.5,
		MetalReclaimMax = 0.9,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.4,
		SpotterFactor = 0,
		MaxSpotterAssistance = 0.1, -- small benefit from other spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		DrawBlurredProjectile = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
		CompatibleGroupTypes =
		{
			"rocketemp", "rocket",
		},
		Upgrades =
		{
			{
				Enabled = true,
				SaveName = "rocket",
				MetalCost = 200,
				EnergyCost = 2000,
			},
		},
			
	})
	local rocketemp = FindWeapon("rocketemp")
	if rocketemp then
		table.insert(rocketemp.CompatibleGroupTypes, "sbfirerocket")
	end
	local rocket = FindWeapon("rocket")
	if rocket then
		table.insert(rocket.CompatibleGroupTypes, "sbfirerocket")
	end
end
table.insert(Sprites, DetailSprite("hud-detail-sbimploder", "sbimploder", path))
table.insert(Sprites, ButtonSprite("hud-sbimploder-icon", "HUD/HUD-sbimploder", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("laser") + 1,
{
	Enabled = true,
	SaveName = "sbimploder",
	FileName = path .. "/weapons/sbimploder/sbimploder.lua",
	Prerequisite = "factory",
	Icon = "hud-sbimploder-icon",
	GroupButton = "hud-group-laser",
	Detail = "hud-detail-sbimploder", 
	BuildTimeIntermediate = 25.0,
	BuildTimeComplete = 125.0,
	ScrapPeriod = 5,
	MetalCost = 1100,
	EnergyCost = 9000,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.4,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	PopulationCap = 1,
	ObserverBuildEvent = true,
	
	CompatibleGroupTypes =
	{
		"sbimplodernocap",
	},
	Upgrades =
	{
		["sbimplodernocap"] =
		{
			Enabled = true,
			SaveName = "sbimplodernocap",
			MetalCost = 400,
			EnergyCost = 4000,
			Button = "hud-sbbg-upgrade",
		},
	},
		
})
table.insert(Weapons, IndexOfWeapon("sbimploder") + 1,
{
	Enabled = false,
	SaveName = "sbimplodernocap",
	FileName = path .. "/weapons/sbimploder/sbimplodernocap.lua",
	Prerequisite = "upgrade",
	Icon = "hud-sbimploder-icon",
	GroupButton = "hud-group-laser",
	Detail = "hud-detail-sbimploder", 
	BuildTimeIntermediate = 25.0,
	BuildTimeComplete = 125.0,
	ScrapPeriod = 5,
	MetalCost = 1200,
	EnergyCost = 9000,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.4,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	
	CompatibleGroupTypes =
	{
	  "sbimploder",
	},
	Upgrades =
	{
		
	},
		
})
table.insert(Sprites, ButtonSprite("hud-sbroofgunner-icon", "HUD/HUD-sbroofgunner", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("machinegun") + 1,
{
		SaveName = "sbroofgunner",
		FileName = path .. "/weapons/sbroofgunner/sbroofgunner.lua",
		Icon = "hud-sbroofgunner-icon",
		GroupButton = "hud-group-machinegun",
		Detail = "hud-detail-machinegun",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 5,
		MetalCost = 100,
		EnergyCost = 500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",

		Upgrades =
		{
			--[[["sbroofminigun"] =
			{
				Enabled = true,
				SaveName = "sbroofminigun",
				MetalCost = 220,
				EnergyCost = 1000,
				Button = "hud-sbbg-upgrade",
			},]]
		},
	
})

table.insert(Weapons, IndexOfWeapon("minigun") + 1,
{
		Enabled = false,
		SaveName = "sbroofminigun",
		FileName = path .. "/weapons/sbroofgunner/sbroofminigun.lua",
		Icon = "hud-minigun-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 30.0,
		ScrapPeriod = 5,
		MetalCost = 300,
		EnergyCost = 1500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})

local cannon20mmupg = FindWeapon("cannon20mm")
if cannon20mmupg then
table.insert(cannon20mmupg.Upgrades,
	{
		Enabled = true,
		SaveName = "sbbigminigun",
		MetalCost = 300,
		EnergyCost = 2500,
		Button = "hud-sbbg-upgrade",
	})
end
table.insert(Sprites, DetailSprite("hud-detail-sbbigminigun", "sbbigminigun", path))
table.insert(Sprites, ButtonSprite("hud-sbbigminigun-icon", "HUD/HUD-sbbigminigun", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("cannon20mm") + 1,
{
		Enabled = false,
		SaveName = "sbbigminigun",
		FileName = path .. "/weapons/sbbigminigun/sbbigminigun.lua",
		Icon = "hud-sbbigminigun-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-sbbigminigun",
		Prerequisite = "munitions",
		BuildTimeIntermediate = 30.0,
		BuildTimeComplete = 100.0,
		ScrapPeriod = 5,
		MetalCost = 850,
		EnergyCost = 5500,
		MetalRepairCost = 132,
		EnergyRepairCost = 1320,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		ObserverBuildEvent = true,
})
table.insert(Sprites, DetailSprite("hud-detail-sbminishotgun", "sbminishotgun", path))
table.insert(Sprites, ButtonSprite("hud-sbminishotgun-icon", "HUD/HUD-sbminishotgun", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("mortar") + 2,
{
		SaveName = "sbminishotgun",
		Enabled = true,
		FileName = path .. "/weapons/sbminishotgun/sbminishotgun.lua",
		Icon = "hud-sbminishotgun-icon",
		GroupButton = "hud-group-shotgun",
		Detail = "hud-detail-sbminishotgun", 
		Prerequisite = "workshop",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 5,
		MetalCost = 100,
		EnergyCost = 500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			{
				Enabled = true,
				SaveName = "sbminishotgunroof",
				MetalCost = 100,
				EnergyCost = 1000,
				Button = "hud-sbbg-upgrade",
			},
			{
				Enabled = true,
				SaveName = "sbminishotgunfire",
				MetalCost = 250,
				EnergyCost = 1500,
				Button = "hud-sbbg-upgrade",
			},
		},
		
		CompatibleGroupTypes =
		{
			"sbminishotgunfire",
		},
})
table.insert(Weapons, IndexOfWeapon("sbminishotgun") + 1,
{
		SaveName = "sbminishotgunfire",
		Enabled = false,
		FileName = path .. "/weapons/sbminishotgun/sbminishotgunfire.lua",
		Icon = "hud-sbminishotgun-icon",
		GroupButton = "hud-group-shotgun",
		Detail = "hud-detail-sbminishotgun", 
		Prerequisite = "workshop",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 45.0,
		ScrapPeriod = 5,
		MetalCost = 300,
		EnergyCost = 2000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
		
		CompatibleGroupTypes =
		{
			"sbminishotgun",
		},
})
table.insert(Weapons, IndexOfWeapon("sbminishotgun") + 1,
{
		SaveName = "sbminishotgunroof",
		Enabled = false,
		FileName = path .. "/weapons/sbminishotgun/sbminishotgunroof.lua",
		Icon = "hud-sbminishotgun-icon",
		GroupButton = "hud-group-shotgun",
		Detail = "hud-detail-sbminishotgun", 
		Prerequisite = "workshop",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 15.0,
		ScrapPeriod = 5,
		MetalCost = 200,
		EnergyCost = 2000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbminishotgunfire"] =
			{
				Enabled = true,
				SaveName = "sbminishotgunfire",
				MetalCost = 100,
				EnergyCost = 1000,
				Button = "hud-sbbg-upgrade",
			},
		},
		
})


local shotgun = FindWeapon("shotgun")
if shotgun then
	table.insert(shotgun.Upgrades,
	{
		Enabled = true,
		SaveName = "sbheshotgun",
		MetalCost = 250,
		EnergyCost = 2000,
		Button = "hud-sbbg-upgrade",
	})
	table.insert(Weapons, IndexOfWeapon("shotgun") + 1,
	{
			SaveName = "sbheshotgun",
			Enabled = false,
			FileName = path .. "/weapons/sbheshotgun/sbheshotgun.lua",
			Icon = "hud-shotgun-icon",
			GroupButton = "hud-group-shotgun",
			Detail = "hud-detail-shotgun",
			Prerequisite = "upgrade",
			BuildTimeIntermediate = 1.0,
			BuildTimeComplete = 35.0,
			ScrapPeriod = 5,
			MetalCost = 600,
			EnergyCost = 5000,
			MetalRepairCost = 7.5,
			EnergyRepairCost = 225,
			MetalReclaimMin = 0.25,
			MetalReclaimMax = 0.5,
			EnergyReclaimMin = 0.1,
			EnergyReclaimMax = 0.5,
			MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
			MaxUpAngle = StandardMaxUpAngle,
			BuildOnGroundOnly = false,
			FireGroupWhenDoorBlocks = true,
			SelectEffect = "ui/hud/weapons/ui_weapons",
			CompatibleGroupTypes =
			{
				"shotgun",
			},
	})
	if not shotgun.CompatibleGroupTypes then shotgun.CompatibleGroupTypes = {} end
	table.insert(shotgun.CompatibleGroupTypes, "sbheshotgun")
end
table.insert(Sprites, DetailSprite("hud-detail-sbssm", "sbssm", path))
table.insert(Weapons, IndexOfWeapon("sbbigminigun") + 1,
{
	Enabled = false,
	SaveName = "sbssm",
	FileName = path .. "/weapons/sbssm/sbssm.lua",
	Prerequisite = "upgrade",
	Icon = "hud-sbquadcannon-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-sbssm", 
	BuildTimeIntermediate = 10.0,
	BuildTimeComplete = 45.0,
	ScrapPeriod = 5,
	MetalCost = 700,
	EnergyCost = 5000,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	MetalReclaimMin = 0.5,
	MetalReclaimMax = 0.9,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.4,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	RequiresSpotterToFire = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	PopulationCap = 6,
	Upgrades =
		{
			["sbssmfire"] =
			{
				Enabled = true,
				SaveName = "sbssmfire",
				MetalCost = 200,
				EnergyCost = 2000,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes =
		{
			"sbssmfire",
		},
})
table.insert(Weapons, IndexOfWeapon("sbssm") + 1,
{
	Enabled = false,
	SaveName = "sbssmfire",
	FileName = path .. "/weapons/sbssm/sbssmfire.lua",
	Prerequisite = "upgrade",
	Icon = "hud-sbquadcannon-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-sbssm", 
	BuildTimeIntermediate = 10.0,
	BuildTimeComplete = 60.0,
	ScrapPeriod = 5,
	MetalCost = 900,
	EnergyCost = 7000,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	MetalReclaimMin = 0.5,
	MetalReclaimMax = 0.9,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.4,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	RequiresSpotterToFire = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	PopulationCap = 3,
	CompatibleGroupTypes =
	{
		"sbssm",
	},
})
table.insert(Sprites, DetailSprite("hud-detail-sbquadcannon", "sbquadcannon", path))
table.insert(Sprites, ButtonSprite("hud-sbquadcannon-icon", "HUD/HUD-sbquadcannon", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbssm"),
{
	Enabled = true,
	SaveName = "sbquadcannon",
	FileName = path .. "/weapons/sbquadcannon/sbquadcannon.lua",
	Prerequisite = "munitions",
	Icon = "hud-sbquadcannon-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-sbquadcannon", 
	BuildTimeIntermediate = 30.0,
	BuildTimeComplete = 95.0,
	ScrapPeriod = 6,
	MetalCost = 400,
	EnergyCost = 3000,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	MetalReclaimMin = 0.5,
	MetalReclaimMax = 0.9,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.4,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
		{
			["sbssm"] =
			{
				Enabled = true,
				SaveName = "sbssm",
				MetalCost = 300,
				EnergyCost = 2000,
				Button = "hud-sbbg-upgrade",
			},
		},
	ObserverBuildEvent = true,
})
table.insert(Weapons, IndexOfWeapon("sniper") + 1,
{
		Enabled = false,
		SaveName = "sbtriplesniper",
		FileName = path .. "/weapons/sbtriplesniper/sbtriplesniper.lua",
		Icon = "hud-snipertower-icon",
		GroupButton = "hud-group-sniper",
		Detail = "hud-detail-sniper",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 3.0,
		BuildTimeComplete = 12.0,
		ScrapPeriod = 5,
		MetalCost = 100,
		EnergyCost = 300,
		MetalRepairCost = 10,
		EnergyRepairCost = 150,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		SpotterFactor = 1,
		MaxSpotterAssistance = 0.2, -- small benefit from other spotters
		MaxUpAngle = StandardMaxUpAngle,
		MaxWeaponGroupSize = 1,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})
table.insert(Weapons, IndexOfWeapon("sniper") + 1,
{
		Enabled = false,
		SaveName = "sbshotgunsniperpoop",
		FileName = path .. "/weapons/sbshotgunsniper/sbshotgunsniperpoop.lua",
		Icon = "hud-snipertower-icon",
		GroupButton = "hud-group-sniper",
		Detail = "hud-detail-sniper",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 3.0,
		BuildTimeComplete = 12.0,
		ScrapPeriod = 5,
		MetalCost = 100,
		EnergyCost = 300,
		MetalRepairCost = 10,
		EnergyRepairCost = 150,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		SpotterFactor = 1,
		MaxSpotterAssistance = 0.2, -- small benefit from other spotters
		MaxUpAngle = StandardMaxUpAngle,
		MaxWeaponGroupSize = 1,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})
local sniper = FindWeapon("sniper")
if sniper then
table.insert(sniper.Upgrades,
	{
		Enabled = true,
		SaveName = "sbtriplesniper",
		MetalCost = 75,
		EnergyCost = 300,
		Button = "hud-sbbg-upgrade",
	})
end
table.insert(Weapons, IndexOfWeapon("sniper2") + 1,
{
		Enabled = false,
		SaveName = "sbtriplesniperap",
		FileName = path .. "/weapons/sbtriplesniper/sbtriplesniperap.lua",
		Prerequisite = "upgrade",
		Icon = "hud-apsniper-icon",
		GroupButton = "hud-group-sniper",
		Detail = "hud-detail-sniperap",
		BuildTimeIntermediate = 3.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 5,
		MetalCost = 350,
		EnergyCost = 1500,
		MetalRepairCost = 15,
		EnergyRepairCost = 200,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		SpotterFactor = 0,
		MaxSpotterAssistance = 0.1, -- small benefit from other spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		MaxWeaponGroupSize = 1,
		DrawBlurredProjectile = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})
table.insert(Weapons, IndexOfWeapon("sniper2") + 1,
{
		Enabled = false,
		SaveName = "sbshotgunsniper",
		FileName = path .. "/weapons/sbshotgunsniper/sbshotgunsniper.lua",
		Prerequisite = "upgrade",
		Icon = "hud-apsniper-icon",
		GroupButton = "hud-group-sniper",
		Detail = "hud-detail-sniperap",
		BuildTimeIntermediate = 3.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 5,
		MetalCost = 350,
		EnergyCost = 1500,
		MetalRepairCost = 15,
		EnergyRepairCost = 200,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		SpotterFactor = 0,
		MaxSpotterAssistance = 0.1, -- small benefit from other spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		MaxWeaponGroupSize = 1,
		DrawBlurredProjectile = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})
table.insert(Sprites, DetailSprite("hud-detail-sbpullbeam", "sbpullbeam", path))
table.insert(Sprites, ButtonSprite("hud-sbpullbeam-icon", "HUD/HUD-sbpullbeam", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("laser"),
{
	SaveName = "sbpullbeam",
	FileName = path .. "/weapons/sbpullbeam/sbpullbeam.lua",
	Icon = "hud-sbpullbeam-icon",
	GroupButton = "hud-group-laser",
	Detail = "hud-detail-sbpullbeam", 
	Prerequisite = "factory",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 65,
	ScrapPeriod = 8,
	MetalCost = 500,
	EnergyCost = 5000,
	MetalRepairCost = 132,
	EnergyRepairCost = 3000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.5, -- moderate benefit from spotterss
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	PopulationCap = 1,
	
})
table.insert(Sprites, DetailSprite("hud-detail-sbshieldbeam", "sbshieldbeam", path))
table.insert(Sprites, ButtonSprite("hud-sbshieldbeam-icon", "HUD/HUD-sbshieldbeam", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("laser"),
{
	SaveName = "sbshieldbeam",
	FileName = path .. "/weapons/sbshieldbeam/sbshieldbeam.lua",
	Icon = "hud-sbshieldbeam-icon",
	GroupButton = "hud-group-laser",
	Detail = "hud-detail-sbshieldbeam", 
	Prerequisite = "factory",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 60,
	ScrapPeriod = 8,
	MetalCost = 500,
	EnergyCost = 4500,
	MetalRepairCost = 132,
	EnergyRepairCost = 3000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.5, -- moderate benefit from spotterss
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	PopulationCap = 1,
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "sbdrunklaser",
			MetalCost = 0,
			EnergyCost = 1000,
			Button = "hud-sbbg-upgrade",
		},
	},
})
table.insert(Sprites, ButtonSprite("hud-sbdrunklaser-icon", "HUD/HUD-sbdrunklaser", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbdrunklaser", "sbdrunklaser", path))
table.insert(Weapons, IndexOfWeapon("sbshieldbeam") + 1,
{
		Enabled = false,
		SaveName = "sbdrunklaser",
		FileName = path .. "/weapons/sbdrunklaser/drunklaser.lua",
		Icon = "hud-sbdrunklaser-icon",
		GroupButton = "hud-group-laser",
		Detail = "hud-detail-sbdrunklaser", 
		Prerequisite = "upgrade",
		AnimationScript = path .. "/weapons/sbdrunklaser/animationscript.lua",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 20.0,
		ScrapPeriod = 5,
		MetalCost = 500,
		EnergyCost = 5000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		PopulationCap = 1,
})
table.insert(Sprites, DetailSprite("hud-detail-sbfog", "sbfog", path))
table.insert(Sprites, ButtonSprite("hud-sbfog-icon", "HUD/HUD-sbfog", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("rocketemp"),
{
		SaveName = "sbfog",
		Enabled = true,
		FileName = path .. "/weapons/sbfog/sbfog.lua",
		Icon = "hud-sbfog-icon",
		GroupButton = "hud-group-flak",
		Detail = "hud-detail-sbfog",
		Prerequisite = "armoury",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 35.0,
		ScrapPeriod = 5,
		MetalCost = 200,
		EnergyCost = 2000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbswarmshield"] =
			{
				Enabled = true,
				SaveName = "sbswarmshield",
				MetalCost = 200,
				EnergyCost = 1000,
				Button = "hud-sbbg-upgrade",
			},
		},
})
table.insert(Sprites, DetailSprite("hud-detail-sbrm", "sbrm", path))
table.insert(Sprites, ButtonSprite("hud-sbrmhe-icon", "HUD/HUD-sbrmhe", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("missile2") + 1,
{
	SaveName = "sbrmhe",
	Enabled = false,
	InvertedType = "sbrmheinv",
	FileName = path .. "/weapons/sbrm/sbrmhe.lua",
	Icon = "hud-sbrmhe-icon",
	GroupButton = "hud-group-missile",
	Detail = "hud-detail-sbrm", 
	Prerequisite = "upgrade",
	BuildTimeIntermediate = 8.0,
	BuildTimeComplete = 75.0,
	ScrapPeriod = 8,
	MetalCost = 700,
	EnergyCost = 6700,
	MetalRepairCost = 80,
	EnergyRepairCost = 1250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	SpotterFactor = 0.0, -- can't spot for itself (need a sniper with LOS)
	MaxSpotterAssistance = 0,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = true,
	AlignToCursorNormal = false,
	RequiresSpotterToFire = true,
	RequiresLand = true,
	RequiresWater = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	CompatibleGroupTypes =
	{
		"sbrmemp", "sbrmfire", "sbrmhe", "sbrmempinv", "sbrmfireinv", "sbrmheinv", 
	},
	ObserverBuildEvent = true,
})
table.insert(Sprites, ButtonSprite("hud-sbrmfire-icon", "HUD/HUD-sbrmfire", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("missile2") + 1,
{
	SaveName = "sbrmfire",
	Enabled = false,
	InvertedType = "sbrmfireinv",
	FileName = path .. "/weapons/sbrm/sbrmfire.lua",
	Icon = "hud-sbrmfire-icon",
	GroupButton = "hud-group-missile",
	Detail = "hud-detail-sbrm", 
	Prerequisite = "upgrade",
	BuildTimeIntermediate = 4.0,
	BuildTimeComplete = 15.0,
	ScrapPeriod = 8,
	MetalCost = 475,
	EnergyCost = 4500,
	MetalRepairCost = 80,
	EnergyRepairCost = 1250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	SpotterFactor = 0.0, -- can't spot for itself (need a sniper with LOS)
	MaxSpotterAssistance = 0,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = true,
	AlignToCursorNormal = false,
	RequiresSpotterToFire = true,
	RequiresLand = true,
	RequiresWater = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "sbrmhe",
			MetalCost = 225,
			EnergyCost = 2200,
			Button = "hud-sbbg-upgrade",
		},
	},
	CompatibleGroupTypes =
	{
		"sbrmemp", "sbrmfire", "sbrmhe", "sbrmempinv", "sbrmfireinv", "sbrmheinv", 
	},
})
table.insert(Sprites, ButtonSprite("hud-sbrmemp-icon", "HUD/HUD-sbrmemp", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("missile2") + 1,
{
	SaveName = "sbrmemp",
	Enabled = true,
	InvertedType = "sbrmempinv",
	FileName = path .. "/weapons/sbrm/sbrmemp.lua",
	Icon = "hud-sbrmemp-icon",
	GroupButton = "hud-group-missile",
	Detail = "hud-detail-sbrm",
	Prerequisite = "workshop",
	BuildTimeIntermediate = 8.0,
	BuildTimeComplete = 65.0,
	ScrapPeriod = 8,
	MetalCost = 400,
	EnergyCost = 3500,
	MetalRepairCost = 80,
	EnergyRepairCost = 1250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	SpotterFactor = 0.0, -- can't spot for itself (need a sniper with LOS)
	MaxSpotterAssistance = 0,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = true,
	AlignToCursorNormal = false,
	RequiresSpotterToFire = true,
	RequiresLand = true,
	RequiresWater = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "sbrmfire",
			MetalCost = 75,
			EnergyCost = 1000,
			Button = "hud-sbbg-upgrade",
		},
	},
	CompatibleGroupTypes =
	{
		"sbrmemp", "sbrmfire", "sbrmhe", "sbrmempinv", "sbrmfireinv", "sbrmheinv", 
	},
})
--marine versions
table.insert(Sprites, ButtonSprite("hud-sbrmempmarine-icon", "HUD/HUD-sbrmempmarine", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbrmfiremarine-icon", "HUD/HUD-sbrmfiremarine", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbrmhemarine-icon", "HUD/HUD-sbrmhemarine", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbrmhe") + 1,
	InheritType(FindWeapon("sbrmhe"), nil,
	{
		SaveName = "sbrmhemarine",
		FileName = path .. "/weapons/sbrm/sbrmhemarine.lua",
		RequiresLand = false,
		RequiresWater = true,
		BuildOnGroundOnly = false,
		MetalCost = 900,
		CompatibleGroupTypes = { "sbrmempmarine", "sbrmfiremarine", "sbrmhemarine"},
		Icon = "hud-sbrmhemarine-icon",
		ObserverBuildEvent = true,
	})
)
table.insert(Weapons, IndexOfWeapon("sbrmhe") + 1,
	InheritType(FindWeapon("sbrmfire"), nil,
	{
		SaveName = "sbrmfiremarine",
		FileName = path .. "/weapons/sbrm/sbrmfiremarine.lua",
		MetalCost = 675,
		RequiresLand = false,
		RequiresWater = true,
		BuildOnGroundOnly = false,
		Upgrades =
		{
			{
				Enabled = true,
				SaveName = "sbrmhemarine",
				MetalCost = 225,
				EnergyCost = 2200,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes = { "sbrmempmarine", "sbrmfiremarine", "sbrmhemarine"},
		Icon = "hud-sbrmfiremarine-icon",
	})
)
table.insert(Weapons, IndexOfWeapon("sbrmhe") + 1,
	InheritType(FindWeapon("sbrmemp"), nil,
	{
		SaveName = "sbrmempmarine",
		FileName = path .. "/weapons/sbrm/sbrmempmarine.lua",
		RequiresLand = false,
		RequiresWater = true,
		BuildOnGroundOnly = false,
		MetalCost = 600,
		Upgrades =
		{
			{
				Enabled = true,
				SaveName = "sbrmfiremarine",
				MetalCost = 75,
				EnergyCost = 1000,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes = { "sbrmempmarine", "sbrmfiremarine", "sbrmhemarine"},
		Icon = "hud-sbrmempmarine-icon",
	})
)
--inverted versions
table.insert(Weapons, IndexOfWeapon("sbrmhe") + 1,
	InheritType(FindWeapon("sbrmhe"), nil,
	{
		SaveName = "sbrmheinv",
		Enabled = false,
		Inverted = true,
		FileName = path .. "/weapons/sbrm/sbrmheinv.lua",
		CompatibleGroupTypes =
		{
			"sbrmemp", "sbrmfire", "sbrmhe", "sbrmempinv", "sbrmfireinv", "sbrmheinv", 
		},
	})
)
table.insert(Weapons, IndexOfWeapon("sbrmhe") + 1,
	InheritType(FindWeapon("sbrmfire"), nil,
	{
		SaveName = "sbrmfireinv",
		Enabled = false,
		Inverted = true,
		FileName = path .. "/weapons/sbrm/sbrmfireinv.lua",
		Upgrades =
		{
			{
				Enabled = true,
				SaveName = "sbrmheinv",
				MetalCost = 225,
				EnergyCost = 2200,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes =
		{
			"sbrmemp", "sbrmfire", "sbrmhe", "sbrmempinv", "sbrmfireinv", "sbrmheinv", 
		},
	})
)
table.insert(Weapons, IndexOfWeapon("sbrmhe") + 1,
	InheritType(FindWeapon("sbrmemp"), nil,
	{
		SaveName = "sbrmempinv",
		Enabled = true,
		Inverted = true,
		FileName = path .. "/weapons/sbrm/sbrmempinv.lua",
		Upgrades =
		{
			{
				Enabled = true,
				SaveName = "sbrmfireinv",
				MetalCost = 75,
				EnergyCost = 1000,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes =
		{
			"sbrmemp", "sbrmfire", "sbrmhe", "sbrmempinv", "sbrmfireinv", "sbrmheinv", 
		},
	})
)
table.insert(Sprites, DetailSprite("hud-detail-sbsur", "sbsur", path))
table.insert(Sprites, ButtonSprite("hud-sbsuremp-icon", "HUD/HUD-sbsuremp", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("rocketemp"),
{
		SaveName = "sbsuremp",
		Enabled = true,
		FileName = path .. "/weapons/sbsur/sbsuremp.lua",
		Icon = "hud-sbsuremp-icon",
		GroupButton = "hud-group-rocket",
		Detail = "hud-detail-sbsur", 
		Prerequisite = "armoury",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 30.0,
		ScrapPeriod = 5,
		MetalCost = 150,
		EnergyCost = 1500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbsurfire"] =
			{
				Enabled = true,
				SaveName = "sbsurfire",
				MetalCost = 30,
				EnergyCost = 900,
				BuildTimeComplete = 25,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes =
		{
			"sbsurhe", "sbsurfire",
		},
})	
table.insert(Sprites, ButtonSprite("hud-sbsurfire-icon", "HUD/HUD-sbsurfire", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("rocketemp"),
{
		SaveName = "sbsurfire",
		Enabled = false,
		FileName = path .. "/weapons/sbsur/sbsurfire.lua",
		Icon = "hud-sbsurfire-icon",
		GroupButton = "hud-group-rocket",
		Detail = "hud-detail-sbsur", 
		Prerequisite = "armoury",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 30.0,
		ScrapPeriod = 5,
		MetalCost = 200,
		EnergyCost = 3000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbsurhe"] =
			{
				Enabled = true,
				SaveName = "sbsurhe",
				MetalCost = 30,
				EnergyCost = 900,
				BuildTimeComplete = 25,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes =
		{
			"sbsuremp", "sbsurhe",
		},
})	
table.insert(Sprites, ButtonSprite("hud-sbsurhe-icon", "HUD/HUD-sbsurhe", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("rocketemp"),
{
		SaveName = "sbsurhe",
		Enabled = false,
		FileName = path .. "/weapons/sbsur/sbsurhe.lua",
		Icon = "hud-sbsurhe-icon",
		GroupButton = "hud-group-rocket",
		Detail = "hud-detail-sbsur", 
		Prerequisite = "armoury",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 30.0,
		ScrapPeriod = 5,
		MetalCost = 200,
		EnergyCost = 3000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbsuremp"] =
			{
				Enabled = true,
				SaveName = "sbsuremp",
				MetalCost = 30,
				EnergyCost = 900,
				BuildTimeComplete = 25,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes =
		{
			"sbsuremp", "sbsurfire",
		},
})
table.insert(Sprites, ButtonSprite("hud-group-sbperiscope", "groups/Group-sbperiscope", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbperiscope1", "sbperiscope1", path))
table.insert(Sprites, ButtonSprite("hud-sbperiscope-icon", "HUD/HUD-sbperiscope", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbrmemp"),
{
		SaveName = "sbperiscope1",
		Enabled = true,
		FileName = path .. "/weapons/sbperiscope/sbperiscope1.lua",
		Icon = "hud-sbperiscope-icon",
		GroupButton = "hud-group-sbperiscope", 
		Detail = "hud-detail-sbperiscope1", 
		Prerequisite = "workshop",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 30.0,
		ScrapPeriod = 5,
		MetalCost = 300,
		EnergyCost = 2500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbperiscope2"] =
			{
				Enabled = true,
				SaveName = "sbperiscope2",
				MetalCost = 450,
				EnergyCost = 2500,
				Button = "hud-sbbg-upgrade",
			},
		},
})	
table.insert(Sprites, DetailSprite("hud-detail-sbperiscope2", "sbperiscope2", path))
table.insert(Weapons, IndexOfWeapon("sbrmemp"),
{
		SaveName = "sbperiscope2",
		Enabled = false,
		FileName = path .. "/weapons/sbperiscope/sbperiscope2.lua",
		Icon = "hud-sbperiscope-icon",
		GroupButton = "hud-group-sbperiscope", 
		Detail = "hud-detail-sbperiscope2", 
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 90.0,
		ScrapPeriod = 5,
		MetalCost = 800,
		EnergyCost = 5000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})
table.insert(Sprites, DetailSprite("hud-detail-sbswarmshield", "sbswarmshield", path))
table.insert(Weapons, IndexOfWeapon("sbfog") + 1,
{
		SaveName = "sbswarmshield",
		Enabled = false,
		FileName = path .. "/weapons/sbswarmshield/sbswarmshield.lua",
		Icon = "hud-sbfog-icon",
		GroupButton = "hud-group-flak",
		Detail = "hud-detail-sbswarmshield", 
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 40.0,
		ScrapPeriod = 5,
		MetalCost = 400,
		EnergyCost = 3000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		PopulationCap = 2,
})

local sbtriplemortarupg = FindWeapon("mortar2")
if sbtriplemortarupg then
table.insert(sbtriplemortarupg.Upgrades,
	{
		Enabled = true,
		SaveName = "sbtriplemortar",
		MetalCost = 250,
		EnergyCost = 2500,
		Button = "hud-sbbg-upgrade",
	})
end
local mortar = FindWeapon("mortar")
if mortar then
	table.insert(mortar.CompatibleGroupTypes, "sbtriplemortar")
end
local mortar2 = FindWeapon("mortar2")
if mortar2 then
	table.insert(mortar2.CompatibleGroupTypes, "sbtriplemortar")
end
table.insert(Weapons, IndexOfWeapon("mortar2") + 1,
{
		Enabled = false,
		SaveName = "sbtriplemortar",
		FileName = path .. "/weapons/sbtriplemortar/sbtriplemortar.lua",
		Icon = "hud-mortar-icon",
		GroupButton = "hud-group-mortar",
		Detail = "hud-detail-mortarhe",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 7.5,
		BuildTimeComplete = 30.0,
		ScrapPeriod = 10,
		MetalCost = 400,
		EnergyCost = 3000,
		MetalRepairCost = 40,
		EnergyRepairCost = 1000,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 1, -- major benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		PopulationCap = 3,
		
		CompatibleGroupTypes =
		{
			"mortar", "mortar2",
		},
})
table.insert(Sprites, ButtonSprite("hud-group-sbslingshot", "groups/Group-sbslingshot", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbslingshotfire-icon", "HUD/HUD-sbslingshotfire", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbslingshotfire", "sbslingshotfire", path))
table.insert(Weapons, IndexOfWeapon("machinegun") + 2,
{
		SaveName = "sbslingshotfire",
		Enabled = false,
		FileName = path .. "/weapons/sbslingshot/sbslingshotfire.lua",
		Icon = "hud-sbslingshotfire-icon",
		GroupButton = "hud-group-sbslingshot", 
		Detail = "hud-detail-sbslingshotfire",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 35.0,
		ScrapPeriod = 5,
		MetalCost = 200,
		EnergyCost = 1000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		Upgrades =
		{
			["sbslingshotgrenade"] =
			{
				Enabled = true,
				SaveName = "sbslingshotgrenade",
				MetalCost = 75,
				EnergyCost = 500,
				Prerequisite = "upgrade",
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes =
		{
			"sbslingshotgrenade",
		},
	
})

table.insert(Sprites, ButtonSprite("hud-sbslingshotgrenade-icon", "HUD/HUD-sbslingshotgrenade", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbslingshotgrenade", "sbslingshotgrenade", path))
table.insert(Weapons, IndexOfWeapon("sbslingshotfire") + 1,
{
		SaveName = "sbslingshotgrenade",
		Enabled = false,
		FileName = path .. "/weapons/sbslingshot/sbslingshotgrenade.lua",
		Icon = "hud-sbslingshotgrenade-icon",
		GroupButton = "hud-group-sbslingshot", 
		Detail = "hud-detail-sbslingshotgrenade",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 26.0,
		ScrapPeriod = 5,
		MetalCost = 275,
		EnergyCost = 1500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		CompatibleGroupTypes =
		{
			"sbslingshotfire",
		},
	
})
table.insert(Sprites, ButtonSprite("hud-sbslingshotpebble-icon", "HUD/HUD-sbslingshotpebble", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbslingshotpebble", "sbslingshotpebble", path))
table.insert(Weapons, IndexOfWeapon("machinegun") + 2,
{
		SaveName = "sbslingshotpebble",
		Enabled = false,
		FileName = path .. "/weapons/sbslingshot/sbslingshotpebble.lua",
		Icon = "hud-sbslingshotpebble-icon",
		GroupButton = "hud-group-sbslingshot", 
		Detail = "hud-detail-sbslingshotpebble",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 9.0,
		ScrapPeriod = 1,
		MetalCost = 25,
		EnergyCost = 100,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		Upgrades =
		{
			{
				Enabled = false,
				SaveName = "sbslingshotpebble_OP",
				MetalCost = 0,
				EnergyCost = 0,
				Button = "hud-sbbg-upgrade",
			},
		},
})
table.insert(Weapons,
	InheritType(FindWeapon("sbslingshotpebble"),nil,
		{	
			SaveName = "sbslingshotpebble_OP",
			FileName = path .. "/weapons/sbslingshot/sbslingshotpebble_OP.lua",
			MetalCost = 900,
			EnergyCost = 9000,
			BuildTimeComplete = 0.04,
			Enabled = false,
			Upgrades = {},
		}
	)
)
table.insert(Sprites, ButtonSprite("hud-group-sbflame", "groups/Group-sbflame", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbflamethrower", "sbflamethrower", path))
table.insert(Sprites, ButtonSprite("hud-sbflamethrower-icon", "HUD/HUD-sbflamethrower", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbrmemp"),
{
		SaveName = "sbflamethrower",
		Enabled = false,
		FileName = path .. "/weapons/sbflamethrower/sbflamethrower.lua",
		Icon = "hud-sbflamethrower-icon",
		GroupButton = "hud-group-sbflame", 
		Detail = "hud-detail-sbflamethrower", 
		Prerequisite = "workshop",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 95.0,
		ScrapPeriod = 5,
		MetalCost = 500,
		EnergyCost = 3000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
		--[[Upgrades =
		{
			{
				Enabled = true,
				SaveName = "sbflamethrower2",
				MetalCost = 300,
				EnergyCost = 1500,
				Prerequisite = "upgrade",
			},
		},]]
})
--[[table.insert(Weapons,
	InheritType(FindWeapon("sbflamethrower"),nil,
		{	
			SaveName = "sbflamethrower2",
			FileName = path .. "/weapons/sbflamethrower/flamethrower2.lua",
			MetalCost = 800,
			EnergyCost = 4500,
			BuildTimeComplete = 40.0,
			Prerequisite = "upgrade",
			Enabled = false,
			AnimationScript = path .. "/weapons/sbflamethrower/animationscript.lua",
		}
	)
)]]
table.insert(Sprites, ButtonSprite("hud-sbdownmortar-icon", "HUD/HUD-sbdownmortar", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbminishotgun"),
{
		Enabled = true,
		SaveName = "sbdownmortarfire",
		FileName = path .. "/weapons/sbdownmortar/sbdownmortarfire.lua",
		Icon = "hud-sbdownmortar-icon",
		GroupButton = "hud-group-mortar",
		Detail = "hud-detail-mortarhe",
		Prerequisite = "workshop",
		BuildTimeIntermediate = 7.5,
		BuildTimeComplete = 15.0,
		ScrapPeriod = 10,
		MetalCost = 150,
		EnergyCost = 1000,
		MetalRepairCost = 40,
		EnergyRepairCost = 1000,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 1, -- major benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
		CompatibleGroupTypes =
		{
			"sbdownmortar", "sbdowntriplemortar",
		},
		Upgrades =
		{
			["sbdownmortar"] =
			{
				Enabled = true,
				SaveName = "sbdownmortar",
				MetalCost = 100,
				EnergyCost = 800,
				Button = "hud-sbbg-upgrade",
			},
		},
})
table.insert(Weapons, IndexOfWeapon("sbminishotgun"),
{
		Enabled = false,
		SaveName = "sbdownmortar",
		FileName = path .. "/weapons/sbdownmortar/sbdownmortar.lua",
		Icon = "hud-mortar-icon",
		GroupButton = "hud-group-mortar",
		Detail = "hud-detail-mortarhe",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 7.5,
		BuildTimeComplete = 15.0,
		ScrapPeriod = 10,
		MetalCost = 250,
		EnergyCost = 1800,
		MetalRepairCost = 40,
		EnergyRepairCost = 1000,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 1, -- major benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
		CompatibleGroupTypes =
		{
			"sbdownmortarfire", "sbdowntriplemortar",
		},
		Upgrades =
		{
			["sbdowntriplemortar"] =
			{
				Enabled = true,
				SaveName = "sbdowntriplemortar",
				MetalCost = 250,
				EnergyCost = 2500,
				Button = "hud-sbbg-upgrade",
			},
		},
})
table.insert(Weapons, IndexOfWeapon("sbminishotgun"),
{
		Enabled = false,
		SaveName = "sbdowntriplemortar",
		FileName = path .. "/weapons/sbdownmortar/sbdowntriplemortar.lua",
		Icon = "hud-mortar-icon",
		GroupButton = "hud-group-mortar",
		Detail = "hud-detail-mortarhe",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 7.5,
		BuildTimeComplete = 30.0,
		ScrapPeriod = 10,
		MetalCost = 400,
		EnergyCost = 3000,
		MetalRepairCost = 40,
		EnergyRepairCost = 1000,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 1, -- major benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		PopulationCap = 3,
		
		CompatibleGroupTypes =
		{
			"sbdownmortar", "sbdownmortarfire",
		},
})
---------
table.insert(Sprites, ButtonSprite("hud-sbdowngunner-icon", "HUD/HUD-sbdowngunner", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbroofgunner") + 1,
{
		SaveName = "sbdowngunner",
		FileName = path .. "/weapons/sbdowngunner/sbdowngunner.lua",
		Icon = "hud-sbdowngunner-icon",
		GroupButton = "hud-group-machinegun",
		Detail = "hud-detail-machinegun",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 5,
		MetalCost = 90,
		EnergyCost = 500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",

		Upgrades =
		{
			--[[["sbdownminigun"] =
			{
				Enabled = true,
				SaveName = "sbdownminigun",
				MetalCost = 150,
				EnergyCost = 400,
				Button = "hud-sbbg-upgrade",
			},]]
		},
	
})
table.insert(Weapons, IndexOfWeapon("sbroofminigun") + 1,
{
		Enabled = false,
		SaveName = "sbdownminigun",
		FileName = path .. "/weapons/sbdowngunner/sbdownminigun.lua",
		Icon = "hud-minigun-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 20.0,
		ScrapPeriod = 5,
		MetalCost = 300,
		EnergyCost = 900,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})
table.insert(Sprites, DetailSprite("hud-detail-sbdowncannon", "sbdowncannon", path))
table.insert(Sprites, ButtonSprite("hud-sbdowncannon-icon", "HUD/HUD-sbdowncannon", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("cannon"),
{
	Enabled = true,
	SaveName = "sbdowncannon",
	FileName = path .. "/weapons/sbdowncannon/sbdowncannon.lua",
	Prerequisite = "munitions",
	Icon = "hud-sbdowncannon-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-sbdowncannon",
	BuildTimeIntermediate = 30.0,
	BuildTimeComplete = 100.0,
	ScrapPeriod = 6,
	MetalCost = 850,
	EnergyCost = 5500,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	MetalReclaimMin = 0.5,
	MetalReclaimMax = 0.9,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.4,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
	{
		{
				Enabled = true,
				SaveName = "sbdowndrone",
				MetalCost = 150,
				EnergyCost = 2500,
				Button = "hud-sbbg-upgrade",
		},
	},
	ObserverBuildEvent = true,
})
table.insert(Sprites, ButtonSprite("hud-sbdrone-icon", "HUD/HUD-sbdowndrone", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbdrone", "sbdrone", path))
table.insert(Weapons, IndexOfWeapon("sbdowncannon") + 1,
{
	Enabled = false,
	SaveName = "sbdowndrone",
	FileName = path .. "/weapons/sbdowndrone/sbdowndrone.lua",
	Prerequisite = "upgrade",
	Icon = "hud-sbdrone-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-sbdrone",
	BuildTimeIntermediate = 20.0,
	BuildTimeComplete = 50.0,
	ScrapPeriod = 6,
	MetalCost = 1000,
	EnergyCost = 8000,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	MetalReclaimMin = 0.5,
	MetalReclaimMax = 0.9,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.4,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	ObserverBuildEvent = true,
})
table.insert(Sprites, DetailSprite("hud-detail-sb50cal", "sb50cal", path))
table.insert(Sprites, ButtonSprite("hud-sb50cal-icon", "HUD/HUD-sb50cal", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("mortar"),
{
		Enabled = false,
		SaveName = "sb50cal",
		FileName = path .. "/weapons/sb50cal/sb50cal.lua",
		Icon = "hud-sb50cal-icon",
		GroupButton = "hud-group-machinegun",
		Detail = "hud-detail-sb50cal", 
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 5.0,
		BuildTimeComplete = 50.0,
		ScrapPeriod = 5,
		MetalCost = 240,
		EnergyCost = 1200,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
})
--HELICOPTER SECTION----------------------------------------------------------------------------------------------------
table.insert(Sprites, ButtonSprite("hud-group-sbheli", "groups/Group-sbheli", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbhelicopter", "sbhelicopter", path))
table.insert(Sprites, ButtonSprite("hud-sbhelicopter-icon", "HUD/HUD-sbhelicopter", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbimplodernocap") + 1,
{
		Enabled = false,
		SaveName = "sbsnipercopter",
		FileName = path .. "/weapons/sbhelicopter/sbsnipercopter.lua",
		Icon = "hud-sbhelicopter-icon",
		GroupButton = "hud-group-sbheli", 
		Detail = "hud-detail-sbhelicopter", 
		Prerequisite = "factory",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 120.0,
		ScrapPeriod = 5,
		MetalCost = 1100,
		EnergyCost = 6000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		RequiresSpotterToFire = true,
		MaxWeaponGroupSize = 1,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		PopulationCap = 3,
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
})
table.insert(Weapons, IndexOfWeapon("sbsnipercopter") + 1,
{
		Enabled = false,
		SaveName = "sbseepcopter",
		FileName = path .. "/weapons/sbhelicopter/sbseepcopter.lua",
		Icon = "hud-sbhelicopter-icon",
		GroupButton = "hud-group-sbheli", 
		Detail = "hud-detail-sbhelicopter", 
		Prerequisite = "factory",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 110.0,
		ScrapPeriod = 5,
		MetalCost = 950,
		EnergyCost = 5000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		RequiresSpotterToFire = true,
		MaxWeaponGroupSize = 1,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		PopulationCap = 2,
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
})
table.insert(Weapons, IndexOfWeapon("sbseepcopter") + 1,
{
		Enabled = false,
		SaveName = "sbflamecopter",
		FileName = path .. "/weapons/sbhelicopter/sbflamecopter.lua",
		Icon = "hud-sbhelicopter-icon",
		GroupButton = "hud-group-sbheli", 
		Detail = "hud-detail-sbhelicopter", 
		Prerequisite = "factory",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 135.0,
		ScrapPeriod = 5,
		MetalCost = 800,
		EnergyCost = 4000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		RequiresSpotterToFire = true,
		MaxWeaponGroupSize = 1,
		PopulationCap = 3,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
})
table.insert(Weapons, IndexOfWeapon("sbflamecopter") + 1,
{
		Enabled = false,
		SaveName = "sbspookcopter",
		FileName = path .. "/weapons/sbhelicopter/sbspookcopter.lua",
		Icon = "hud-sbhelicopter-icon",
		GroupButton = "hud-group-sbheli", 
		Detail = "hud-detail-sbhelicopter", 
		Prerequisite = "factory",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 95.0,
		ScrapPeriod = 5,
		MetalCost = 400,
		EnergyCost = 3000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		RequiresSpotterToFire = true,
		MaxWeaponGroupSize = 1,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
})
table.insert(Weapons, IndexOfWeapon("sbspookcopter") + 1,
{
		Enabled = false,
		SaveName = "sbshockcopter",
		FileName = path .. "/weapons/sbhelicopter/sbshockcopter.lua",
		Icon = "hud-sbhelicopter-icon",
		GroupButton = "hud-group-sbheli", 
		Detail = "hud-detail-sbhelicopter", 
		Prerequisite = "factory",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 95.0,
		ScrapPeriod = 5,
		MetalCost = 780,
		EnergyCost = 4500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		RequiresSpotterToFire = true,
		MaxWeaponGroupSize = 1,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
})
table.insert(Weapons, IndexOfWeapon("sbshockcopter") + 1,
{
		Enabled = false,
		SaveName = "sbshotcopter",
		FileName = path .. "/weapons/sbhelicopter/sbshotcopter.lua",
		Icon = "hud-sbhelicopter-icon",
		GroupButton = "hud-group-sbheli", 
		Detail = "hud-detail-sbhelicopter", 
		Prerequisite = "factory",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 120.0,
		ScrapPeriod = 5,
		MetalCost = 1000,
		EnergyCost = 6000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		RequiresSpotterToFire = true,
		MaxWeaponGroupSize = 1,
		PopulationCap = 3,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
})
table.insert(Weapons, IndexOfWeapon("sbshotcopter") + 1,
{
		Enabled = false,
		SaveName = "sbwarthogcopter",
		FileName = path .. "/weapons/sbhelicopter/sbwarthogcopter.lua",
		Icon = "hud-sbhelicopter-icon",
		GroupButton = "hud-group-sbheli",
		Detail = "hud-detail-sbhelicopter", 
		Prerequisite = "factory",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 180.0,
		ScrapPeriod = 5,
		MetalCost = 1250,
		EnergyCost = 9000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		RequiresSpotterToFire = true,
		MaxWeaponGroupSize = 1,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		PopulationCap = 1,
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
})
table.insert(Weapons, IndexOfWeapon("sbshotcopter") + 1,
{
		Enabled = false,
		SaveName = "sbmooncopter",
		FileName = path .. "/weapons/sbhelicopter/sbmooncopter.lua",
		Icon = "hud-sbhelicopter-icon",
		GroupButton = "hud-group-sbheli", 
		Detail = "hud-detail-sbhelicopter", 
		Prerequisite = "factory",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 110.0,
		ScrapPeriod = 5,
		MetalCost = 1000,
		EnergyCost = 8000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		RequiresSpotterToFire = true,
		MaxWeaponGroupSize = 1,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		PopulationCap = 1,
		AffectedBysbNCE = true,
		ObserverBuildEvent = true,
})
--END OF HELICOPTER SECTION----------------------------------------------------------------------------------------------------

local sbcannonupg = FindWeapon("cannon")
if sbcannonupg then
table.insert(sbcannonupg.Upgrades,
	{
		Enabled = true,
		SaveName = "sbsaw",
		MetalCost = 150,
		EnergyCost = 1500,
		Button = "hud-sbbg-upgrade",
	})
end
table.insert(Sprites, DetailSprite("hud-detail-sbsaw", "sbsaw", path))
table.insert(Weapons, IndexOfWeapon("cannon") + 1,
{
	Enabled = false,
	SaveName = "sbsaw",
	FileName = path .. "/weapons/sbsaw/sbsaw.lua",
	Prerequisite = "upgrade",
	Icon = "hud-cannon-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-sbsaw",
	BuildTimeIntermediate = 10.0,
	BuildTimeComplete = 25.0,
	ScrapPeriod = 5,
	MetalCost = 1000,
	EnergyCost = 7000,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.4,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	ObserverBuildEvent = true,
		
})
table.insert(Sprites, ButtonSprite("hud-group-sbbow", "groups/Group-sbbow", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbbow-icon", "HUD/HUD-sbbow", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbbow", "sbbow", path))
table.insert(Weapons, IndexOfWeapon("sniper"),
{
		SaveName = "sbbow",
		Enabled = false,
		FileName = path .. "/weapons/sbbow/sbbow.lua",
		Icon = "hud-sbbow-icon",
		GroupButton = "hud-group-sbbow", 
		Detail = "hud-detail-sbbow",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 12.0,
		ScrapPeriod = 5,
		MetalCost = 80,
		EnergyCost = 500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		MaxWeaponGroupSize = 1,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		Upgrades =
		{
			["sbbowr"] =
			{
				Enabled = true,
				SaveName = "sbbowr",
				MetalCost = 120,
				EnergyCost = 1000,
				Prerequisite = "upgrade",
				Button = "hud-sbbg-upgrade",
			},
		},
	
})
table.insert(Weapons, IndexOfWeapon("sniper"),
{
		SaveName = "sbbowr",
		Enabled = false,
		FileName = path .. "/weapons/sbbow/sbbowr.lua",
		Icon = "hud-sbbow-icon",
		GroupButton = "hud-group-sbbow", 
		Detail = "hud-detail-sbbow",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 30.0,
		ScrapPeriod = 5,
		MetalCost = 200,
		EnergyCost = 1500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
	
})
table.insert(Sprites, ButtonSprite("hud-group-sbbarrel", "groups/Group-sbbarrel", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sboilgun", "sboildrum", path))
table.insert(Sprites, ButtonSprite("hud-sboilgun-icon", "HUD/HUD-sboildrum", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbminishotgun"),
{
		SaveName = "sboilgun",
		Enabled = false,
		FileName = path .. "/weapons/sboildrum/sboilgun.lua",
		Icon = "hud-sboilgun-icon",
		GroupButton = "hud-group-sbbarrel", 
		Detail = "hud-detail-sboilgun", 
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 50.0,
		ScrapPeriod = 5,
		MetalCost = 400,
		EnergyCost = 3500,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		CompatibleGroupTypes =
		{
			"sboilgunemp",
		},
	
})
table.insert(Sprites, DetailSprite("hud-detail-sboilgunemp", "sboildrumemp", path))
table.insert(Sprites, ButtonSprite("hud-sboilgunemp-icon", "HUD/HUD-sboildrumemp", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sboilgun"),
{
		SaveName = "sboilgunemp",
		Enabled = false,
		FileName = path .. "/weapons/sboildrum/sboilgunemp.lua",
		Icon = "hud-sboilgunemp-icon",
		GroupButton = "hud-group-sbbarrel", 
		Detail = "hud-detail-sboilgunemp", 
		Prerequisite = "workshop",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 50.0,
		ScrapPeriod = 5,
		MetalCost = 200,
		EnergyCost = 2000,
		MetalRepairCost = 7.5,
		EnergyRepairCost = 225,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		FireGroupWhenDoorBlocks = true,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		AffectedBysbNCE = true,
		Upgrades =
		{
			{
				Enabled = true,
				SaveName = "sboilgun",
				MetalCost = 200,
				EnergyCost = 1500,
				Button = "hud-sbbg-upgrade",
			},
		},
		CompatibleGroupTypes =
		{
			"sboilgun",
		},
	
})

--[[
local sbTorpedo = FindWeapon("cannon")
if sbTorpedo then
	table.insert(Weapons, IndexOfWeapon("cannon"),
		InheritType(FindWeapon("cannon"),nil,
			{
				Enabled = false,
				SaveName = "sbtorpedo",
				FileName = path .. "/weapons/sbtorpedo/sbtorpedo.lua",
				MetalCost = 700,
				EnergyCost = 4500,
				Prerequisite = "munitions",
				CompatibleGroupTypes = {},
			}
		)
	)
end]]

--END WEAPON INSERTION

if not sbToG then
	for k, v in pairs(Weapons) do
		if v.Prerequisite then
			if v.Prerequisite == "armoury" then
				v.Prerequisite = "workshop"
			elseif v.Prerequisite == "munitions" then
				v.Prerequisite = "factory"
			end
		end
	end
end
--indef functions
RegisterApplyMod(function()
	local indefcheck = FindWeapon("_cannon2")
	if indefcheck then
		--Log("INDEF DETECTED weapon_list")
		local upgradeCount = 64
		local repaircostMultiplier = 1.5
		function sbAddUpgrades(upgrades) --copy of Ximsas function, with a custom path for FileName, duplicate checker, with permission of course.
			--iterate through "empty" weapon table 
			for i = 1, #upgrades do
				generic_base = FindWeapon(upgrades[i].SaveName)
				if generic_base then
					generic_weaponName = generic_base.SaveName
					generic_upgradeMetalCost = upgrades[i].UpgradeMetal
					generic_upgradeEnergyCost = upgrades[i].UpgradeEnergy
					generic_base = FindWeapon(generic_weaponName)
					AddUpgrade(generic_base,
					{
						Enabled = true,
						SaveName = "_"..generic_weaponName.."2",
						MetalCost = generic_upgradeMetalCost,
						EnergyCost = generic_upgradeEnergyCost,
					})
					-- generate compatible types list
					generic_CompatibleGroupTypes = {generic_weaponName}
					for j=2, upgradeCount do
						table.insert(generic_CompatibleGroupTypes, "_"..generic_weaponName .. j)
					end
					ConcatTable(generic_base.CompatibleGroupTypes or {}, generic_CompatibleGroupTypes or {})
					-- add all upgrades
					for j=2,upgradeCount do
						metalUpgrade = generic_upgradeMetalCost * (1+(j/6.0))
						energyUpgrade = generic_upgradeEnergyCost * (1+(j/6.0))
						prevWeapon = FindWeapon("_"..generic_weaponName .. (j-1)) or FindWeapon(generic_weaponName)
						if _debug then Log("Weapon_list: previousWeapon: "..tostring(prevWeapon.SaveName)) end 
						Weapons[#Weapons+1] = InheritType(
							generic_base,
							nil,
							{
								Enabled = false,
								SaveName = "_"..generic_weaponName .. j,
								FileName = sbBGpath .. "/weapons/indef/"..generic_weaponName.."/_".. generic_weaponName .. j .. ".lua",
								Prerequisite = "upgrade",
								BuildTimeIntermediate = generic_base.reloadTime,
								BuildTimeComplete = generic_base.reloadTime,
								MetalCost = prevWeapon.MetalCost + metalUpgrade,
								EnergyCost = prevWeapon.MetalCost + energyUpgrade,
								MetalRepairCost = metalUpgrade*repaircostMultiplier,
								EnergyRepairCost = energyUpgrade*repaircostMultiplier,
								Upgrades =
									{
									[("_"..generic_weaponName .. (j+1))] =
										{
											Enabled = true,
											SaveName = ("_" .. generic_weaponName .. (j+1)),
											MetalCost = metalUpgrade,
											EnergyCost = energyUpgrade,
										},
									},
								CompatibleGroupTypes = generic_CompatibleGroupTypes,
								-- special field for overdrive adjustment
								UpgradeNumber = j,
								-- makes it easier to alter
								OriginalWeapon = generic_weaponName,
							}
						)
						if(_debug) then
							Log("Weapon_list: ".. Weapons[#Weapons].SaveName)
						end
					end
					-- delete last upgrade
					FindWeapon("_"..generic_weaponName .. upgradeCount).Upgrades = {}
					generic_base = nil
				end
			end
		end
		sbAddUpgrades({
			{
               SaveName = "sbfog",
               UpgradeMetal = 50,
               UpgradeEnergy = 500,
			   reloadTime = 25.5,
            },
			{
				SaveName = "sbminishotgunfire",
				UpgradeMetal = 70,
				UpgradeEnergy = 200,
				reloadTime = 10,
			},
			{
				SaveName = "sb50cal",
				UpgradeMetal = 150,
				UpgradeEnergy = 400,
				reloadTime = 9.5,
			},
			{
				SaveName = "sbbowr",
				UpgradeMetal = 20,
				UpgradeEnergy = 270,
				reloadTime = 9.5,
			},
			{
				SaveName = "sbslingshotgrenade",
				UpgradeMetal = 60,
				UpgradeEnergy = 1600,
				reloadTime = 4.5,
			},
			{
               SaveName = "sbbigminigun",
               UpgradeMetal = 400,
               UpgradeEnergy = 2200,
			   reloadTime = 28.5,
            },
			{
               SaveName = "sbdowncannon",
               UpgradeMetal = 400,
               UpgradeEnergy = 2200,
			   reloadTime = 25,
            },
			{
               SaveName = "sbssmfire",
               UpgradeMetal = 250,
               UpgradeEnergy = 1500,
			   reloadTime = 40,
            },
			{
               SaveName = "sbimplodernocap",
               UpgradeMetal = 10,
               UpgradeEnergy = 100,
			   reloadTime = 32,
            },
			{
               SaveName = "sbperiscope2",
               UpgradeMetal = 400,
               UpgradeEnergy = 2200,
			   reloadTime = 35,
            },
			{
               SaveName = "sbflamethrower",
               UpgradeMetal = 75,
               UpgradeEnergy = 750,
			   reloadTime = 30,
            },
			{
               SaveName = "sbroofgunner",
               UpgradeMetal = 3,
               UpgradeEnergy = 30,
			   reloadTime = 2,
            },
			{
               SaveName = "sbdowngunner",
               UpgradeMetal = 3,
               UpgradeEnergy = 30,
			   reloadTime = 2,
            },
			{
               SaveName = "sbslingshotpebble",
               UpgradeMetal = 15,
               UpgradeEnergy = 100,
			   reloadTime = 1.3,
            },
		})
	else
		--Log("Indef not detected :( weapon_list")
	end
end)

function sbAddOilUpg()
	for k, v in pairs(Weapons) do
		if not v.Upgrades then v.Upgrades = {} end
		if not v.BuildOnOreOnly and not v.BuildOnGroundOnly then
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
RegisterApplyMod(sbAddOilUpg)