dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head23",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head23"
NodeEffects = {}
MinFireSpeed = 5276.0
MaxFireSpeed = 5276.1
EnergyFireCost = 2285.282831441825
MetalFireCost = 68.2093810655209
Projectile = "_sbfog23"
RoundsEachBurst = 223
