import os

doloop = 1
mod_path = os.getcwd()
def commander(name):
	try:
		cmd_directory = mod_path + "/commander-" + name
		os.makedirs(cmd_directory + "/weapons")
		os.makedirs(cmd_directory + "/devices")
		os.makedirs(cmd_directory + "/materials")
		create = open(cmd_directory + "/commander.lua", "wt")
		create = open(cmd_directory + "/weapons/projectile_list.lua", "wt")
		create = open(cmd_directory + "/weapons/weapons_list.lua", "wt")
		create = open(cmd_directory + "/weapons/weapon.lua", "wt")
		create = open(cmd_directory + "/devices/device_list.lua", "wt")
		create = open(cmd_directory + "/devices/device.lua", "wt")
		create = open(cmd_directory + "/materials/building_materials.lua", "wt")
	except OSError:
		print("Failed to create directories for: " + name + ". Check permissions or run with elevated privleges")
	else:
		print("successfully created directories for " + name)

print("COMMANDER FOLDER CREATINATOR")
print("")
print("Directory should be set to the mods folder within your mod. This will NOT overwrite any existing files")

while doloop == 1:
	print("Current directory is set to: " + mod_path)
	print("Would you like to:")
	print("1. Create in current directory")
	print("2. Enter a different directory")
	userinput1 = input("Enter number:")
	if userinput1 == "1":
		doloop = 0
	elif userinput1 == "2":
		mod_path = input("Enter path:")
	else:
		print("that was not an option")

commander("bpo-scattershot")
commander("bpo-seep")
commander("bpo-shockenaugh")
commander("cf-buster")
commander("cf-moonshine")
commander("cf-phantom")
commander("da-builder")
commander("da-overclocker")
commander("da-speed-demon")
commander("ee-fireman")
commander("ee-heavy-weapons")
commander("ee-marksman")
commander("iba-miser")
commander("iba-spy")
commander("iba-turtle")

input("Program completed. Press Enter to exit")



	
		
