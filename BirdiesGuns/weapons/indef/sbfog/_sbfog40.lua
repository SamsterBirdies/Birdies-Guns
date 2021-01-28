dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head40",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head40"
NodeEffects = {}
MinFireSpeed = 7962.0
MaxFireSpeed = 7962.1
EnergyFireCost = 3939.4791680405515
MetalFireCost = 108.07975430661838
Projectile = "_sbfog40"
