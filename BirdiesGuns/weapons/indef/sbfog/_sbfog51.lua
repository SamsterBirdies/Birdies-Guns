dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head51",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head51"
NodeEffects = {}
MinFireSpeed = 9700.0
MaxFireSpeed = 9700.1
EnergyFireCost = 5267.0814975848325
MetalFireCost = 140.07837455717285
Projectile = "_sbfog51"
RoundsEachBurst = 363
