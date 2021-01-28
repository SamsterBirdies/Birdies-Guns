dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head27",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head27"
NodeEffects = {}
MinFireSpeed = 5908.0
MaxFireSpeed = 5908.1
EnergyFireCost = 2636.232116401566
MetalFireCost = 76.66815870301211
Projectile = "_sbfog27"
