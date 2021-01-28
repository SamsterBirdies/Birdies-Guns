dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel23",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel23"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 7292.5628639312545
MetalFireCost = 40.0797255196654
Projectile = "_sbimploder23"
