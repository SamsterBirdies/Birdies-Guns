function sbAddUpgrade(Weapon,Upgrade)
	if not Weapon then Weapon = {} end
	if not Weapon.Upgrades then Weapon.Upgrades = {} end
	if not Upgrade then Upgrade = {} end
	table.insert(Weapon.Upgrades, Upgrade)
end
function concatTable(t1, t2) for _, v in pairs(t2) do table.insert(t1, v) end end
function sbAddUpgrades(upgrades) --copy of Ximsas function, with a custom path for FileName, duplicate checker, 
	--iterate through "empty" weapon table 
	for i = 1, #upgrades 
	do
		
		generic_base = FindWeapon(upgrades[i].SaveName)
		if generic_base 
		then

			generic_weaponName = generic_base.SaveName
			generic_upgradeMetalCost = upgrades[i].UpgradeMetal
			generic_upgradeEnergyCost = upgrades[i].UpgradeEnergy
			generic_base = FindWeapon(generic_weaponName)
			sbAddUpgrade(generic_base,
				{
					Enabled = true,
					SaveName = "_"..generic_weaponName.."2",
					MetalCost = generic_upgradeMetalCost,
					EnergyCost = generic_upgradeEnergyCost,
				}
			)

			-- generate compatible types list
			generic_CompatibleGroupTypes = {generic_weaponName}
			for j=2, 64 do
				table.insert(generic_CompatibleGroupTypes, "_"..generic_weaponName .. j)
			end
			concatTable(generic_base.CompatibleGroupTypes or {}, generic_CompatibleGroupTypes or {})
			-- add all upgrades
			for j=2,64 do
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
						FileName = path .. "/weapons/indef/"..generic_weaponName.."/_".. generic_weaponName .. j .. ".lua",
						
						Prerequisite = "upgrade",
						BuildTimeIntermediate = generic_base.reloadTime,
						BuildTimeComplete = generic_base.reloadTime,
						MetalCost = prevWeapon.MetalCost + metalUpgrade,
						EnergyCost = prevWeapon.MetalCost + energyUpgrade,
						MetalRepairCost = metalUpgrade*1.5,
						EnergyRepairCost = energyUpgrade*1.5,
						
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
					})
				if(_debug)
				then
					Log("Weapon_list: ".. Weapons[#Weapons].SaveName)
				end
			end
			-- delete last upgrade
			FindWeapon("_"..generic_weaponName .. 64).Upgrades = {}
			generic_base = nil
		end
	end	
end