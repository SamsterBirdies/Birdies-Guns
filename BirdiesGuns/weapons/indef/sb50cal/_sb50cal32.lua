dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel32",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel32"
NodeEffects = {}
MinFireSpeed = 15518.0
MaxFireSpeed = 15518.1
EnergyFireCost = 6651.779608033431
MetalFireCost = 158.90907213365713
Projectile = "_sb50cal32"
