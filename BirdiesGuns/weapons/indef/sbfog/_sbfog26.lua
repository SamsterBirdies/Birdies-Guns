dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head26",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head26"
NodeEffects = {}
MinFireSpeed = 5750.0
MaxFireSpeed = 5750.1
EnergyFireCost = 2546.4439299953883
MetalFireCost = 74.50403318450424
Projectile = "_sbfog26"
