dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head53",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head53"
NodeEffects = {}
MinFireSpeed = 10016.0
MaxFireSpeed = 10016.1
EnergyFireCost = 5533.744952953105
MetalFireCost = 146.50564758399787
Projectile = "_sbfog53"
