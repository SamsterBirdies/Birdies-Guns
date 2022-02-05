dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head38",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head38"
NodeEffects = {}
MinFireSpeed = 7646.0
MaxFireSpeed = 7646.1
EnergyFireCost = 3721.4927035015617
MetalFireCost = 102.82572157157608
Projectile = "_sbfog38"
RoundsEachBurst = 298
