dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head48",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head48"
NodeEffects = {}
MinFireSpeed = 9226.0
MaxFireSpeed = 9226.1
EnergyFireCost = 4882.274418217126
MetalFireCost = 130.80353725959225
Projectile = "_sbfog48"
RoundsEachBurst = 348
