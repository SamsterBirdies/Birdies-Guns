--[[local sbsolarenable = FindMaterial("solar")
if 	sbsolarenable then
	sbsolarenable.Enabled = true
	end]]
	
dofile("scripts/type.lua")
table.insert(Materials,
InheritType(FindMaterial("armour"), nil, {SaveName = "sbdevicearmour", Enabled = false, SupportsDevices = true})
)
