dofile(path .. "/weapons/sbimploder/sbimplodernocap.lua")
Sprites={{Name = "sbimplodernocap-barrel27",States={Normal={Frames={{texture= path .. "/weapons/sbimploder/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="sbimplodernocap-barrel27"
NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.1
EnergyFireCost = 7800.089522180727
MetalFireCost = 46.73876323428615
Projectile = "_sbimploder27"
