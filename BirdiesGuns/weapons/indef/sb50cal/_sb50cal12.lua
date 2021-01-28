dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel12",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel12"
NodeEffects = {}
MinFireSpeed = 11958.0
MaxFireSpeed = 11958.1
EnergyFireCost = 2318.820273563721
MetalFireCost = 65.35164172769427
Projectile = "_sb50cal12"
