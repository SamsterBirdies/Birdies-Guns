dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel40",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel40"
NodeEffects = {}
MinFireSpeed = 16942.0
MaxFireSpeed = 16942.1
EnergyFireCost = 8797.888625335267
MetalFireCost = 205.24794345251271
Projectile = "_sb50cal40"
RoundsEachBurst = 23
