dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel14",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel14"
NodeEffects = {}
MinFireSpeed = 12314.0
MaxFireSpeed = 12314.1
EnergyFireCost = 2694.193275343438
MetalFireCost = 73.4567105223409
Projectile = "_sb50cal14"
RoundsEachBurst = 14
