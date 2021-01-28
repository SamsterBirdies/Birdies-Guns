dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head6",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head6"
NodeEffects = {}
MinFireSpeed = 9790.0
MaxFireSpeed = 9790.1
EnergyFireCost = 4789.4277183339
MetalFireCost = 79.823795305565
Projectile = "_sbbigminigun6"
