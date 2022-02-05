dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel54",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel54"
NodeEffects = {}
MinFireSpeed = 19434.0
MaxFireSpeed = 19434.1
EnergyFireCost = 13257.848119056955
MetalFireCost = 301.547566351777
Projectile = "_sb50cal54"
RoundsEachBurst = 28
