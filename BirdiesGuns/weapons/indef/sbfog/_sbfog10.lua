dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head10",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head10"
NodeEffects = {}
MinFireSpeed = 3222.0
MaxFireSpeed = 3222.1
EnergyFireCost = 1283.99429074783
MetalFireCost = 44.075759828281036
Projectile = "_sbfog10"
RoundsEachBurst = 158
