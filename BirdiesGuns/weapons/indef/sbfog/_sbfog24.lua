dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head24",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head24"
NodeEffects = {}
MinFireSpeed = 5434.0
MaxFireSpeed = 5434.1
EnergyFireCost = 2370.990375683103
MetalFireCost = 70.27515264466966
Projectile = "_sbfog24"
