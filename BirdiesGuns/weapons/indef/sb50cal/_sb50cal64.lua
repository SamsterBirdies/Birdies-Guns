dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel64",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel64"
NodeEffects = {}
MinFireSpeed = 21214.0
MaxFireSpeed = 21214.1
EnergyFireCost = 17091.26574599802
MetalFireCost = 384.3188723265245
Projectile = "_sb50cal64"
RoundsEachBurst = 31
