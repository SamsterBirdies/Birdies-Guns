dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel26",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel26"
NodeEffects = {}
MinFireSpeed = 14450.0
MaxFireSpeed = 14450.1
EnergyFireCost = 5208.143973449656
MetalFireCost = 127.73803405358959
Projectile = "_sb50cal26"
