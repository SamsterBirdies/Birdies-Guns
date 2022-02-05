dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head2",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head2"
NodeEffects = {}
MinFireSpeed = 1958.0
MaxFireSpeed = 1958.1
EnergyFireCost = 760.9375
MetalFireCost = 31.46875
Projectile = "_sbfog2"
RoundsEachBurst = 118
