dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel21",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel21"
NodeEffects = {}
MinFireSpeed = 13560.0
MaxFireSpeed = 13560.1
EnergyFireCost = 4103.569758745953
MetalFireCost = 103.8880236465544
Projectile = "_sb50cal21"
RoundsEachBurst = 17
