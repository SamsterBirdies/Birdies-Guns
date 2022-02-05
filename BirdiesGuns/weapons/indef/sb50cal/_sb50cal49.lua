dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel49",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel49"
NodeEffects = {}
MinFireSpeed = 18544.0
MaxFireSpeed = 18544.1
EnergyFireCost = 11552.827578927634
MetalFireCost = 264.7326949877907
Projectile = "_sb50cal49"
RoundsEachBurst = 26
