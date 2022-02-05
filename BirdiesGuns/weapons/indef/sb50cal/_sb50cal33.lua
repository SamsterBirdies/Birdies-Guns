dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel33",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel33"
NodeEffects = {}
MinFireSpeed = 15696.0
MaxFireSpeed = 15696.1
EnergyFireCost = 6905.713664408953
MetalFireCost = 164.39202638574554
Projectile = "_sb50cal33"
RoundsEachBurst = 21
