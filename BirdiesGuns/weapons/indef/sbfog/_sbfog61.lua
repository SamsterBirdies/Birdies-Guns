dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head61",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head61"
NodeEffects = {}
MinFireSpeed = 11280.0
MaxFireSpeed = 11280.1
EnergyFireCost = 6687.069035017442
MetalFireCost = 174.30371520298442
Projectile = "_sbfog61"
RoundsEachBurst = 413
