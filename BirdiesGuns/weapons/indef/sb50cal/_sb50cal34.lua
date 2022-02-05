dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel34",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel34"
NodeEffects = {}
MinFireSpeed = 15874.0
MaxFireSpeed = 15874.1
EnergyFireCost = 7163.615440415343
MetalFireCost = 169.9606517980228
Projectile = "_sb50cal34"
RoundsEachBurst = 21
