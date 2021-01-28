dofile(path .. "/weapons/sb50cal/sb50cal.lua")
Sprites={{Name = "sb50cal-barrel53",States={Normal={Frames={{texture= path .. "/weapons/sb50cal/barrel.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sb50cal-barrel53"
NodeEffects = {}
MinFireSpeed = 19256.0
MaxFireSpeed = 19256.1
EnergyFireCost = 12906.188917225309
MetalFireCost = 293.95452686944196
Projectile = "_sb50cal53"
