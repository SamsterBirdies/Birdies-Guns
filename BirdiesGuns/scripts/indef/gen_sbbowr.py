import math

iterations = 64

dofile = "dofile(path .. \"/weapons/sbbow/sbbowr.lua\")"
EnergyFireCost = 260.0
MetalFireCost = 10.0
MinFireSpeed = 2000.0
MaxFireSpeed = 2000.1
base_ReloadTime = 7.0
base_Projectile = "_sbarrowr"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"sbbowr-base"+str(x)+ "\",States={Normal={Frames={{texture= \"mods/faction-Asia/weapons/snipertower/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"sbbowr-base"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 40
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 1
	MaxFireSpeed = MaxFireSpeed + 168
	MinFireSpeed = MinFireSpeed + 168
	#ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/indef/sbbowr/_sbbowr" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("NodeEffects = {}\n")
	file.write("MinFireSpeed = " + str(MinFireSpeed) + "\n")
	file.write("MaxFireSpeed = " + str(MaxFireSpeed) + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	#file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.close()
print("done")



#str(math.sqrt(0.5-0.5*(x-2)/(iterations + 1)))