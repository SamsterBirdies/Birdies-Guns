dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel45",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel45"
NodeEffects = {}
MinFireSpeed = 17832.0
MaxFireSpeed = 17832.1
EnergyFireCost = 10280.847718353054
MetalFireCost = 237.26805521220027
Projectile = "_sb50cal45"
