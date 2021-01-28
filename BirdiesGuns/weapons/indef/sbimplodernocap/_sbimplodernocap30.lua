dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel30",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel30"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 8201.932621112373
MetalFireCost = 52.01117268835385
Projectile = "_sbimploder30"
