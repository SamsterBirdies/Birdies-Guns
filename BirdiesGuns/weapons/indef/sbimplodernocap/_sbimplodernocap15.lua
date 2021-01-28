dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel15",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel15"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 6367.231428390709
MetalFireCost = 27.93885207462987
Projectile = "_sbimploder15"
