dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head59",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head59"
NodeEffects = {}
MinFireSpeed = 10964.0
MaxFireSpeed = 10964.1
EnergyFireCost = 6385.191660930519
MetalFireCost = 167.02769644294062
Projectile = "_sbfog59"
RoundsEachBurst = 403
