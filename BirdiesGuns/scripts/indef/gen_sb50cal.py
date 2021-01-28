import math

iterations = 64

dofile = "dofile(path .. \"/weapons/sb50cal/sb50cal.lua\")"
EnergyFireCost = 450.0
MetalFireCost = 25.0
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
base_ReloadTime = 10.0
base_Projectile = "_sb50cal"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"sb50cal-barrel"+str(x)+ "\",States={Normal={Frames={{texture= path .. \"/weapons/sb50cal/barrel.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].ChildrenBehind[1].Sprite=\"sb50cal-barrel"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 150 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 3 + MetalFireCost / 64
	MaxFireSpeed = MaxFireSpeed + 178
	MinFireSpeed = MinFireSpeed + 178
	#ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/indef/sb50cal/_sb50cal" + str(x) + ".lua","w")
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