dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head25",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head25"
NodeEffects = {}
MinFireSpeed = 5592.0
MaxFireSpeed = 5592.1
EnergyFireCost = 2458.0371003031514
MetalFireCost = 72.37320190474263
Projectile = "_sbfog25"
