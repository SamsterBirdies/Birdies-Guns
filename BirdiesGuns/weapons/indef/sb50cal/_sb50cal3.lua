dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel3",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel3"
NodeEffects = {}
MinFireSpeed = 10356.0
MaxFireSpeed = 10356.1
EnergyFireCost = 766.51611328125
MetalFireCost = 31.834228515625
Projectile = "_sb50cal3"
