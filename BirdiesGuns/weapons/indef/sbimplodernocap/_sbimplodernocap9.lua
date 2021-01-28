dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel9",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel9"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 5744.783349855372
MetalFireCost = 19.771980122215872
Projectile = "_sbimploder9"
