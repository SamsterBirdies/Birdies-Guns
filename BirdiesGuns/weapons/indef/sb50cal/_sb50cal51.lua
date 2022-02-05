dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel51",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel51"
NodeEffects = {}
MinFireSpeed = 18900.0
MaxFireSpeed = 18900.1
EnergyFireCost = 12219.01770531476
MetalFireCost = 279.1170987117714
Projectile = "_sb50cal51"
RoundsEachBurst = 27
