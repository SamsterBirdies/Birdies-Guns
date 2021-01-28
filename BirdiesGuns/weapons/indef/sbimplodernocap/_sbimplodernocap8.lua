dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel8",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel8"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 5646.555913703751
MetalFireCost = 18.483180428027936
Projectile = "_sbimploder8"
