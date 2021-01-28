dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel37",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel37"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 9215.550320536187
MetalFireCost = 65.31041200703511
Projectile = "_sbimploder37"
