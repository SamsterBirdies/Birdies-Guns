dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel42",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel42"
NodeEffects = {}
MinFireSpeed = 17298.0
MaxFireSpeed = 17298.1
EnergyFireCost = 9377.314316904663
MetalFireCost = 217.7589260465982
Projectile = "_sb50cal42"
RoundsEachBurst = 24
