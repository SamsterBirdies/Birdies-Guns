dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head30",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head30"
NodeEffects = {}
MinFireSpeed = 6382.0
MaxFireSpeed = 6382.1
EnergyFireCost = 2914.102344386216
MetalFireCost = 83.36554368520622
Projectile = "_sbfog30"
RoundsEachBurst = 258
