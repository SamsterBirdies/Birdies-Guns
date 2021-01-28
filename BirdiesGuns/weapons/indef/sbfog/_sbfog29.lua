dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head29",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head29"
NodeEffects = {}
MinFireSpeed = 6224.0
MaxFireSpeed = 6224.1
EnergyFireCost = 2820.0392313956586
MetalFireCost = 81.09838147466459
Projectile = "_sbfog29"
