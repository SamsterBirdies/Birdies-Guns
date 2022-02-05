dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head31",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head31"
NodeEffects = {}
MinFireSpeed = 6540.0
MaxFireSpeed = 6540.1
EnergyFireCost = 3009.6351935172506
MetalFireCost = 85.66813030528756
Projectile = "_sbfog31"
RoundsEachBurst = 263
