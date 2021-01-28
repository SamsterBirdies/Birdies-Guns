dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel31",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel31"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 8340.087818317254
MetalFireCost = 53.82384726160938
Projectile = "_sbimploder31"
