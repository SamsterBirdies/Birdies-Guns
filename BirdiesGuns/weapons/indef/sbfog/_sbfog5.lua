dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head5",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head5"
NodeEffects = {}
MinFireSpeed = 2432.0
MaxFireSpeed = 2432.1
EnergyFireCost = 949.5226323604584
MetalFireCost = 36.014135241508484
Projectile = "_sbfog5"
