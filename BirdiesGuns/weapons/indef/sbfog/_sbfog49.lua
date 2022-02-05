dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head49",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head49"
NodeEffects = {}
MinFireSpeed = 9384.0
MaxFireSpeed = 9384.1
EnergyFireCost = 5008.559956001769
MetalFireCost = 133.84734252927336
Projectile = "_sbfog49"
RoundsEachBurst = 353
