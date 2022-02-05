dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel16",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel16"
NodeEffects = {}
MinFireSpeed = 12670.0
MaxFireSpeed = 12670.1
EnergyFireCost = 3081.3883272280336
MetalFireCost = 81.81704149338141
Projectile = "_sb50cal16"
RoundsEachBurst = 15
