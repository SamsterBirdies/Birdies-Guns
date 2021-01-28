dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head14",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head14"
NodeEffects = {}
MinFireSpeed = 3854.0
MaxFireSpeed = 3854.1
EnergyFireCost = 1570.8809725213337
MetalFireCost = 50.990464465898825
Projectile = "_sbfog14"
