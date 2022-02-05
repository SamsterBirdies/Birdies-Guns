dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel41",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel41"
NodeEffects = {}
MinFireSpeed = 17120.0
MaxFireSpeed = 17120.1
EnergyFireCost = 9085.35563510613
MetalFireCost = 211.45494256895822
Projectile = "_sb50cal41"
RoundsEachBurst = 23
