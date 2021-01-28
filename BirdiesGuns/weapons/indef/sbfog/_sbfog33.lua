dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head33",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head33"
NodeEffects = {}
MinFireSpeed = 6856.0
MaxFireSpeed = 6856.1
EnergyFireCost = 3205.2023175318323
MetalFireCost = 90.38179944820311
Projectile = "_sbfog33"
