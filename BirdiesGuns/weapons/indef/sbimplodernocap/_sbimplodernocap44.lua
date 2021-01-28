dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel44",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel44"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 10345.36669332831
MetalFireCost = 80.13424384863387
Projectile = "_sbimploder44"
