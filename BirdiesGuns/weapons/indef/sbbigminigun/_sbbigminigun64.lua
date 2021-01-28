dofile(path .. "/weapons/sbbigminigun/sbbigminigun.lua")
Sprites={{Name = "sbbigminigun-head64",States={Normal={Frames={{texture= path .. "/weapons/sbbigminigun/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="sbbigminigun-head64"
NodeEffects = {}
MinFireSpeed = 18954.0
MaxFireSpeed = 18954.1
EnergyFireCost = 39759.81090160758
MetalFireCost = 662.6635150267929
Projectile = "_sbbigminigun64"
