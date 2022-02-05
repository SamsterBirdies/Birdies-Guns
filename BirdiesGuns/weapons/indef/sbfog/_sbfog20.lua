dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head20",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head20"
NodeEffects = {}
MinFireSpeed = 4802.0
MaxFireSpeed = 4802.1
EnergyFireCost = 2035.990833192483
MetalFireCost = 62.20080469745986
Projectile = "_sbfog20"
RoundsEachBurst = 208
