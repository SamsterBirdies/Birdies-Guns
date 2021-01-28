dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head50",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head50"
NodeEffects = {}
MinFireSpeed = 9542.0
MaxFireSpeed = 9542.1
EnergyFireCost = 5136.8187053142965
MetalFireCost = 136.93870725629327
Projectile = "_sbfog50"
