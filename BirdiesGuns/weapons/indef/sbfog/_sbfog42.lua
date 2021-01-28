dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head42",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head42"
NodeEffects = {}
MinFireSpeed = 8278.0
MaxFireSpeed = 8278.1
EnergyFireCost = 4164.3309289480785
MetalFireCost = 113.49925828746647
Projectile = "_sbfog42"
