dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head13",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head13"
NodeEffects = {}
MinFireSpeed = 3696.0
MaxFireSpeed = 3696.1
EnergyFireCost = 1497.4828037133132
MetalFireCost = 49.22138039719269
Projectile = "_sbfog13"
