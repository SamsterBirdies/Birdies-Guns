dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel48",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel48"
NodeEffects = {}
MinFireSpeed = 18366.0
MaxFireSpeed = 18366.1
EnergyFireCost = 11227.399462328747
MetalFireCost = 257.7060381418247
Projectile = "_sb50cal48"
RoundsEachBurst = 26
