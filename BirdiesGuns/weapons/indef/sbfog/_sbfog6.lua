dofile(path .. "/weapons/sbfog/sbfog.lua")
Sprites={{Name = "sbfog-head6",States={Normal={Frames={{texture= path .. "/weapons/sbfog/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sbfog-head6"
NodeEffects = {}
MinFireSpeed = 2590.0
MaxFireSpeed = 2590.1
EnergyFireCost = 1014.3589234910905
MetalFireCost = 37.576856104657054
Projectile = "_sbfog6"
