dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel4",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel4"
NodeEffects = {}
MinFireSpeed = 10534.0
MaxFireSpeed = 10534.1
EnergyFireCost = 928.4929275512695
MetalFireCost = 35.33163833618164
Projectile = "_sb50cal4"
RoundsEachBurst = 11
