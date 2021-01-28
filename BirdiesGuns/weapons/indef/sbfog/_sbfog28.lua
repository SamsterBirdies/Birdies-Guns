dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head28",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head28"
NodeEffects = {}
MinFireSpeed = 6066.0
MaxFireSpeed = 6066.1
EnergyFireCost = 2727.4232432203407
MetalFireCost = 78.86609868274668
Projectile = "_sbfog28"
