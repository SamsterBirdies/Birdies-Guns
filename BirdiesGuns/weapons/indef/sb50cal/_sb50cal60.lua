dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel60",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel60"
NodeEffects = {}
MinFireSpeed = 20502.0
MaxFireSpeed = 20502.1
EnergyFireCost = 15486.24380009159
MetalFireCost = 349.66317458904234
Projectile = "_sb50cal60"
RoundsEachBurst = 30
