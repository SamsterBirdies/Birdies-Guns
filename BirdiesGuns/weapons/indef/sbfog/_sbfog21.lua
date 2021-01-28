dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head21",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head21"
NodeEffects = {}
MinFireSpeed = 4960.0
MaxFireSpeed = 4960.1
EnergyFireCost = 2117.8031899611155
MetalFireCost = 64.17269227085767
Projectile = "_sbfog21"
