dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head22",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head22"
NodeEffects = {}
MinFireSpeed = 5118.0
MaxFireSpeed = 5118.1
EnergyFireCost = 2200.893864804258
MetalFireCost = 66.17539058758982
Projectile = "_sbfog22"
RoundsEachBurst = 218
