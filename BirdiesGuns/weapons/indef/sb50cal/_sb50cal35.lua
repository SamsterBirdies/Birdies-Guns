dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel35",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel35"
NodeEffects = {}
MinFireSpeed = 16052.0
MaxFireSpeed = 16052.1
EnergyFireCost = 7425.546931671833
MetalFireCost = 175.61628698236692
Projectile = "_sb50cal35"
RoundsEachBurst = 21
