dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel9",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel9"
NodeEffects = {}
MinFireSpeed = 11424.0
MaxFireSpeed = 11424.1
EnergyFireCost = 1777.1405436252637
MetalFireCost = 53.655671439470865
Projectile = "_sb50cal9"
