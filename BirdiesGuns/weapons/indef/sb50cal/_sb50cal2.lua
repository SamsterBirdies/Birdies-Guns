dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel2",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel2"
NodeEffects = {}
MinFireSpeed = 10178.0
MaxFireSpeed = 10178.1
EnergyFireCost = 607.03125
MetalFireCost = 28.390625
Projectile = "_sb50cal2"
