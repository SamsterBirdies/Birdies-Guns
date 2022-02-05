dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head7",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head7"
NodeEffects = {}
MinFireSpeed = 2748.0
MaxFireSpeed = 2748.1
EnergyFireCost = 1080.2082816706388
MetalFireCost = 39.16399448129232
Projectile = "_sbfog7"
RoundsEachBurst = 143
