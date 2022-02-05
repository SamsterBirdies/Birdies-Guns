dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel39",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel39"
NodeEffects = {}
MinFireSpeed = 16764.0
MaxFireSpeed = 16764.1
EnergyFireCost = 8514.844184945494
MetalFireCost = 199.13643663016637
Projectile = "_sb50cal39"
RoundsEachBurst = 23
