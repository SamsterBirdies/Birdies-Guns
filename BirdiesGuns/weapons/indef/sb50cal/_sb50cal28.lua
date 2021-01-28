dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel28",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel28"
NodeEffects = {}
MinFireSpeed = 14806.0
MaxFireSpeed = 14806.1
EnergyFireCost = 5674.513742144726
MetalFireCost = 137.80790866123436
Projectile = "_sb50cal28"
