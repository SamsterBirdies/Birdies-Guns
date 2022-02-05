dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head41",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head41"
NodeEffects = {}
MinFireSpeed = 8120.0
MaxFireSpeed = 8120.1
EnergyFireCost = 4051.0335300411853
MetalFireCost = 110.7685004676593
Projectile = "_sbfog41"
RoundsEachBurst = 313
