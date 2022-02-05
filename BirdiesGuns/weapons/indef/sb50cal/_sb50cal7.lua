dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel7",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel7"
NodeEffects = {}
MinFireSpeed = 11068.0
MaxFireSpeed = 11068.1
EnergyFireCost = 1429.7674950743385
MetalFireCost = 46.155178749366314
Projectile = "_sb50cal7"
RoundsEachBurst = 12
