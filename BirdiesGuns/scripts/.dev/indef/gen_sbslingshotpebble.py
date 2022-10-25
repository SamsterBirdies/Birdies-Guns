import math

iterations = 64

dofile = "dofile(path .. \"/weapons/sbslingshot/sbslingshotpebble.lua\")"
EnergyFireCost = 10.0
MetalFireCost = 0.0
MinFireSpeed = 800.0
MaxFireSpeed = 2800.1
base_ReloadTime = 1.3
base_Projectile = "_sbpebble"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"sbslingshotpebble-head"+str(x)+ "\",States={Normal={Frames={{texture= path .. \"/weapons/sbslingshot/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"sbslingshotpebble-head"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 2
	MetalFireCost = x + 9
	MaxFireSpeed = MaxFireSpeed 
	MinFireSpeed = MinFireSpeed
	RoundsEachBurst = x
	#ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/indef/sbslingshotpebble/_sbslingshotpebble" + str(x) + ".lua","w")
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
	file.write("RoundsEachBurst = " + str(RoundsEachBurst) + "\n")
	file.close()
print("done")



#str(math.sqrt(0.5-0.5*(x-2)/(iterations + 1)))