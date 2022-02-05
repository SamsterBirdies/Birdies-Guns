dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel63",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel63"
NodeEffects = {}
MinFireSpeed = 21036.0
MaxFireSpeed = 21036.1
EnergyFireCost = 16680.63088836728
MetalFireCost = 375.45242813688566
Projectile = "_sb50cal63"
RoundsEachBurst = 31
