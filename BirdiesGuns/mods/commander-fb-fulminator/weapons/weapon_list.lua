local sbzapsniper = FindWeapon("sbzapsniper")
if sbzapsniper then
	--sbzapsniper.MaxWeaponGroupSize = 3 -- bugged :(
	sbzapsniper.BuildTimeComplete = sbzapsniper.BuildTimeComplete * 0.7
end