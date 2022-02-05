dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel8",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel8"
NodeEffects = {}
MinFireSpeed = 11246.0
MaxFireSpeed = 11246.1
EnergyFireCost = 1602.107612184875
MetalFireCost = 49.87635341732516
Projectile = "_sb50cal8"
RoundsEachBurst = 12
