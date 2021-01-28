import math

iterations = 64

dofile = "dofile(path .. \"/weapons/sbminishotgun/sbminishotgunfire.lua\")"
EnergyFireCost = 150.0
MetalFireCost = 6.0
MinFireSpeed = 7000.0
MaxFireSpeed = 7000.1
base_ReloadTime = 10.0
base_Projectile = "_sbfirebullet"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"sbminishotgunfire-head"+str(x)+ "\",States={Normal={Frames={{texture= path .. \"/weapons/sbminishotgun/headfire.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"sbminishotgunfire-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 100
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 2
	MaxFireSpeed = MaxFireSpeed + 168
	MinFireSpeed = MinFireSpeed + 168
	#ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/indef/sbminishotgunfire/_sbminishotgunfire" + str(x) + ".lua","w")
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