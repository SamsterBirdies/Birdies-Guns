dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head63",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head63"
NodeEffects = {}
MinFireSpeed = 11596.0
MaxFireSpeed = 11596.1
EnergyFireCost = 6998.453777575364
MetalFireCost = 181.80888592104716
Projectile = "_sbfog63"
