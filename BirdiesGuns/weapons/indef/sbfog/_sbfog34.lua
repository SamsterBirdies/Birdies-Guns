dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head34",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head34"
NodeEffects = {}
MinFireSpeed = 7014.0
MaxFireSpeed = 7014.1
EnergyFireCost = 3305.283603743267
MetalFireCost = 92.79401506458129
Projectile = "_sbfog34"
