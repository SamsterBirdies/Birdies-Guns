dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head3",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head3"
NodeEffects = {}
MinFireSpeed = 2116.0
MaxFireSpeed = 2116.1
EnergyFireCost = 822.8271484375
MetalFireCost = 32.96044921875
Projectile = "_sbfog3"
RoundsEachBurst = 123
