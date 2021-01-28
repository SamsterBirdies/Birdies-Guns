dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head52",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head52"
NodeEffects = {}
MinFireSpeed = 9858.0
MaxFireSpeed = 9858.1
EnergyFireCost = 5399.379645984595
MetalFireCost = 143.26709915962869
Projectile = "_sbfog52"
