dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head8",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head8"
NodeEffects = {}
MinFireSpeed = 2906.0
MaxFireSpeed = 2906.1
EnergyFireCost = 1147.0865360717426
MetalFireCost = 40.77593189506251
Projectile = "_sbfog8"
