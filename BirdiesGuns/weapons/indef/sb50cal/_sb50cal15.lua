dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel15",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel15"
NodeEffects = {}
MinFireSpeed = 12492.0
MaxFireSpeed = 12492.1
EnergyFireCost = 2886.2900452706795
MetalFireCost = 77.60447162425247
Projectile = "_sb50cal15"
RoundsEachBurst = 15
