dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head36",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head36"
NodeEffects = {}
MinFireSpeed = 7330.0
MaxFireSpeed = 7330.1
EnergyFireCost = 3510.1619203650644
MetalFireCost = 97.73210782418357
Projectile = "_sbfog36"
