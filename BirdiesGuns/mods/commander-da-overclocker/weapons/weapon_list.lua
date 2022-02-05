local sbbowenable = FindWeapon("sbbow")
if sbbowenable then
sbbowenable.Enabled = true
end

RegisterApplyMod(function()
	function DisableDowngrades(saveName)
		local weapon = FindWeapon(saveName)
		if weapon then
			if weapon.Upgrades then
				for k, v in pairs(weapon.Upgrades) do
					if v.Downgrade then
						v.Enabled = false
					end
				end
			end
		end
	end

	DisableDowngrades("sbsuremp")
	DisableDowngrades("sbsurfire")
	DisableDowngrades("sbsurhe")
	
end)