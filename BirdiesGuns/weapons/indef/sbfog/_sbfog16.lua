dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head16",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head16"
NodeEffects = {}
MinFireSpeed = 4170.0
MaxFireSpeed = 4170.1
EnergyFireCost = 1721.1357687750574
MetalFireCost = 54.6119903243219
Projectile = "_sbfog16"
RoundsEachBurst = 188
