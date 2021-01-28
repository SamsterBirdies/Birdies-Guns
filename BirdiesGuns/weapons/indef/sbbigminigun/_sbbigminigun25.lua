dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head25",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head25"
NodeEffects = {}
MinFireSpeed = 12792.0
MaxFireSpeed = 12792.1
EnergyFireCost = 13007.288109417943
MetalFireCost = 216.78813515696567
Projectile = "_sbbigminigun25"
