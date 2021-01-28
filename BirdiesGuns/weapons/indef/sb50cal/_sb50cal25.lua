dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel25",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel25"
NodeEffects = {}
MinFireSpeed = 14272.0
MaxFireSpeed = 14272.1
EnergyFireCost = 4980.326373858123
MetalFireCost = 122.81898737584206
Projectile = "_sb50cal25"
