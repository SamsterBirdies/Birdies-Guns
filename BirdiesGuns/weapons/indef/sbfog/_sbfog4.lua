dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head4",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head4"
NodeEffects = {}
MinFireSpeed = 2274.0
MaxFireSpeed = 2274.1
EnergyFireCost = 885.6838226318359
MetalFireCost = 34.47545623779297
Projectile = "_sbfog4"
