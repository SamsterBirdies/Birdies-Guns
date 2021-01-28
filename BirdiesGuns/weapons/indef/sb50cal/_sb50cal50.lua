dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel50",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel50"
NodeEffects = {}
MinFireSpeed = 18722.0
MaxFireSpeed = 18722.1
EnergyFireCost = 11883.340509848378
MetalFireCost = 271.8691433469749
Projectile = "_sb50cal50"
