dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel11",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel11"
NodeEffects = {}
MinFireSpeed = 11780.0
MaxFireSpeed = 11780.1
EnergyFireCost = 2135.453807816587
MetalFireCost = 61.39238570111436
Projectile = "_sb50cal11"
