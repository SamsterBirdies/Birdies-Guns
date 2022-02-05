dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel24",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel24"
NodeEffects = {}
MinFireSpeed = 14094.0
MaxFireSpeed = 14094.1
EnergyFireCost = 4756.013660414152
MetalFireCost = 117.97561833929063
Projectile = "_sb50cal24"
RoundsEachBurst = 18
