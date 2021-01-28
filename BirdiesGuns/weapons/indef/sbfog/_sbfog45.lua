dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head45",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head45"
NodeEffects = {}
MinFireSpeed = 8752.0
MaxFireSpeed = 8752.1
EnergyFireCost = 4514.955831002678
MetalFireCost = 121.95021746519272
Projectile = "_sbfog45"
