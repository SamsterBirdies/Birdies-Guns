dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head18",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head18"
NodeEffects = {}
MinFireSpeed = 4486.0
MaxFireSpeed = 4486.1
EnergyFireCost = 1876.1227107115765
MetalFireCost = 58.347573027407236
Projectile = "_sbfog18"
RoundsEachBurst = 198
