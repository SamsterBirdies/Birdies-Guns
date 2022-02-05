dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel22",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel22"
NodeEffects = {}
MinFireSpeed = 13738.0
MaxFireSpeed = 13738.1
EnergyFireCost = 4317.688036226358
MetalFireCost = 108.51127401603182
Projectile = "_sb50cal22"
RoundsEachBurst = 17
