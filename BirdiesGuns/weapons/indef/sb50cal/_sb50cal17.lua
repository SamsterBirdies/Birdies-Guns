dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel17",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel17"
NodeEffects = {}
MinFireSpeed = 12848.0
MaxFireSpeed = 12848.1
EnergyFireCost = 3279.5350198409715
MetalFireCost = 86.09543276671549
Projectile = "_sb50cal17"
