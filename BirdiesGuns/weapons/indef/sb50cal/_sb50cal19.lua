dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel19",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel19"
NodeEffects = {}
MinFireSpeed = 13204.0
MaxFireSpeed = 13204.1
EnergyFireCost = 3685.164906940455
MetalFireCost = 94.85380943344067
Projectile = "_sb50cal19"
RoundsEachBurst = 16
