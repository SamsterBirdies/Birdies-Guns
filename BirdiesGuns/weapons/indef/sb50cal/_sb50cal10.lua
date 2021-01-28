dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel10",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel10"
NodeEffects = {}
MinFireSpeed = 11602.0
MaxFireSpeed = 11602.1
EnergyFireCost = 1954.9083646194085
MetalFireCost = 57.4940413057126
Projectile = "_sb50cal10"
