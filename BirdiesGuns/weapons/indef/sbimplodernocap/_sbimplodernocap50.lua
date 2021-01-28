dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel50",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel50"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 11416.322435377599
MetalFireCost = 94.18579081878413
Projectile = "_sbimploder50"
