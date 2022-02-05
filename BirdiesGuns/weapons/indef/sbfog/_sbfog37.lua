dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head37",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head37"
NodeEffects = {}
MinFireSpeed = 7488.0
MaxFireSpeed = 7488.1
EnergyFireCost = 3615.0082003707685
MetalFireCost = 100.25917200893645
Projectile = "_sbfog37"
RoundsEachBurst = 293
