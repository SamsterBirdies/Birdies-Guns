dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head64",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head64"
NodeEffects = {}
MinFireSpeed = 11754.0
MaxFireSpeed = 11754.1
EnergyFireCost = 7157.804617849979
MetalFireCost = 185.64964976356353
Projectile = "_sbfog64"
