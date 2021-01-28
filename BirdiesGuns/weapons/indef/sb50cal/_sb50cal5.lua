dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel5",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel5"
NodeEffects = {}
MinFireSpeed = 10712.0
MaxFireSpeed = 10712.1
EnergyFireCost = 1093.0006295442581
MetalFireCost = 38.88369518518448
Projectile = "_sb50cal5"
