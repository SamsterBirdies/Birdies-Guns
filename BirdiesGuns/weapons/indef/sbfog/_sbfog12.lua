dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head12",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head12"
NodeEffects = {}
MinFireSpeed = 3538.0
MaxFireSpeed = 3538.1
EnergyFireCost = 1425.2138375023392
MetalFireCost = 47.47951300646665
Projectile = "_sbfog12"
RoundsEachBurst = 168
