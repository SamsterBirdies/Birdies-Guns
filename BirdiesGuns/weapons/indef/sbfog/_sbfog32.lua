dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head32",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head32"
NodeEffects = {}
MinFireSpeed = 6698.0
MaxFireSpeed = 6698.1
EnergyFireCost = 3106.6607434159578
MetalFireCost = 88.00669484130768
Projectile = "_sbfog32"
RoundsEachBurst = 268
