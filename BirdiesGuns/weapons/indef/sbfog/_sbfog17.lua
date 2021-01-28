dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head17",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head17"
NodeEffects = {}
MinFireSpeed = 4328.0
MaxFireSpeed = 4328.1
EnergyFireCost = 1798.0285151621677
MetalFireCost = 56.46530267313943
Projectile = "_sbfog17"
