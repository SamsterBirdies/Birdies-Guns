dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head15",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head15"
NodeEffects = {}
MinFireSpeed = 4012.0
MaxFireSpeed = 4012.1
EnergyFireCost = 1645.4259877169795
MetalFireCost = 52.78719047317849
Projectile = "_sbfog15"
