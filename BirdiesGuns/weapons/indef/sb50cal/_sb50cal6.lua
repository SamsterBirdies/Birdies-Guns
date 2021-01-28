dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel6",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel6"
NodeEffects = {}
MinFireSpeed = 10890.0
MaxFireSpeed = 10890.1
EnergyFireCost = 1260.0787643808872
MetalFireCost = 42.491252922452986
Projectile = "_sb50cal6"
