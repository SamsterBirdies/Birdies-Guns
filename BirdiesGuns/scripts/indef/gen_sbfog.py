import math

iterations = 64

dofile = "dofile(path .. \"/weapons/sbfog/sbfog.lua\")"
EnergyFireCost = 700.0
MetalFireCost = 30.0
MinFireSpeed = 1800.0
MaxFireSpeed = 1800.1
base_ReloadTime = 25.5
base_Projectile = "_sbfog"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"sbfog-head"+str(x)+ "\",States={Normal={Frames={{texture= path .. \"/weapons/sbfog/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenInFront[1].Sprite=\"sbfog-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 50
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 1
	MaxFireSpeed = MaxFireSpeed + 158
	MinFireSpeed = MinFireSpeed + 158
	#ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/indef/sbfog/_sbfog" + str(x) + ".lua","w")
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