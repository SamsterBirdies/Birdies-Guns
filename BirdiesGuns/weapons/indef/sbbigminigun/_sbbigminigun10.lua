dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head10",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head10"
NodeEffects = {}
MinFireSpeed = 10422.0
MaxFireSpeed = 10422.1
EnergyFireCost = 6324.275193487649
MetalFireCost = 105.40458655812746
Projectile = "_sbbigminigun10"
