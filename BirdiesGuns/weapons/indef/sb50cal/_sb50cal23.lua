dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel23",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel23"
NodeEffects = {}
MinFireSpeed = 13916.0
MaxFireSpeed = 13916.1
EnergyFireCost = 4535.151911792395
MetalFireCost = 113.20676267253232
Projectile = "_sb50cal23"
