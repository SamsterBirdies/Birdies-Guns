dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel61",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel61"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 33389.268302483724
MetalFireCost = 221.85013508523255
Projectile = "_sbimploder61"
RoundsEachBurst = 1
RoundPeriod = 0.1
