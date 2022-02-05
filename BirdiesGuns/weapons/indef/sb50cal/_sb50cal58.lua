dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel58",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel58"
NodeEffects = {}
MinFireSpeed = 20146.0
MaxFireSpeed = 20146.1
EnergyFireCost = 14720.296947970452
MetalFireCost = 333.12481967259583
Projectile = "_sb50cal58"
RoundsEachBurst = 29
