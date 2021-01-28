dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel44",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel44"
NodeEffects = {}
MinFireSpeed = 17654.0
MaxFireSpeed = 17654.1
EnergyFireCost = 9974.988522686084
MetalFireCost = 230.66393128585872
Projectile = "_sb50cal44"
